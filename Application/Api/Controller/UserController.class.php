<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/3/16
 * Time: 13:25
 */

namespace Api\Controller;
use Client\Controller\MapiBaseController;
class UserController extends MapiBaseController
{
	/**
	 * 登录
	 * 王旭明
	 * 2017-3-16
	 */
    public function login()
    {
    	$data = $this->data;
        $message = "登陆成功";
        if ($data['phone']==""){
            $message = "用户名不能为空";
            $this->ApiReturn(100001,$message);
        }
        if ($data['password']==""){
            $message = "密码不能为空";
            $this->ApiReturn(100002,$message);
        }     
        $userinfo = M('User')->alias('a')
                    ->join('nk_department b ON a.department_id=b.id')
                    ->where(array('name'=>$data['phone'],'is_delete'=>-1))
                    ->field('a.id as user_id,a.name as user_name,a.password,a.phone as user_phone,a.position,a.create_time,b.d_name as department_name')
                    ->find();
        // echo M('User')->getLastSql();
        if (!$userinfo){
            $message = "用户不存在";
            $this->ApiReturn(100003,$message);
        }
        $pwd = md5(md5($data['password']).$userinfo['create_time']);
        // $pwd = $data['password'];       //TODO::暂时不加密 因为没有注册
        if ($pwd != $userinfo['password']){
            $message = "密码不正确";
            $this->ApiReturn(100004,$message);
        }
        unset($userinfo['password']);
        unset($userinfo['create_time']);
        if($userinfo['position'] == 1){
        	unset($userinfo['position']);
        	$userinfo['position'] = '部长'; 
        }else{
            unset($userinfo['position']);
        	$userinfo['position'] = '员工';    	
        }
        $userinfo['token'] = $this->get_token($userinfo['user_phone'],$data['password'],$userinfo['user_id']);
        $user['userinfo'] = $userinfo;
        $chang_time = M('User')->where(array('id'=>$userinfo['user_id']))->save(array('last_login'=>time()));
        $message = "登录成功";
        if(empty($user['userinfo'])){
        	$code = 0;
        }else{
        	$code = 1;
        }
        $this->ApiReturn($code,$message,$user['userinfo']);
    }
    /**
	 * 注册
	 * 王旭明
	 * 2017-3-16
	 */
    public function reg(){
    	$data = $this->data;
        $data['create_time'] = time();
        $data['status'] = 1;
        if($data['name']==""||$data['password']==""||$data['password2']==""||$data['phone']==""||$data['email']==""||$data['department_id']==""||$data['position']=="")
        {
        	$message = "信息不全,请完善";
            $this->ApiReturn(100001,$message);
        }
        if($data['password']!=$data['password2']){
            $message = "两次密码不一致";
            $this->ApiReturn(100002,$message);  	
        }
        if(strlen($data['password'])<6){
            $message = "密码不能小于6位";
            $this->ApiReturn(100003,$message);  	
        }
        if($this->check_mobile($data['phone']) == false){
            $message = "手机格式不正确";
            $this->ApiReturn(100004,$message);  	
        }
        if($this->check_email($data['email']) == false){
            $message = "邮箱格式不正确";
            $this->ApiReturn(100005,$message);  	
        }
        $phone_exsit = M('User')->where(array('phone'=>$data['phone']))->find();
        if($phone_exsit){
        	$message = "手机号已存在";
            $this->ApiReturn(100006,$message);
        }
        $email_exsit = M('User')->where(array('email'=>$data['email']))->find();
        if($email_exsit){
        	$message = "邮箱已存在";
            $this->ApiReturn(100007,$message);
        }
        try{
            $data['password'] = md5(md5($data['password']).time());
            unset($data['password2']);
            $row = M('User')->add($data);
            $message = "注册成功";
            $this->ApiReturn(1,$message);
        }catch(Exception $e){
            $message = "注册失败,请稍后再试";
            $this->ApiReturn(100008,$message);
        }
    }
    public function tuichu(){
        session_unset();
        session_destroy();
    }
     /**
	 * 部门列表和职位
	 * 王旭明
	 * 2017-3-17
	 */   
	// public function get_department(){
		
	// 	$department = M('Department')->where(array('level'=>1))->field('id as department,d_name as department_name,level as department_level')->select();
	// 	if(empty($department)){
	// 		$department = [];	
	// 	}
	// 	foreach ($department as $key => $value) {
	// 		$department[$key]['seconed'] = [];
	// 		$department[$key]['seconed'] = M('Department')->where(array('parent_id'=>$value['id']))->field('id as department,d_name as department_name,level as department_level')->select();
	// 	    if(empty($department[$key]['seconed'])){
	// 		   $department[$key]['seconed'] = [];
	// 	    }
 //            foreach ($department[$key]['seconed'] as $key1 => $value1) {
 //            	$department[$key]['seconed'][$key1]['third'] = M('Department')->where(array('parent_id'=>$value1['id']))->field('id as department,d_name as department_name,level as department_level')->select();
 //            	if(empty($department[$key]['seconed'][$key1]['third'])){
	// 		        $department[$key]['seconed'][$key1]['third'] = [];
	// 	        }
 //            }
	// 	}
	// 	$position = array(array('id'=>'1','name'=>'部长'),array('id'=>'2','name'=>'员工'));
	// 	$message = "获取成功";
	// 	$department = array('department'=>$department,'position'=>$position);
	// 	if(empty($department)){
	// 		$code = 0;
	// 	}else{
	// 		$code = 1;
	// 	}
	// 	$this->ApiReturn($code,$message,$department);
	// }
    /**
     * 版本检测
     * 王旭明
     * 2017-4-21
     */      
    public function version(){
        $return_data = M('Version')->order('id desc')->find();
        $message = "获取成功";
        $this->ApiReturn(1,$message,$return_data); 
    }
}