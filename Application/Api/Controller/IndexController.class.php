<?php
namespace Api\Controller;
use Client\Controller\UserApiBaseController;
class IndexController extends UserApiBaseController {
	/**
	 * 首页
	 * 王旭明
	 * 2017-3-16
	 */
	public function index(){
		$data = $this->data;
		$id = S($data['token']);
		// $id = 54;
		$head_info = M('User')->alias('a')
		             ->join('nk_department b ON a.department_id=b.id','LEFT')
		             ->where(array('a.id'=>$id))
		             ->field('a.id as user_id,a.name as user_name,a.phone as user_phone,a.position,b.d_name as department_name')
		             ->find();
		// echo M('User')->getLastSql();
		// return;
		unset($head_info['password']);
        if($head_info['position'] == 1){
        	unset($head_info['position']);
        	$head_info['user_position'] = '部长'; 
        }else{
            unset($head_info['position']);
        	$head_info['user_position'] = '员工';    	
        }
        $department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $department_id = $department_id['department_id'];
        // echo $department_id;
		//待读邮件
		$unread_email = M('SendEmailTo')->where(array('send_to'=>$id,'read'=>'-1','is_delete'=>'-1'))->count();
		$head_info['unread_email_count'] = $unread_email;
		//待阅公文
		$unread_document = M('SendDocumentTo')->where(array('to_id'=>$department_id, 'read'=>'-1'))->group('document_id')->select();
		$head_info['unread_document_count'] = count($unread_document);
		//待办事项
		$wait_do = M('Office')->where(array('to_id'=>$id,'achieve'=>'-1'))->count();
		$head_info['wait_do_count'] = $wait_do;
		// echo M('User')->getLastSql();
		// 催办事项
		// $reminders = M('Reminder')->alias('a')->join('nk_department ON a.sup_id = nk_department.id')->where(array('a.exe_id'=>$id))->limit(3)->select();
		// $reminders_array = [];
		// foreach ($reminders as $key => $value) {
		// 	$row = array('reminder_id'=>$value['id'],'reminder_title'=>$value['r_title'],'reminder_content'=>$value['r_content'],'start_time'=>date('Y-m-d H:i:s',$value['send_time']),'end_time'=>date('Y-m-d H:i:s',$value['finish_time']),'department_name'=>$value['d_name']);
		// 	array_push($reminders_array, $row);
		// }

        $reminder = array();
        $reminderinfo = M('SendDocumentTo')
                        ->join('LEFT JOIN nk_document ON nk_document.id=nk_send_document_to.document_id ')
                        ->join('LEFT JOIN nk_department ON nk_department.id=nk_document.from_id ')
                        ->where(array('to_id'=>$department_id))
                        ->group('nk_send_document_to.document_id')
                        ->order('nk_document.send_time desc')
                        ->field('nk_document.id as document_id, nk_document.title as reminder_title,nk_department.d_name')
                        ->select();
        // echo M('SendDocumentTo')->getLastSql();
        // print_r($reminderinfo);
        // return;
        $reminder_count = 0;
        foreach ($reminderinfo as $i => $value) {
            //是否催办事项
            if($reminder_count<5){
	            $cui = M('Reminder')->where(array('document_id'=>$value['document_id']))->find();
	            if ($cui){
	            	$reminder_count=$reminder_count+1;
	            	$row_c = array('document_id'=>$cui['document_id'],'reminder_title'=>$value['reminder_title'],'d_name'=>$value['d_name'],'start_time'=>date("Y-m-d H:i:s",$cui['send_time']),'reminder_content'=>$cui['r_content']);
	                array_push($reminder,$row_c);
	            }
            }else{
            	break;
            }
        }
        // for($i=0;$i<count($reminderinfo);$i++){
        //     //是否催办事项
        //     $cui = M('Reminder')->where(array('document_id'=>$reminderinfo[$i]['document_id']))->find();
        //     if ($cui){
        //         $reminder[$i]['document_id'] = $cui['document_id'];
        //         $reminder[$i]['reminder_title'] = $reminderinfo[$i]['reminder_title'];
        //         $reminder[$i]['d_name'] = $reminderinfo[$i]['d_name'];
        //         $reminder[$i]['document_id'] = $cui['document_id'];
        //         $reminder[$i]['start_time'] = date("Y-m-d H:i:s",$cui['send_time']);
        //         $reminder[$i]['reminder_content'] = $cui['r_content'];
        //     }
        // }

		$news = M('News')
	            ->order('create_time desc')
	            ->select();
		$news_array = array();
		$j = 0;
		foreach ($news as $key => $value) {
			if($j==5){
            	break;
            }
			// echo $j;
            if($value['department_id'] == 0){
            	$j = $j+1;
            	// echo "0";
				$row = array('news_id'=>$value['id'],'news_title'=>$value['title'],'news_content'=>$value['content'],'time'=>date('Y-m-d H:i:s',$value['create_time']));

                $row['type_name'] = "公告";
                if ($value['type'] == 2)
                {
                    $row['type_name'] = "通知";
                }

				array_push($news_array, $row);
				continue;
            }
            $departmentIDs = explode(',', $value['department_id']);
            if ($departmentIDs)if (in_array($department_id, $departmentIDs)){
               	$j = $j+1;
				$row = array('news_id'=>$value['id'],'news_title'=>$value['title'],'news_content'=>$value['content'],'time'=>date('Y-m-d H:i:s',$value['create_time']));

                $row['type_name'] = "公告";
                if ($value['type'] == 2)
                {
                    $row['type_name'] = "通知";
                }

				array_push($news_array, $row);
            }
        }
        // echo $j;
        // return;
        if ($news_array){
            $news_array=array_values($news_array);
        }
		$periodical = M('Periodical')->order('id desc')->field('id as periodical_id,pic as periodical_pic,stage as periodical_stage')->find();
		if(empty($periodical)){
			$periodical = array();
		}
		$return_data = array('header_info'=>$head_info,'reminders'=>$reminder,'news'=>$news_array,'periodical'=>$periodical);
		$message = "获取成功";
		if(empty($return_data)){
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$return_data);
        // var_dump($head_info);
	}

    /**
     * 部门分类
     * 王旭明
     * 2017-4-13
     */  
    public function check_department(){
        $data = $this->data;
        $id = S($data['token']);
        // $id = 90
        // $id = 1688;
        $keyword = $data['keyword'];
        if($keyword){
            $where['nk_department.d_name'] = array('like','%'.$keyword.'%');
        }
        $department_level = M('User')->alias('a')
                    ->join('nk_department b on a.department_id=b.id')
                    ->where(array('a.id'=>$id))
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
        // echo M('Department')->getLastSql();
        // return;
        $message = "获取成功";
        if(empty($return_data)){
            $code = 0;
        }else{
            $code = 1;
        }
        $this->ApiReturn($code,$message,$return_data);  
    }

	/**
	 * 选择和搜索部门
	 * 王旭明
	 * 2017-3-20
	 */
	// public function check_department(){
	//     $data = $this->data;
	// 	$id = S($data['token']);
 //        $id = 1688;
 //        $category_id = $data['category_id'] ? $data['category_id'] : $this->ApiReturn(20001,'缺少分类id');
 //        $where['dp_category_task_id'] = $category_id;
	// 	$department_level = M('User')->alias('a')
	// 	                    ->join('nk_department b on a.department_id=b.id')
	// 	                    ->where(array('a.id'=>$id))
	// 	                    ->field('b.id,b.parent_id,b.level')
	// 	                    ->find();
	// 	$keyword = $data['keyword'];
 //        if($keyword){
 //            $where['d_name'] = array('like','%'.$keyword.'%');
 //        }
 //        if($department_level['level'] != 1){
 //            $pid = $department_level['id'];
 //            $where['parent_id'] = array('like',array("%,$pid","%,$pid,%","$pid,%","$pid"),'OR');
 //        }
 //        $department_list = M('Department')->where($where)->select();
 //        // echo M('Department')->getLastSql();
 //        $return_data = array();
 //        foreach ($department_list as $key => $value) {
 //            $row = array('department_id'=>$value['id'],'department_name'=>$value['d_name']);	
 //            array_push($return_data,$row);
 //        }
 //        // $position = array(array('id'=>'1','name'=>'部长'),array('id'=>'2','name'=>'员工'));
 //        // $list = array('department'=>$return_data,'position'=>$position);
 //        $message = "获取成功";
	// 	if(empty($return_data)){
	// 		$code = 0;
	// 	}else{
	// 		$code = 1;
	// 	}
	// 	$this->ApiReturn($code,$message,$return_data);
	// }
	/**
	 * 修改个人信息
	 * 王旭明
	 * 2017-4-05
	 */
    public function edit()
    {
        $data = $this->data;
		$id = S($data['token']);
		// $id = 1;    
		if(empty($data['tel'])&&empty($data['name'])){
			$this->ApiReturn(10005,'请输入要修改的内容');
		}
        if ($data['tel']){
            if($this->check_mobile($data['tel']) == false){
                $this->ApiReturn(10005,'手机格式不正确');
            }
            $where['id'] = array('neq',$id);
            $where['phone'] = $data['tel'];
            $phone_exsit = M('User')->where($where)->find();
            if($phone_exsit){
                $this->ApiReturn(10005,'手机号已存在');
            }
            $user['phone'] = $data['tel'];
        }
        if ($data['name']){
            $use['id'] = array('neq',$id);
            $use['name'] = $data['name'];
	        $name_exsit = M('User')->where($use)->find();
	        if($name_exsit){
	            $this->ApiReturn(10005,'用户名已存在');
	        }
	        $user['name'] = $data['name'];
        }
        $user_exsit = M('User')->where(array('id'=>$id))->find();
        if(!$user_exsit){
            $this->ApiReturn(10005,'用户不存在');
        }
		try{
           M('user')->where(array('id'=>$id))->save($user);
		}catch(\Exception $e){
        	$this->ApiReturn('10007','修改失败,请稍后再试');
        }
        $this->ApiReturn(0,'修改成功');

    }

 	/**
	 * 修改获取个人信息
	 * 王旭明
	 * 2017-4-05
	 */
    public function get_user_info()
    {
    	$data = $this->data;
    	$id = S($data['token']);
        $message = "获取成功";
        $userinfo = M('User')->alias('a')
                    ->join('nk_department b ON a.department_id=b.id')
                    ->where(array('a.id'=>$id,'is_delete'=>-1))
                    ->field('a.id as user_id,a.name as user_name,a.password,a.phone as user_phone,a.position,a.create_time,b.d_name as department_name')
                    ->find();
        // echo M('User')->getLastSql();
        // return;
        if (!$userinfo){
            $message = "用户不存在";
            $this->ApiReturn(100003,$message);
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
        $userinfo['token'] = $data['token'];
        $user['userinfo'] = $userinfo;
        if(empty($user['userinfo'])){
        	$code = 0;
        }else{
        	$code = 1;
        }
        $this->ApiReturn($code,$message,$user['userinfo']);

    }

    /**
     * 修改密码
     * 孙璠
     * 2017.4.14
     */
    public function postpw()
    {
        $data = $this->data;
        $pw1 = $data['pw'];
        $pw2 = $data['newpw'];
        $id = S($data['token']);
        $userinfo = M('User')->where(array('id'=>$id))->find();
        $ypw = md5(md5($pw1).$userinfo['create_time']);
        if ($ypw != $userinfo['password']){
            $this->ApiReturn(40001,'原密码不正确');
        }
        $new_pw = md5(md5($pw2).$userinfo['create_time']);

        M('user')->where(array('id'=>$id))->save(array('password'=>$new_pw));
        $this->ApiReturn(0,'成功');

    }
}