<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/3/18
 * Time: 10:39
 */

namespace Home\Controller;


use Think\Controller;

class AjaxController extends Controller
{

    //首页 左侧 用户信息
    public function leftBarUserAjax()
    {
        $userinfo = M('user')
            ->where(array('nk_user.id'=>$_SESSION['userinfo']['id']))
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_user.department_id')
            ->find();
        echo json_encode($userinfo);
    }

    //首页 左侧 未读邮件
    public function leftBarEmailAjax()
    {
        $read = M('SendEmailTo')
            ->where(array('send_to'=>$_SESSION['userinfo']['id'] ,'read'=>'-1', 'is_delete'=>'-1'))->count();
        echo $read;
    }

    //公文管理
    public function leftBarDocumentAjax()
    {
        $document = M('document')
            ->where(array('nk_document.to_id'=>$_SESSION['userinfo']['id'] ,'read'=>'-1'))->count();
        echo $document;
    }

    //催督办
    public function leftBarReminderAjax()
    {
        $reminderinfo = M('reminder')
            ->where(array('nk_reminder.exe_id'=>$_SESSION['userinfo']['id']))
            ->count();
        echo $reminderinfo;
    }

    //收到的任务 未读
    public function receiveDocument()
    {
        $receiveDoc = M('SendDocumentTo')->where(array('to_id'=>$_SESSION['userinfo']['department_id'], 'read'=>'-1'))->group('document_id')->select();
        echo count($receiveDoc);
    }

    //右侧 联系人
    public function friends()
    {
        $friend_arr = M('User')->select();
        $department_arr = array();
        if ($friend_arr){
            if ($friend_arr)foreach ($friend_arr as $k=>$item){
                $user = M('user')->where(array('id'=>$item['id']))->field('id as user_id, name as friend_name, department_id')->find();
                foreach ($department_arr as $key=>$dep){
                    $a=0;
                    if ($dep['department_id'] == $user['department_id'])
                    {
                        $a = 1;
                        $department_arr[$key]['friends_list'][] = $user;
                        break;
                    }
                }
                if ($a==0){
                    $department_arr[$k]['department_id'] = $user['department_id'];
                    $department_info = M('Department')->where(array('id'=>$user['department_id']))->find();
                    $department_arr[$k]['department_name'] = $department_info['d_name'];
                    $department_arr[$k]['department_category_id'] = $department_info['department_category_id'];
                    $department_arr[$k]['friends_list'][] = $user;
                }
            }
        }
        $department_arr = array_values($department_arr);
        echo json_encode($department_arr);
    }

    public function newFriends()
    {
        $id = $_SESSION['userinfo']['id'];
        $rs = M('Friend')->where(array('user_id|friend_id'=>$id))->select();
        $friend_arr = array();
        $department_arr = array();
        if ($rs){
            foreach ($rs as $item){
                if ($item['user_id'] == $id){
                    $friend_arr[] = $item['friend_id'];
                }elseif ($item['friend_id'] == $id){
                    $friend_arr[] = $item['user_id'];
                }
            }
            if ($friend_arr)foreach ($friend_arr as $k=>$item){
                $user = M('user')->where(array('id'=>$item))->field('id as user_id, name as friend_name, department_id')->find();
                foreach ($department_arr as $key=>$dep){
                    $a=0;
                    if ($dep['department_id'] == $user['department_id'])
                    {
                        $a = 1;
                        $department_arr[$key]['friends_list'][] = $user;
                        break;
                    }
                }
                if ($a==0){
                    $department_arr[$k]['department_id'] = $user['department_id'];
                    $department_info = M('Department')->where(array('id'=>$user['department_id']))->find();
                    $department_arr[$k]['department_name'] = $department_info['d_name'];
                    $department_arr[$k]['friends_list'][] = $user;
                }
            }
        }
        $department_arr = array_values($department_arr);
        echo json_encode($department_arr);
    }

    //退出
    public function loginout()
    {
        session_unset();
        session_destroy();
    }

    //右侧搜索
    public function searchFriends()
    {
        $name = $_REQUEST['keyword'];
        /*$friends = M('Friend')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_friend.friend_id')
            ->where(array('user_id'=>$_SESSION['userinfo']['id'], 'name'=>array('like', '%'.$name.'%')))
            ->select();*/
        $friends = M('User')->where(array('name'=>array('like', '%'.$name.'%')))->select();
        echo json_encode($friends);
    }

    public function test()
    {
        $department = M('Department')->where(array('id'=>array('between', array('60', '100'))))->select();
//        echo M('Department')->getLastSql();
//        dump($department);die();
        foreach ($department as $item)
        {
            $data['name'] = $item['d_name']."01";
            $data['department_id'] = $item['id'];
            $data['create_time'] = "1490768315";
            $data['password'] = "55cb49d1f24f273201deed2c149bc1e1";
            M('user')->add($data);

            $data['name'] = $item['d_name']."02";
            $data['department_id'] = $item['id'];
            $data['create_time'] = "1490768315";
            $data['password'] = "55cb49d1f24f273201deed2c149bc1e1";
            M('user')->add($data);

            $data['name'] = $item['d_name']."03";
            $data['department_id'] = $item['id'];
            $data['create_time'] = "1490768315";
            $data['password'] = "55cb49d1f24f273201deed2c149bc1e1";
            M('user')->add($data);

            $data['name'] = $item['d_name']."04";
            $data['department_id'] = $item['id'];
            $data['create_time'] = "1490768315";
            $data['password'] = "55cb49d1f24f273201deed2c149bc1e1";
            M('user')->add($data);

            $data['name'] = $item['d_name']."05";
            $data['department_id'] = $item['id'];
            $data['create_time'] = "1490768315";
            $data['password'] = "55cb49d1f24f273201deed2c149bc1e1";
            M('user')->add($data);
        }
    }

    public function edit()
    {
        $data['name'] = $_POST['name'];
        $data['phone'] = $_POST['tel'];

        $id = $_SESSION['userinfo']['id'];
        if ($data['phone']){
            if($this->check_mobile($data['phone']) == false){
                $arr = array('status'=>-1,'msg'=>'手机格式不正确');
                echo json_encode($arr);
                exit();
            }
            $where['id'] = array('neq',$id);
            $where['phone'] = $data['phone'];
            $phone_exsit = M('User')->where($where)->find();
            if($phone_exsit){
                $arr = array('status'=>-1,'msg'=>'手机号已存在');
                echo json_encode($arr);
                exit();
            }
        }

        $name_exsit = M('User')->where(array('id'=>$id, 'name'=>$data['name']))->find();
        if($name_exsit){
            $arr = array('status'=>-1,'msg'=>'用户名已存在');
            echo json_encode($arr);
            exit();
        }

        $user_exsit = M('User')->where(array('id'=>$id))->find();
        if(!$user_exsit){
            $arr = array('status'=>-1,'msg'=>'用户不存在');
            echo json_encode($arr);
            exit();
        }

        M('user')->where(array('id'=>$id))->save($data);
        $arr = array('status'=>1,'msg'=>'成功');
        echo json_encode($arr);

    }

    function check_mobile($mobile){
        if(preg_match('/1[34578]\d{9}$/',$mobile))
            return true;
        return false;
    }

    public function userinfo()
    {
        $rs = M('User')->where(array('id'=>$_SESSION['userinfo']['id']))->find();
        echo json_encode($rs);
    }

    public function postpw()
    {
        $pw1 = $_POST['pw1'];
        $pw2 = $_POST['pw2'];
        $id = $_SESSION['userinfo']['id'];
        $userinfo = M('User')->where(array('id'=>$id))->find();
        $ypw = md5(md5($pw1).$userinfo['create_time']);
        if ($ypw != $userinfo['password']){
            $arr = array('status'=>0,'msg'=>'原密码不正确');
            echo json_encode($arr);die();
        }
        $new_pw = md5(md5($pw2).$userinfo['create_time']);

        M('user')->where(array('id'=>$id))->save(array('password'=>$new_pw));
        $arr = array('status'=>1,'msg'=>'成功');
        echo json_encode($arr);

    }


    //实时通讯
    public function search_friends()
    {
        $where['name|phone'] = array('like', '%'.$_GET['name'].'%');
        $where['id'] = array('neq',$_SESSION['userinfo']['id']);
        $rs = M('User')->where($where)->select();
        foreach ($rs as $key => $value) {
            $friends_id = $value['id'];
            $my_id = $_SESSION['userinfo']['id'];
            $ex = M('Friend')->where("(user_id=$friends_id and friend_id=$my_id) or (user_id=$my_id and friend_id=$friends_id)")->find();
            if($ex){
                unset($rs[$key]);
            }
        }
        $rs = array_values($rs);
        echo json_encode($rs);
    }

    public function search_friends_qunzu()
    {
        $where['name|phone'] = array('like', '%'.$_GET['name'].'%');
        $where['id'] = array('neq',$_SESSION['userinfo']['id']);
        $rs = M('User')->where($where)->select();
        foreach ($rs as $key => $value) {
            $friends_id = $value['id'];
            $my_id = $_SESSION['userinfo']['id'];
            $ex = M('Friend')->where("(user_id=$friends_id and friend_id=$my_id) or (user_id=$my_id and friend_id=$friends_id)")->find();
            if(!$ex){
                unset($rs[$key]);
            }
        }
        $rs = array_values($rs);
        echo json_encode($rs);
    }

    /**
     * 申请好友
     * 王旭明
     * 2017.4.25
     */
    public function apply_friends(){
        // dump($_SESSION);die;
        $department = M('Department')
                      ->where(array('id'=>$_SESSION['userinfo']['department_id']))
                      ->field('d_name')
                      ->find();
        $id = $_GET['id'];
        $my_id = $_SESSION['userinfo']['id'];
        $exsit = M('ApplyFriends')->where("((from_id=$id and to_id=$my_id) or (from_id=$my_id and to_id=$id)) and status<>2")->find();
        if($exsit){
            $arr = array('status'=>-1,'msg'=>'您与该人员还有未完成的好友申请');
            echo json_encode($arr);
            exit();
        }
        $ask_c = $_GET['ask_c'] ? $_GET['ask_c'] : '您好！我是'.$department['d_name'].'的'.$_SESSION['userinfo']['name'];
        $data['from_id'] = $my_id;
        $data['to_id'] = $id;
        $data['status'] = 0;
        $data['content'] = $ask_c;
        $data['create_time'] = time();
        $result = M('ApplyFriends')->add($data);
        if($result){
            $arr = array('status'=>1,'msg'=>'申请成功');
            echo json_encode($arr);
            exit();
        }
    }
    /**
     * 好友同意
     * 王旭明
     * 2017.4.25
     */
    public function agree_apply(){
        // dump($_SESSION);die;
        $id = $_GET['id'];
        $info  = M('ApplyFriends')->where(array('id'=>$id))->find();
        $data['user_id'] = $info['from_id'];
        $data['friend_id'] = $info['to_id'];
        $result = M('Friend')->add($data);
        if($result){
            M('ApplyFriends')->where(array('id'=>$id))->save(array('status'=>1));
            echo json_encode($result);
        }
    }
    /**
     * 好友拒绝
     * 王旭明
     * 2017.4.25
     */
    public function unagree_apply(){
        $id = $_GET['id'];
        M('ApplyFriends')->where(array('id'=>$id))->save(array('status'=>2));
        echo json_encode($result);
    }
    /**
     * 删除好友
     * 王旭明
     * 2017.4.25
     */
    public function delete_friend(){
        $friends_id = $_GET['id'];
        $my_id = $_SESSION['userinfo']['id'];
        $ex = M('Friend')->where("(user_id=$friends_id and friend_id=$my_id) or (user_id=$my_id and friend_id=$friends_id)")->delete();
        $result = M('ApplyFriends')->where("(from_id=$friends_id and to_id=$my_id) or (from_id=$my_id and to_id=$friends_id)")->delete();
        if($ex){
            echo json_encode($result);  
        }
    }
}