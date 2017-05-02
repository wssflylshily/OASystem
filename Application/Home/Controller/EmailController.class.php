<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2017/3/17
 * Time: 10:56
 */
namespace Home\Controller;


use Think\Controller;
use Think\Crypt\Driver\Think;
use Think\Upload;
use Think\Page;

class EmailController extends BaseController
{

    //收件箱显示
    public function receive(){
        $id = $_SESSION['userinfo']['id'];

        import('ORG.Util.Page');// 导入分页类
        $count      = M('SendEmailTo')->where(array('nk_send_email_to.send_to'=>$id, 'nk_send_email_to.is_delete'=>'-1'))->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $email['send_to'] = $_SESSION['userinfo']['id'];
        $emails = M('SendEmailTo')
            ->join('LEFT JOIN nk_email ON nk_email.id=nk_send_email_to.email_id')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_email.send_from')
            ->where(array('nk_send_email_to.send_to'=>$id, 'nk_send_email_to.is_delete'=>'-1'))
            ->field('*, nk_email.id as eid, nk_send_email_to.id as etid')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->order('send_time DESC')
            ->select();

        //未读邮件条数
        $read = M('SendEmailTo')
            ->where(array('send_to'=>$_SESSION['userinfo']['id'] ,'read'=>'-1', 'is_delete'=>'-1'))->count();

        $this->assign('emails',$emails);
        $this->assign('page',$show);
        $this->assign('readnum',$read);
        $this->display();
    }

    //删除 收到的邮件
    public function delete(){
        foreach($_GET['id'] as $key=>$val){
            M('SendEmailTo')->where(array('id'=>$val))->setField(array('is_delete'=>'1' ));
        }
        echo 1;
    }


    //邮件详情
    public function detail()
    {

        $id = $_GET['id'];
        $where['nk_email.id'] = $id;
        if ($_GET['type']==1){
            $where['nk_send_email_to.send_to'] = $_SESSION['userinfo']['id'];
        }else{
            $where['nk_email.send_from'] = $_SESSION['userinfo']['id'];
        }
        $email = M('Email')
            ->join('LEFT JOIN nk_send_email_to ON nk_send_email_to.email_id=nk_email.id')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_email.send_from')
            ->where($where)
            ->field('*, nk_user.name as username, nk_email.id as eid, nk_send_email_to.id as etid')
            ->find();
        M('SendEmailTo')->where(array('id'=>$email['etid'],'send_to'=>$_SESSION['userinfo']['id']))->setField(array('read'=>'1' ));

        //文件
        $email['pic'] = array();
        if ($email['picture_id']){
            $pids = explode(",", $email['picture_id']);
            $j=0;
            foreach ($pids as $pid)
            {
                $file = M('Picture')->where(array('id'=>$pid))->find();
                $email['pic'][$j]['pic_name'] = $file['picture_name'];
                $email['pic'][$j]['pic_id'] = $pid;
                $email['pic'][$j]['url'] = $file['picture_url'];
                $j++;
            }
        }


        $email['sendname'] = "";
        $rs = M('SendEmailTo')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_send_email_to.send_to')
            ->where(array('email_id'=>$email['email_id']))
            ->field('send_to, name')
            ->select();
        foreach ($rs as $k=>$v){
            $email['sendname'] .= $v['name'].',';
        }
        $email['sendname'] = substr($email['sendname'], 0, -1);

        $this->assign('email', $email);
        $this->assign('type', $_GET['type']);
        $this->display();
    }


    //发件箱
    public function send(){
        $id = $_SESSION['userinfo']['id'];

        import('ORG.Util.Page');// 导入分页类
        $count      = M('Email')->where(array('nk_email.send_from'=>$id, 'nk_email.is_delete'=>'-1'))->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出
//        echo M('Email')->getLastSql();die();

        $email['send_to'] = $_SESSION['userinfo']['id'];
        $emails = M('Email')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_email.send_from')
            ->where(array('nk_email.send_from'=>$id, 'nk_email.is_delete'=>'-1'))
            ->field('*, nk_email.id as eid, nk_user.name as username')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->order('send_time DESC')
            ->select();

        for ($i=0;$i<count($emails);$i++){
            $emails[$i]['send_name'] = "";
            $rs = M('SendEmailTo')
                ->join('LEFT JOIN nk_user ON nk_user.id=nk_send_email_to.send_to')
                ->where(array('email_id'=>$emails[$i]['eid']))
                ->field('send_to, name')
                ->select();
            foreach ($rs as $k=>$v){
                $emails[$i]['send_name'] .= $v['name'].',';
            }
            $emails[$i]['send_name'] = substr($emails[$i]['send_name'], 0, -1);
        }

//        dump($emails);die();
        $this->assign('emails',$emails);
        $this->assign('page',$show);
        $this->display('send');
    }

    //删除发出去的邮件
    public function sendDelete()
    {
        foreach($_GET['id'] as $key=>$val){
            M('Email')->where(array('id'=>$val))->setField(array('is_delete'=>'1' ));
        }
        echo 1;
    }

    //发邮件
    public function write()
    {

        $category_list = M('DepartmentCategory')->select();
        foreach ($category_list as $key => $value) {
            $category_list[$key]['count'] = M('Department')->where(array('nk_department.department_category_id'=>$value['id']))->count();
            $category_list[$key]['second'] = M('Department')->where(array('nk_department.department_category_id'=>$value['id']))->select();
            foreach ($category_list[$key]['second'] as $key1 => $value1) {
                $category_list[$key]['second'][$key1]['count'] = M('User')->where(array('nk_user.department_id'=>$value1['id']))->count();
                $category_list[$key]['second'][$key1]['third'] = M('User')->where(array('nk_user.department_id'=>$value1['id']))->select();
            }
        }
        $list = M('User')->where(array('nk_user.department_id'=>7))->select();
        $category_id = M('Department')->alias('a')
                       ->join('nk_department_category b on a.department_category_id=b.id')
                       ->where(array('a.id'=>$_SESSION['userinfo']['department_id']))
                       ->field('b.id')
                       ->find();
        $this->assign('category_id',$category_id);

        $chuangwen_list = M('User')->where(array('nk_user.department_id'=>1))->select();

        // echo json_encode($list);
        // return;
        $this->assign('list',$list);
        $this->assign('chuangwen_list',$chuangwen_list);
        // echo json_encode($category_list);
        // return;
        $this->assign('category_list',$category_list);
        $this->display();
    }

    public function postEmail()
    {
//        var_dump($_POST['editorValue']);die();
        $receive = $_POST['contract'];
        if (!$receive)
        {
            //没有收件人
            $this->error('没有选择收件人,请添加后重新发送,页面跳转中...','/Email/write',3);
        }
        // $receive = substr($receive, 0, -1);

        if (empty($_FILES) && empty($_POST['editorValue'])){
            $this->error('附件和邮件内容不能都为空,页面跳转中...','/Email/write',3);
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

        //发件人
        $arr['email_type'] = 1;
        if ($_POST['reply']){
            $arr['email_type'] = 2;
        }
        $arr['title'] = $_POST['title'];
        $arr['content'] = $_POST['editorValue'];
        $arr['send_from'] = $_SESSION['userinfo']['id'];
        $arr['send_time'] = time();
        $arr['picture_id'] = $pids;

        $num = M('Email')->add($arr);
        if (!$num){
            //没有添加成功
            $this->error('发送失败,请重新发送,页面跳转中','write',3);
        }
        //收件人
        $ids = explode(",",$receive);
        foreach ($ids as $id){
            $data['send_to'] = $id;
            $data['email_id'] = $num;
            M('SendEmailTo')->add($data);
        }
        $this->success('发送成功，页面跳转中...', 'send', 3);
//        redirect('send', 3, '发送成功，页面跳转中...');
    }

    public function test()
    {
        $this->display();
    }

    public function upload(){
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     3145728 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =     './Public/Picture/'; // 设置附件上传根目录
        $upload->savePath  =     ''; // 设置附件上传（子）目录
        // 上传文件
        $info   =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }else{// 上传成功 获取上传文件信息
            foreach($info as $file){
                echo $file['savepath'].$file['savename'];
            }
        }
    }

    /**
     * 回复
     * 孙璠
     * 2017.3.23
     */
    public function reply()
    {
        $where['nk_email.id'] = $_REQUEST['id'];
        $email = M('Email')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_email.send_from')
            ->where($where)
            ->field('*, nk_user.name as username, nk_user.id as uid, nk_email.id as eid')
            ->find();
        $this->assign('email', $email);
        $this->display();
    }


}