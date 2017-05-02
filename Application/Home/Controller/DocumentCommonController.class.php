<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/4/8
 * Time: 14:23
 */

namespace Home\Controller;


use Think\Page;

class DocumentCommonController extends BaseController
{
    /**
     * 常规性任务进度
     * 孙璠
     * 2017.4.10
     */
    public function jinducommon()
    {
        $rs = array();
        $did = $_REQUEST['did'];
//        $did = 131;
        if (!$did){
            echo $rs;die();
        }
        // $progress = M('DocumentCommon')->where(array('id'=>$did))->find();
        $progress = M('DocumentCommon')->alias('a')
                      ->join('nk_send_document_to_common b on a.id=b.document_id')
                      ->join('nk_department c on b.to_id=c.id')
                      ->where(array('a.id'=>$did))
                      ->field('a.id,a.title,a.check_time,a.send_time,a.d_finish,b.finish,b.to_id,b.end_time,c.d_name')
                      ->find();
        $single_file = array();
        if($progress['file']){
            $s_file = explode(',',$progress['file']);
            foreach ($s_file as $key => $value) {
                $s_file_details = M('Picture')->where(array('id'=>$value))->find();
                $s_file_row = array('picture_name'=>$s_file_details['picture_name'],'picture_url'=>$s_file_details['picture_url']);
                array_push($file_list,$s_file_row);
            }
        }
        $progress_list = array();
        $row = array('send_time'=>$progress['send_time'],'d_name'=>'创文办','r_content'=>$progress['title'],'file'=>$single_file);
        array_push($progress_list,$row);
        $progress_content = M('ReminderCommon')->alias('a')
                           ->join('nk_department b on a.sup_id=b.id')
                           ->where(array('a.document_id'=>$did))
                           ->field('a.id,a.r_content,a.send_time,a.type,b.d_name,a.file_id')
                           ->order('send_time')
                           ->select();
        // echo M('Reminder')->getLastSql();
        if($progress_content){
            foreach ($progress_content as $key => $value) {
                $file_list = array();
                if($value['file_id']){
                    $file = explode(',',$value['file_id']);
                    foreach ($file as $key1 => $value1) {
                        $file_details = M('Picture')->where(array('id'=>$value1))->find();
                        $file_row = array('picture_name'=>$file_details['picture_name'],'picture_url'=>$file_details['picture_url']);
                        array_push($file_list,$file_row);
                    }
                }
                $rows = array('send_time'=>$value['send_time'],'d_name'=>$value['d_name'],'r_content'=>$value['r_content'],'file'=>$file_list);
                array_push($progress_list,$rows);
            }

        }else{
            $progress_content = array();
        }
        $finish = M('DocumentCommon')->alias('a')
              ->join('nk_send_document_to_common b on a.id=b.document_id')
              ->join('nk_department c on b.to_id=c.id')
              ->where(array('a.id'=>$did))
              ->field('a.id,a.title,a.check_time,a.d_finish,b.finish,b.to_id,b.end_time,c.d_name')
              ->group('b.to_id')
              ->select();
        foreach ($finish as $key => $value) {
            if($value['finish']==1){
                $f_department = M('Department')->where(array('id'=>$value['to_id']))->field('d_name')->find();
                $row_f = array('send_time'=>$value['end_time'],'d_name'=>$f_department['d_name'],'r_content'=>'已完成','file'=>array());
                array_push($progress_list,$row_f);
            }
        }
        if($progress['d_finish']==1){
            $d_department = M('Department')->where(array('id'=>$progress['from_id']))->field('d_name')->find();
            $row_d = array('send_time'=>$progress['check_time'],'d_name'=>'创文办','r_content'=>'确认完成','file'=>array());
            array_push($progress_list,$row_d);
        }
        // print_r($progress_list);
        // return;
        $res=array('rs'=>$progress_list);
        echo json_encode($res);
    }
    /**
     * 反馈
     * 孙璠
     * 2017.3.23
     */
    public function postHuibaoCommon()
    {
        if (!$_REQUEST['message']){
            $this->error('反馈失败,请重新提交,页面跳转中');
        }

        if (empty($_FILES) && empty($_REQUEST['message'])){
            $this->error('附件和内容不能都为空,页面跳转中...');
        }

        $pids = "";
        if (!empty($_FILES)){
            //上传图片
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize   =     11048576 ;// 设置附件上传大小
            $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg','doc','txt','docx','xlsx','xls');// 设置附件上传类型
            $upload->rootPath  =     './Public/Picture/'; // 设置附件上传根目录
            $upload->savePath  =     ''; // 设置附件上传（子）目录
            // 上传文件
            $info   =   $upload->upload();
            if(!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            }else{// 上传成功 获取上传文件信息
                foreach($info as $file){
                    $pic['picture_url'] = "/Public/Picture/".$file['savepath'].$file['savename'];
                    $pic['picture_name'] = $file['name'];
                    $pid = M('Picture')->add($pic);
                    $pids .= $pid.",";
                }
            }
            $pids = substr($pids, 0, -1);
        }

        $data['r_content'] = $_REQUEST['message'];
        $data['document_id'] = $_REQUEST['id'];
        $data['sup_id'] = $_SESSION['userinfo']['department_id'];
        $data['send_time'] = time();
        $data['type'] = 2;      //1催办 2反馈
        $data['file_id'] = $pids;
        M('ReminderCommon')->add($data);
        $this->success('反馈成功，页面跳转中...');
    }

    /**
     * 常规性任务列表
     * 孙璠
     * 2017.4.7
     */
    public function commonIndex()
    {
//        dump($_GET);
        $type = $_GET['type']?$_GET['type']:1;
        $where = array();
        /*if ($type==1){
            $where = "`type`=$type";
        }elseif ($type==2){
            $where = "`type` IN (2,3,4)";
        }*/
        $where = "`type`=$type";

        $this->assign('type', $type);

        if ($_GET['keyword']){
            $keyword=$_GET['keyword'];
            $department_list = M('Department')->where("d_name like '%$keyword%'")->select();
            $document_arr = '';
            foreach ($department_list as $key => $value) {
                $document_id_list = M('SendDocumentToCommon')->where(array('to_id'=>$value['id']))->group('document_id')->select();
                foreach ($document_id_list as $key1 => $value1) {
                    $document_arr = $document_arr.','.$value1['document_id'];
                }
            }
            if(!empty($document_arr)){
                $document_arr = substr($document_arr,1);
            }
            /*if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
                    $where['nk_document_common.headline'] = array('like',"%$keyword%");
                }elseif($key2 ==2){
                    $where['nk_document_common.title|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                }elseif($key2 ==3){
                    $where['nk_document_common.title|nk_document_common.headline|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                }elseif($key2 ==4){
                    $where['nk_document_common.id'] = array('in',$document_arr);
                }
            }else{
                $where['nk_document_common.title|nk_document_common.headline|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                if (!empty($document_arr))
                {
                    $where['nk_document_common.id'] = array('in',$document_arr);
                }
            }*/
            if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
                    $where .= " and (`headline` like '%$keyword%'";
                }elseif($key2 ==2){
                    $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                }elseif($key2 ==3){
                    $where .=" and ((`headline` like '%$keyword%')or(`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                }elseif($key2 ==4){
                    $where .=" and (`id` in ($document_arr)";
                    // $where['id'] = array('in',$document_arr);
                }
                $where .= ")";
            }else{
                $where .=" and ((`headline` like '%$keyword%')or(`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                if(!empty($document_arr)){
                    $where .=" or (`id` in ($document_arr))";
                }
                $where .= ")";
            }
            $this->assign('keyword',$keyword);
        }
//        $where['_logic'] = 'OR';

        import('ORG.Util.Page');// 导入分页类
        $de = M('DocumentCommon')->where($where)->group('headline')->select();
        $count      = count($de);// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('DocumentCommon')->where($where)->limit($Page->firstRow.','.$Page->listRows)->group('headline')->select();
//        echo M('DocumentCommon')->getLastSql();//die();


        $db = M('SendDocumentToCommon');
        foreach ($rs as $k=>$item)
        {
            $ids = array();
            $id = M('DocumentCommon')->where(array('headline'=>$item['headline']))->field('id')->select();
            foreach ($id as $a)
            {
                array_push($ids, $a['id']);
            }
            $rs[$k]['lead_name'] = "";
            $rs[$k]['responsibility_name'] = "";
            foreach ($ids as $did)
            {
                //牵头单位
                $qts = $db
                    ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                    ->where(array('dtype'=>1, 'document_id'=>$did))
                    ->field('d_name,to_id')
                    ->select();

                if ($qts){
                    foreach ($qts as $qt){
//                        dump($qt['d_name']);
                        if($qt['d_name']!=''){
                            $rs[$k]['lead_name'] .= $qt['d_name'].";";
                        }
                    }
                }
//                die();


                //责任单位
                $zrs = $db
                    ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                    ->where(array('dtype'=>2, 'document_id'=>$did))
                    ->field('d_name,to_id')
                    ->select();

                if ($zrs){
                    foreach ($zrs as $zr){
                        if($zr['d_name']!=''){
                            $rs[$k]['responsibility_name'] .= $zr['d_name'].";";
                        }
                    }
                }
            }
        }

        $this->assign('rs', $rs);
        // dump($rs);die;
        $this->assign('page', $show);
        $this->display();
    }

    /**
     * 常规性任务 大任务下的小列表
     * 孙璠
     * 2017.4.7
     */
    public function detailcommonlist()
    {
        $headline = $_GET['head'];

//        $typewhere['headline'] = $headline;
        $where = " `headline` like '%$headline%'";
        $type = $_GET['type']?$_GET['type']:1;
        $this->assign('type',$type);
//        $where = array();
        if ($type==1){
//            $typewhere['type'] = $type;
            $where .= " AND `type`=$type";
        }elseif ($type==2){
//            $typewhere['type'] = array('in', array(2,3,4));
            $where .= " AND `type` IN (2,3,4)";
        }

//        $typewhere['type'] = $type;
//        $typewhere['_logic'] = 'AND';
        $this->assign('type', $type);

        if ($_GET['keyword']){
            $keyword=$_GET['keyword'];
            $department_list = M('Department')->where("d_name like '%$keyword%'")->select();
            $document_arr = '';
            foreach ($department_list as $key => $value) {
                $document_id_list = M('SendDocumentToCommon')->where(array('to_id'=>$value['id']))->group('document_id')->select();
                foreach ($document_id_list as $key1 => $value1) {
                    $document_arr = $document_arr.','.$value1['document_id'];
                }
            }
            if(!empty($document_arr)){
                $document_arr = substr($document_arr,1);
            }
            /*if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
                    $where['nk_document_common.headline'] = array('like',"%$keyword%");
                }elseif($key2 ==2){
                    $where['nk_document_common.title|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                }elseif($key2 ==3){
                    $where['nk_document_common.title|nk_document_common.headline|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                }elseif($key2 ==4){
                    $where['nk_document_common.id'] = array('in',$document_arr);
                }
            }else{
                $where['nk_document_common.title|nk_document_common.headline|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                if (!empty($document_arr))
                {
                    $where['nk_document_common.id'] = array('in',$document_arr);
                }
            }*/
            if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
//                    $where .= " and (`headline` like '%$keyword%'";
                }elseif($key2 ==2){
                    $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                }elseif($key2 ==3){
                    $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                }elseif($key2 ==4){
                    $where .=" and (`id` in ($document_arr))";
                    // $where['id'] = array('in',$document_arr);
                }
                $where .= ")";
            }else{
                $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                if(!empty($document_arr)){
                    $where .=" or (`id` in ($document_arr))";
                }
                $where .= ")";
            }
            $this->assign('keyword',$keyword);
        }

        import('ORG.Util.Page');// 导入分页类
        $de = M('DocumentCommon')->where($where)->select();
        $count      = count($de);// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('DocumentCommon')->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
//        echo M('DocumentCommon')->getLastSql();

        $db = M('SendDocumentToCommon');
        foreach ($rs as $k=>$item)
        {
            //牵头单位
            $qts = $db
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                ->where(array('dtype'=>1, 'document_id'=>$item['id']))
                ->field('d_name,to_id,finish')
                ->select();
            $rs[$k]['lead_name'] = "";
            if ($qts){
                foreach ($qts as $qt){
                    if($qt['d_name']!=''){
                        $rs[$k]['lead_name'] .= $qt['d_name'].";";
                    }
                    if($qt['to_id']==$_SESSION['userinfo']['department_id']){
                        if ($qt['finish'] == -1){
                            $rs[$k]['edit'] = 1;
                        }else{
                            $rs[$k]['is_finish'] = 1;
                        }
                    }
//                    $rs[$k]['finish'] = $qt['finish'];
                }
            }


            //责任单位
            $zrs = $db
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                ->where(array('dtype'=>2, 'document_id'=>$item['id']))
                ->field('d_name,to_id,finish')
                ->select();
            $rs[$k]['responsibility_name'] = "";
            if ($zrs){
                foreach ($zrs as $zr){
                    if($zr['d_name']!=''){
                        $rs[$k]['responsibility_name'] .= $zr['d_name'].";";
                    }
                    if($zr['to_id']==$_SESSION['userinfo']['department_id']){
                        if ($zr['finish'] == -1){
                            $rs[$k]['edit'] = 1;
                        }else{
                            $rs[$k]['is_finish'] = 1;
                        }
                    }
//                    $rs[$k]['finish'] = $zr['finish'];
                }
            }
        }
//        dump($rs);die();
        $this->assign('rs', $rs);
        $this->assign('page', $show);
        $this->display();
    }

    public function commondetailpage()
    {
        $id = $_GET['id'];
//        $where['type'] = $type = $_GET['type']?$_GET['type']:1;
        $this->assign('type', $_GET['type']);
        $rs = M('DocumentCommon')->where(array('id'=>$id))->find();

        $db = M('SendDocumentToCommon');
        $rs['edit'] = -1;
        $rs['is_finish'] = -1;
        $rs['progress'] = -1;
        //牵头单位
        $qts = $db
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
            ->where(array('dtype'=>1, 'document_id'=>$id))
            ->field('d_name,to_id,finish')
            ->select();
        $rs['lead_name'] = "";
        if ($qts){
            foreach ($qts as $qt){
                if($qt['d_name']!=''){
                    $rs['lead_name'] .= $qt['d_name'].";";
                }
                if($qt['to_id']==$_SESSION['userinfo']['department_id']){
                    $rs['progress'] = 1;
                    if ($qt['finish'] == -1){
                        $rs['edit'] = 1;
                    }else{
                        $rs['is_finish'] = 1;
                    }
                }
//                    $rs[$k]['finish'] = $qt['finish'];
            }
        }


        //责任单位
        $zrs = $db
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
            ->where(array('dtype'=>2, 'document_id'=>$id))
            ->field('d_name,to_id,finish')
            ->select();
        $rs['responsibility_name'] = "";
        if ($zrs){
            foreach ($zrs as $zr){
                if($zr['d_name']!=''){
                    $rs['responsibility_name'] .= $zr['d_name'].";";
                }
                if($zr['to_id']==$_SESSION['userinfo']['department_id']){
                     $rs['progress'] = 1;
                    if ($zr['finish'] == -1){
                        $rs['edit'] = 1;
                    }else{
                        $rs['is_finish'] = 1;
                    }
                }
//                    $rs[$k]['finish'] = $zr['finish'];
            }
        }
        // echo $rs['progress'];
        // return;
//        dump($rs);die();
        // dump($rs);die;
        $this->assign('detail',$rs);
        $this->display();
    }
    /**
     * 常规任务完成
     * 王旭明
     * 2017.4.05
     */
    public function commonFinish()
    {
        $id = $_REQUEST['did'];
        if (!M('DocumentCommon')->where(array('id'=>$id))->save(array('d_finish'=>1,'check_time'=>time()))){
            echo 0;die();
        }
        echo 1;
    }
    public function commonFinishOwner()
    {
        $id = $_REQUEST['did'];
        if (!M('SendDocumentToCommon')->where(array('document_id'=>$id, 'to_id'=>$_SESSION['userinfo']['department_id']))->save(array('finish'=>1,'end_time'=>time()))){
            echo 0;die();
        }
        echo 1;
    }
}