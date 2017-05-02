<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/3/16
 * Time: 13:44
 */

namespace Home\Controller;


use Think\Controller;

class AuthController extends Controller
{
    /**
     * 登陆
     * 孙璠
     * 2017.3.16
     */
    public function login() {
        $this->display();
    }

    public function postLogin()
    {
//      $data['phone'] = $_POST['name'];
        $data['name'] = $_POST['name'];
        $data['password'] = $_POST['password'];
        if ($data['name']=="" || $data['password']=="" || $_POST['code']==""){
            echo 1;die(); //用户名不能为空
        }

        $verify = new \Think\Verify();
        if (!$verify->check($_POST['code'])){
            echo 5;die();   //验证码不正确
        }

        $userinfo = M('User')->where(array('name'=>$data['name'], 'is_delete'=>'-1'))->find();
        if (!$userinfo){
            echo 2;die();   //用户不存在
        }
        $pwd = md5(md5($data['password']).$userinfo['create_time']);
//        $pwd = $data['password'];       //TODO::暂时不加密 因为没有注册
        if ($pwd != $userinfo['password']){
            echo 3;die();      //密码不正确
        }
        $_SESSION['userinfo'] = $userinfo;
        M('user')->where(array('id'=>$userinfo['id']))->save(array('last_login'=>time()));
        echo 4;die();      //登陆成功
    }

    //生成验证码
    public function verifyImg()
    {
        $config =    array(
            'fontSize'    =>    23,    // 验证码字体大小
            'length'      =>    4,     // 验证码位数
            'useNoise'    =>    false, // 关闭验证码杂点
        );
        $Verify = new \Think\Verify($config);
        $Verify->entry();
    }

    //验证验证码
    public function check_verify(){
        $verify = new \Think\Verify();
        if ($verify->check($_REQUEST['code'])){
            echo 1;die();
        }else{
            echo 0;
        }
    }

}