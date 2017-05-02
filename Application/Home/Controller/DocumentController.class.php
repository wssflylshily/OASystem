<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/3/20
 * Time: 16:54
 */

namespace Home\Controller;


use Think\Controller;
use Think\Page;

class DocumentController extends BaseController
{
    public function receive()
    {
        $db = M('SendDocumentTo');

        $where['to_id'] = $_SESSION['userinfo']['department_id'];
        if ($_GET['type']){
            $where['sudden_category_id'] = $_GET['type'];
        }
        if ($_GET['finish']){
            $where['nk_send_document_to.finish'] = $_GET['finish'];
        }
        if ($_GET['read']){
            $where['nk_send_document_to.read'] = $_GET['read'];
        }
        if ($_GET['start'] && $_GET['end']){
            $where['nk_document.send_time'] = array('between', array(strtotime($_GET['start']), strtotime($_GET['end'])));
        }

        import('ORG.Util.Page');// 导入分页类
        $rs = $db
            ->join('LEFT JOIN nk_document ON nk_document.id=nk_send_document_to.document_id ')
            ->where($where)
            ->group('document_id')
            ->select();
        $count      = count($rs);// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = $db
            ->join('LEFT JOIN nk_document ON nk_document.id=nk_send_document_to.document_id ')
            ->join('LEFT JOIN nk_sudden_category ON nk_document.sudden_category_id=nk_sudden_category.id ')
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_document.from_id ')
            ->where($where)
            ->field('*, nk_document.id as did, nk_send_document_to.read as toread, nk_send_document_to.finish as sdfinish')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->order('nk_document.send_time DESC')
            ->group('document_id')
            ->select();

//        echo $db->getLastSql();die();
        for($i=0;$i<count($rs);$i++){
            //牵头单位
            $qts = $db
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to.to_id ')
                ->where(array('dtype'=>1, 'document_id'=>$rs[$i]['did']))
                ->field('d_name')
                ->select();
            $rs[$i]['lead_name'] = "";
            if ($qts){
                foreach ($qts as $qt){
                    $rs[$i]['lead_name'] .= $qt['d_name'].";";
                }
                $rs[$i]['lead_name'] = substr( $rs[$i]['lead_name'], 0, -1);
            }


            //责任单位
            $zrs = $db
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to.to_id ')
                ->where(array('dtype'=>2, 'document_id'=>$rs[$i]['did']))
                ->field('d_name')
                ->select();
            $rs[$i]['responsibility_name'] = "";
            if ($zrs){
                foreach ($zrs as $zr){
                    $rs[$i]['responsibility_name'] .= $zr['d_name'].";";
                }
                $rs[$i]['responsibility_name'] = substr( $rs[$i]['responsibility_name'], 0, -1);
            }

            //是否催办事项
            if (M('Reminder')->where(array('document_id'=>$rs[$i]['did'], 'type'=>1))->find()){
                $rs[$i]['cui'] = 1;
            }else{
                $rs[$i]['cui'] = -1;
            }
        }

        $receiveDoc = M('SendDocumentTo')->where(array('to_id'=>$_SESSION['userinfo']['department_id'], 'read'=>'-1'))->group('document_id')->select();

//        echo M('SendDocumentTo')->getLastSql();die();
        //分类
        $cate = M('SuddenCategory')->select();
        $this->assign('cate',$cate);

        $this->assign('count', count($receiveDoc));
        $this->assign('page',$show);
        $this->assign('rs', $rs);
        $this->display();
    }

    public function detail()
    {
        $db = M('SendDocumentTo');
        $id = $_GET['id'];
        $rs = $db
            ->join('LEFT JOIN nk_document ON nk_document.id=nk_send_document_to.document_id ')
            ->join('LEFT JOIN nk_sudden_category ON nk_document.sudden_category_id=nk_sudden_category.id ')
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_document.from_id ')
            ->where(array('nk_document.id'=>$id))
            ->order('send_time DESC')
            ->field('*, nk_document.id as did')
            ->find();

        $db->where(array('document_id'=>$id, 'to_id'=>$_SESSION['userinfo']['department_id']))->setField(array('read'=>'1' ));
                $rs['edit'] = -1;
        $rs['is_finish'] = -1;
        $rs['progress'] = -1;
        //牵头单位
        $qts = $db
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to.to_id ')
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

            }
//            $rs['lead_name'] = substr( $rs['lead_name'], 0, -1);
        }


        //责任单位
        $zrs = $db
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to.to_id ')
            ->where(array('dtype'=>2, 'document_id'=>$id))
            ->field('d_name,to_id,finish')
            ->select();
        // echo M('SendDocumentTo')->getLastSql();die;
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
            }
//            $rs['responsibility_name'] = substr( $rs['responsibility_name'], 0, -1);
        }

        //是否催办事项
        if (M('Reminder')->where(array('document_id'=>$rs['did']))->find()){
            $rs['cui'] = 1;
        }else{
            $rs['cui'] = -1;
        }

        //文件
        $rs['pic'] = array();
        if ($rs['file']){
            $pids = explode(",", $rs['file']);
            $j=0;
            foreach ($pids as $pid)
            {
                $file = M('Picture')->where(array('id'=>$pid))->find();
                $rs['pic'][$j]['pic_name'] = $file['picture_name'];
                $rs['pic'][$j]['pic_id'] = $pid;
                $rs['pic'][$j]['url'] = $file['picture_url'];
                $j++;
            }
        }
// dump($rs);
// return;
        $this->assign('type', $_GET['type']);
        $this->assign('detail', $rs);
        $this->display();
    }

    //发出的任务
    public function send()
    {
        $db = M('Document');

        $where['from_id'] = $_SESSION['userinfo']['department_id'];
        if ($_GET['type']){
            $where['sudden_category_id'] = $_GET['type'];
        }
        if ($_GET['finish']){
            $where['nk_document.d_finish'] = $_GET['finish'];
        }
        if ($_GET['start'] && $_GET['end']){
            $where['nk_document.send_time'] = array('between', array(strtotime($_GET['start']), strtotime($_GET['end'])));
        }
        if ($_GET['start'] && !$_GET['end']){
            $where['nk_document.send_time'] = array('EGT', strtotime($_GET['start']));
        }
        if (!$_GET['start'] && $_GET['end']){
            $where['nk_document.send_time'] = array('ELT', strtotime($_GET['end']));
        }
        import('ORG.Util.Page');// 导入分页类
        $count      = $db->where($where)->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = $db
//            ->join('LEFT JOIN nk_send_document_to ON nk_document.id=nk_send_document_to.document_id ')
            ->join('LEFT JOIN nk_sudden_category ON nk_document.sudden_category_id=nk_sudden_category.id ')
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_document.from_id ')
            ->where($where)
            ->field('*, nk_document.id as did')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->order('nk_document.send_time DESC')
            ->select();

//        echo $db->getLastSql();
//        dump($rs);die();
        for($i=0;$i<count($rs);$i++){
            //牵头单位
            $qts = M('SendDocumentTo')
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to.to_id ')
                ->where(array('dtype'=>1, 'document_id'=>$rs[$i]['did']))
                ->field('d_name')
                ->select();
            $rs[$i]['lead_name'] = "";
            if ($qts){
                foreach ($qts as $qt){
                    if($qt['d_name']!=""){
                        $rs[$i]['lead_name'] .= $qt['d_name'].";";
                    }
                }
//            $rs['lead_name'] = substr( $rs['lead_name'], 0, -1);
            }


            //责任单位
            $zrs = M('SendDocumentTo')
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to.to_id ')
                ->where(array('dtype'=>2, 'document_id'=>$rs[$i]['did']))
                ->field('d_name')
                ->select();
            $rs[$i]['responsibility_name'] = "";
            if ($zrs){
                foreach ($zrs as $zr){
                    if($zr['d_name']!=""){
                        $rs[$i]['responsibility_name'] .= $zr['d_name'].";";
                    }
                }
//            $rs['responsibility_name'] = substr( $rs['responsibility_name'], 0, -1);
            }

            //是否催办事项
            if (M('Reminder')->where(array('document_id'=>$rs[$i]['did']))->find()){
                $rs[$i]['cui'] = 1;
            }else{
                $rs[$i]['cui'] = -1;
            }
        }

        //分类
        $cate = M('SuddenCategory')->select();
        $this->assign('cate',$cate);
        $this->assign('page',$show);
        $this->assign('rs', $rs);
        $this->display();
    }

    public function write()
    {
        $keyword = $data['keyword'];
        if($keyword){
            $where['nk_department.d_name'] = array('like','%'.$keyword.'%');
        }
        $department_level = M('User')->alias('a')
                    ->join('nk_department b on a.department_id=b.id')
                    ->where(array('a.id'=>$_SESSION['userinfo']['id']))
                    ->field('b.id,b.parent_id,b.level')
                    ->find();
        if($department_level['id']==7){
            $return_data = array(array('id'=>-1,'name'=>'创文办'),array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'));
        }elseif($department_level['id']==1){
            $return_data = array(array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'),array('id'=>'3','name'=>'街道'),array('id'=>'4','name'=>'各指挥部'));
        }else{
            $return_data = '';
        }
        if($return_data){
            $dt=0;
            foreach ($return_data as $key => $value) {
                $where['nk_department.dp_category_task_id']=$value['id'];
                $return_data[$key]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
                if($return_data[$key]['list']==null){
                    $return_data[$key]['list']=array();
                }
            }
        }else{
            $dt=1;
            $list = array();
            $return_data = array(array('id'=>'null','name'=>'null'));
            $pid = $department_level['id'];
            $where['nk_department.parent_id'] = array('like',array("%,$pid","%,$pid,%","$pid,%","$pid"),'OR');
            // if()
            $return_data[0]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
            if($return_data[0]['list']==null){
                    $return_data[0]['list']=array();
                }
        }
        $this->assign('return_data',$return_data);
        $this->assign('dt',$dt);
        // echo json_encode($return_data);return;
        //分类
        $cate = M('SuddenCategory')->select();
        $this->assign('cate',$cate);
//         // department_category
//         $depCate = D('DepartmentCategoryTask')->
//         select();
//         foreach ($depCate as $k => $v){
//             $depCate[$k]['data'] =  D("department")->where(array('dp_category_task_id'=>$v['id']))->select();
//         }
// //        dump($depCate);die();
//         $this->assign("depCate",$depCate);
        $this->display();
    }

    public function ajaxDeparements()
    {
        //可发送人
        $departments = array();
        $db = M('Department');

        if ($_POST['keyword']){
            $where['d_name'] = array('like', '%'.$_POST['keyword'].'%');
        }
        $udid = $_SESSION['userinfo']['department_id'];
        $user_dep = $db->where(array('id'=>$udid))->find();

        if ($user_dep['level']==1)
        {
            $where['level'] = array('gt', 1);
            //一级

        }elseif ($user_dep['level']==2)
        {
            $where['level'] = array('gt', 2);
            //二级
        }elseif ($user_dep['level']==3)
        {
            $where['level'] = array('gt', 3);
            //三级
        }
        $departments = $db->where($where)->select();
        foreach ($departments as $k=>$item)
        {
            $pids = explode(',', $item['parent_id']);
            if (!in_array($udid, $pids))
            {
                unset($departments[$k]);
            }
        }
        $departments = array_values($departments);
        echo json_encode($departments);
    }

    public function searchDocumentAjax()
    {
        $keyword = $_GET['keyword'];
        if($keyword){
            $where['nk_department.d_name'] = array('like','%'.$keyword.'%');
        }
        $department_level = M('User')->alias('a')
                    ->join('nk_department b on a.department_id=b.id')
                    ->where(array('a.id'=>$_SESSION['userinfo']['id']))
                    ->field('b.id,b.parent_id,b.level')
                    ->find();
        if($department_level['id']==7){
            $return_data = array(array('id'=>-1,'name'=>'创文办'),array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'));
        }elseif($department_level['id']==1){
            $return_data = array(array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'),array('id'=>'3','name'=>'街道'),array('id'=>'4','name'=>'各指挥部'));
        }else{
            $return_data = '';
        }
        if($return_data){
            foreach ($return_data as $key => $value) {
                $where['nk_department.dp_category_task_id']=$value['id'];
                $return_data[$key]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
                if($return_data[$key]['list']==null){
                    $return_data[$key]['list']=array();
                }
            }
        }else{
            $list = array();
            $return_data = array(array('id'=>'null','name'=>'null'));
            $pid = $department_level['id'];
            $where['nk_department.parent_id'] = array('like',array("%,$pid","%,$pid,%","$pid,%","$pid"),'OR');
            // if()
            $return_data[0]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
            if($return_data[0]['list']==null){
                    $return_data[0]['list']=array();
                }
        }
        echo json_encode($return_data);
        // $this->assign('return_data',$return_data);
        // $depCate = D('DepartmentCategoryTask')->select();
        // foreach ($depCate as $k => $v){
        //     $depCate[$k]['data'] =  D("department")->where(array('dp_category_task_id'=>$v['id']))->select();
        // }
    }
    public function postWrite()
    {

        if (empty($_POST['qtdwid']) && empty($_POST['zrdwid'])){
            $this->error('牵头单位和责任单位不能都为空,页面跳转中...');
        }
        // echo json_encode($_POST);
        // return;
        // print_r($_POST['qtdwid']);
        // print_r($_POST['zrdwid']);
        // return;
        if (empty($_FILES) && empty($_POST['editorValue'])){
            $this->error('附件和内容不能都为空,页面跳转中...');
        }

        $data['from_id'] = $_SESSION['userinfo']['department_id'];
        $data['title'] = $_POST['rwbt'];
        $data['doc_sn'] = $_POST['rwbh'];
        $data['content'] = $_POST['editorValue'];
        $data['main_content'] = $_POST['zysx'];
        $data['send_time'] = time();
        $data['finish_time'] = time($_POST['wcsj']);
        $data['sudden_category_id'] = $_POST['lxdwid'];

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

        $data['file'] = $pids;

        $did = M('Document')->add($data);
        if ($did){


            // $qtids = substr($_POST['qtdwid'], 0, -1);
            if ($_POST['qtdwid']){
                $qtids = explode(',',$_POST['qtdwid']);
                foreach ($qtids as $qtid)
                {
                    $todata['document_id'] = $did;
                    $todata['to_id'] = $qtid;
                    $todata['dtype'] = 1;
                    M('SendDocumentTo')->add($todata);
                }
            }

            // $zrids = substr($_POST['zrdwid'], 0, -1);
            if ($_POST['zrdwid']){
                $zrids = explode(',', $_POST['zrdwid']);
                foreach ($zrids as $zrid)
                {
                    $todatb['document_id'] = $did;
                    $todatb['to_id'] = $zrid;
                    $todatb['dtype'] = 2;
                    M('SendDocumentTo')->add($todatb);
                }
            }
        }
//        redirect('send', 3, '发布成功，页面跳转中...');
        $this->success('发布成功，页面跳转中...', 'send');
    }

    /**
     * 催办
     * 孙璠
     * 2017.3.22
     */
    public function cuiban()
    {
        if (!$_REQUEST['message']){
            echo 0;
        }
        $data['r_content'] = $_REQUEST['message'];
        $data['document_id'] = $_REQUEST['did'];
        $data['sup_id'] = $_SESSION['userinfo']['department_id'];
        $data['send_time'] = time();
        $data['type'] = $_REQUEST['type'];      //1催办 2反馈
        M('Reminder')->add($data);
        echo 1;
    }

    /**
     * 进度
     * 孙璠
     * 2017.3.22
     */
    public function jindu()
    {
        $rs = array();
        if (!$_REQUEST['did']){
            return $rs;
        }
        $progress = M('Document')->alias('a')
                  ->join('nk_send_document_to b on a.id=b.document_id')
                  ->join('nk_department c on b.to_id=c.id')
                  ->where(array('a.id'=>$_REQUEST['did']))
                  ->field('a.id,a.title,a.send_time,a.from_id,a.check_time,a.d_finish,b.finish,b.to_id,b.end_time,c.d_name')
                  ->find();
        $send_name = M('Department')->where(array('id'=>$progress['from_id']))->field('d_name')->find();
        $send_name = $send_name['d_name'];
                // print_r($progress);
        $row = array('send_time'=>$progress['send_time'],'d_name'=>$send_name,'r_content'=>$progress['title'],'type'=>0,'file'=>'');
        $rs = M('Reminder')
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_reminder.sup_id')
            ->where(array('document_id'=>$_REQUEST['did']))
            ->select();
        if($rs){
            for ($j=0;$j<count($rs);$j++){
                $rs[$j]['file'] = array();
                if ($rs[$j]['file_id']!="")
                {
                    $files = explode(',', $rs[$j]['file_id']);
                    if ($files)for ($i=0;$i<count($files);$i++)
                    {
                        $rs[$j]['file'][$i] = M('Picture')->where(array('id'=>$files[$i]))->find();
                    }
                }
            }
        }else{
            $rs = array();
        }
        $finish = M('Document')->alias('a')
                  ->join('nk_send_document_to b on a.id=b.document_id')
                  ->join('nk_department c on b.to_id=c.id')
                  ->where(array('a.id'=>$_REQUEST['did']))
                  ->group('b.to_id')
                  ->field('a.id,a.title,a.send_time,a.from_id,a.check_time,a.d_finish,b.finish,b.to_id,b.end_time,c.d_name')
                  ->select();
        // echo M('Document')->getLastSql();
        foreach ($finish as $key => $value) {
            if($value['finish']==1){
                $f_department = M('Department')->where(array('id'=>$value['to_id']))->field('d_name')->find();
                $row_f = array('send_time'=>$value['end_time'],'d_name'=>$f_department['d_name'],'r_content'=>'已完成','quick'=>0,'file'=>'');
                array_push($rs,$row_f);
            }
        }
        if($progress['d_finish']==1){
            $d_department = M('Department')->where(array('id'=>$progress['from_id']))->field('d_name')->find();
            $row_d = array('send_time'=>$progress['check_time'],'d_name'=>$d_department['d_name'],'r_content'=>'确认完成','quick'=>0,'file'=>'');
            // print_r($row_d);
            array_push($rs,$row_d);
        }
        $res=array('rs'=>$rs,'row'=>$row);
        echo json_encode($res);
    }

    /**
     * 执行者点击完成
     * 孙璠
     * 2017.3.22
     */
    public function receiveDocFinish()
    {
        $id = $_REQUEST['did'];
        if (!M('SendDocumentTo')->where(array('document_id'=>$id, 'to_id'=>$_SESSION['userinfo']['department_id']))->save(array('finish'=>1,'end_time'=>time()))){
            echo 0;die();
        }
        echo 1;
    }

    /**
     * 发布人点击完成
     * 孙璠
     * 2017.3.22
     */
    public function sendDocFinish()
    {
        $id = $_REQUEST['did'];
        if (!M('Document')->where(array('id'=>$id, 'from_id'=>$_SESSION['userinfo']['department_id']))->save(array('d_finish'=>1,'check_time'=>time()))){
            echo 0;die();
        }
        echo 1;
    }

    /**
     * 反馈
     * 孙璠
     * 2017.3.23
     */
    public function postHuibao()
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
        $data['document_id'] = $_REQUEST['did'];
        $data['sup_id'] = $_SESSION['userinfo']['department_id'];
        $data['send_time'] = time();
        $data['type'] = 2;      //1催办 2反馈
        $data['file_id'] = $pids;
        M('Reminder')->add($data);
        $this->success('反馈成功，页面跳转中...');
    }
    /**
     * 常规性任务列表
     * 王旭明
     * 2017.4.05
     */
    public function common()
    {
        $db = M('DocumentCommon');

        // $where['from_id'] = $_SESSION['userinfo']['department_id'];
        $keywhere=array('1'=>'1');
        // $where = "1=1";
        if ($_GET['type']){
            $where['sudden_category_id'] = $_GET['type'];
        }
        if ($_GET['finish']){
            $where['nk_document_common.d_finish'] = $_GET['finish'];
        }
        if ($_GET['start'] && $_GET['end']){
            $where['nk_document_common.send_time'] = array('between', array(strtotime($_GET['start']), strtotime($_GET['end'])));
        }
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
            if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
                   $where['nk_document_common.title'] = array('like',"%$keyword%");
                }elseif($key2 ==2){
                   $where['nk_document_common.content'] = array('like',"%$keyword%");
                   // print_r($where);
                }elseif($key2 ==3){
                    $where['nk_document_common.title|nk_document_common.content'] = array('like',"%$keyword%");
                }elseif($key2 ==4){
                    if(!empty($document_arr)){
                        $where['nk_document_common.id'] = array('in',$document_arr);   
                    }
                }
            }else{
                $keywhere['nk_document_common.title'] = array('like',"%$keyword%");
                $keywhere['nk_document_common.content'] = array('like',"%$keyword%");
                if(!empty($document_arr)){
                    $keywhere['nk_document_common.id'] = array('in',$document_arr);    
                }
                $keywhere['_logic'] = 'OR';
            }
            $this->assign('keyword',$keyword);
        }
        // print_r($keywhere);
        // return;
        import('ORG.Util.Page');// 导入分页类
        $count      = $db->where($where)->where($keywhere)->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出
        // print_r($where);
        // return;
        $rs = $db
//            ->join('LEFT JOIN nk_send_document_to ON nk_document.id=nk_send_document_to.document_id ')
            // ->join('LEFT JOIN nk_sudden_category ON nk_document.sudden_category_id=nk_sudden_category.id ')
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_document_common.from_id ')
            ->where($where)
            ->where($keywhere)
            ->field('*, nk_document_common.id as did')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->order('nk_document_common.send_time DESC')
            ->select();
            // echo M('DocumentCommon')->getLastSql();
            // return;

        // $rs = M('DocumentCommon')->where(array('is_delete'=>-1))->select();
        for($i=0;$i<count($rs);$i++){
            //牵头单位
            $qts = M('SendDocumentToCommon')
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                ->where(array('dtype'=>1, 'document_id'=>$rs[$i]['did']))
                ->field('d_name,to_id,finish')
                ->select();
            $rs[$i]['lead_name'] = "";
            if ($qts){
                foreach ($qts as $qt){
                    if($qt['d_name']!=""){
                        $rs[$i]['lead_name'] .= $qt['d_name'].";";
                    }
                    if($qt['to_id']==$_SESSION['userinfo']['department_id']){
                        $rs[$i]['edit'] = 1;
                    }
                    $rs[$i]['finish'] = $qt['finish'];
                }
//            $rs['lead_name'] = substr( $rs['lead_name'], 0, -1);
            }
            

            //责任单位
            $zrs = M('SendDocumentToCommon')
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                ->where(array('dtype'=>2, 'document_id'=>$rs[$i]['did']))
                ->field('d_name,to_id,finish')
                ->select();
            $rs[$i]['responsibility_name'] = "";
            if ($zrs){
                foreach ($zrs as $zr){
                    if($zr['d_name']!=""){
                       $rs[$i]['responsibility_name'] .= $zr['d_name'].";";
                    }
                    if($zr['to_id']==$_SESSION['userinfo']['department_id']){
                        $rs[$i]['edit'] = 1;
                    }
                    $rs[$i]['finish'] = $qt['finish'];
                }
//            $rs['responsibility_name'] = substr( $rs['responsibility_name'], 0, -1);
            }

        }
        $this->assign('page',$show);
        $this->assign('rs', $rs);
        $this->display();
    }
    /**
     * 反馈（常规任务）
     * 王旭明
     * 2017.4.05
     */
    public function feedback_common()
    {
        if (!$_REQUEST['message']){
            echo 0;
        }
        $data['r_content'] = $_REQUEST['message'];
        $data['document_id'] = $_REQUEST['id'];
        $data['sup_id'] = $_SESSION['userinfo']['department_id'];
        $data['send_time'] = time();
        $data['type'] = $_REQUEST['type'];      //1催办 2反馈
        M('ReminderCommon')->add($data);
        echo 1;
    }

    /**
     * 常规任务详情
     * 王旭明
     * 2017.4.05
     */
    public function detailcommon()
    {
        $db = M('SendDocumentToCommon');
        $id = $_GET['id'];
        $rs = $db
            ->join('LEFT JOIN nk_document_common ON nk_document_common.id=nk_send_document_to_common.document_id ')
            // ->join('LEFT JOIN nk_sudden_category ON nk_document.sudden_category_id=nk_sudden_category.id ')
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_document_common.from_id ')
            ->where(array('nk_document_common.id'=>$id))
            ->order('send_time DESC')
            ->field('*, nk_document_common.id as did')
            ->find();

        $db->where(array('document_id'=>$id, 'to_id'=>$_SESSION['userinfo']['department_id']))->setField(array('read'=>'1' ));
        //牵头单位
        $qts = $db
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
            ->where(array('dtype'=>1, 'document_id'=>$rs['did']))
            ->field('d_name,to_id')
            ->select();
        $rs['lead_name'] = "";
        if ($qts){
            foreach ($qts as $qt){
                if($qt['d_name']!=''){
                   $rs['lead_name'] .= $qt['d_name'].";";
                }
                if($qt['to_id']==$_SESSION['userinfo']['department_id']){
                    $rs['edit'] = 1;
                }
                $rs['finish'] = $qt['finish'];
            }
//            $rs['lead_name'] = substr( $rs['lead_name'], 0, -1);
        }


        //责任单位
        $zrs = $db
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
            ->where(array('dtype'=>2, 'document_id'=>$rs['did']))
            ->field('d_name,to_id')
            ->select();
        $rs['responsibility_name'] = "";
        if ($zrs){
            foreach ($zrs as $zr){
                if($zr['d_name']!=''){
                    $rs['responsibility_name'] .= $zr['d_name'].";";
                }
                if($zr['to_id']==$_SESSION['userinfo']['department_id']){
                    $rs['edit'] = 1;
                }
                $rs['finish'] = $qt['finish'];
            }
//            $rs['responsibility_name'] = substr( $rs['responsibility_name'], 0, -1);
        }
        // echo json_encode($rs);
        // return;
        $this->assign('type', $_GET['type']);
        $this->assign('detail', $rs);
        $this->display();
    }

}