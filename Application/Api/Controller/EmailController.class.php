<?php
namespace Api\Controller;
use Client\Controller\UserApiBaseController;
class EmailController extends UserApiBaseController {
     /**
	 * 收件箱列表
	 * 王旭明
	 * 2017-3-18
	 */   
	public function email_list(){
		$data = $this->data;
		$id = S($data['token']);
		$page = $data['page'] ? $data['page']-1 : 0;
		$email_list = M('Email')->alias('a')
		              ->join('nk_send_email_to b on a.id=b.email_id')
		              ->where(array('b.is_delete'=>-1,'b.send_to'=>$id))
		              ->field('a.*,b.read')
		              ->order('a.send_time desc')
		              ->limit($page*10,10)
		              ->select();
		$email_array = array();
		foreach ($email_list as $key => $value) {
			$username = M('User')->where(array('id'=>$value['send_from']))->field('name')->find();
	    	$row = array('email_id'=>$value['id'],'email_title'=>$value['title'],'username'=>$username['name'],'time'=>date("Y-m-d",$value['send_time']),'is_read'=>$value['read'],'send_id'=>$id);
	    	array_push($email_array,$row);
		}
		$message = "获取成功";
		if(empty($email_array)){
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$email_array);
	}
	 /**
	 * 发件箱列表
	 * 王旭明
	 * 2017-3-18
	 */   
	public function send_email_list(){
		$data = $this->data;
		$id = S($data['token']);
		// $id = 52;
		$page = $data['page'] ? $data['page']-1 : 0;
		$email_list = M('Email')->alias('a')
		              ->join('nk_send_email_to b on a.id=b.email_id')
		              ->where(array('a.is_delete'=>-1,'a.send_from'=>$id))
		              ->field('a.*,b.send_to')
		              ->order('a.send_time desc')
		              ->group('b.email_id')
		              ->limit($page*10,10)
		              ->select();
		$email_array = array();
		foreach ($email_list as $key => $value) {
			$get_user_list = M('Send_email_to')->alias('a')->join('nk_user b on a.send_to=b.id')->where(array('a.email_id'=>$value['id']))->field('b.name')->select();
			$username = '';
			foreach ($get_user_list as $key1 => $value1) {
				$username = $username.','.$value1['name'];
			}
			$username = substr($username,1);
	    	$row = array('email_id'=>$value['id'],'email_title'=>$value['title'],'username'=>$username,
	    	        'time'=>date("Y-m-d",$value['send_time']),'send_id'=>$value['send_to']);
	    	array_push($email_array,$row);
		}
		$message = "获取成功";
		if(empty($email_array)){
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$email_array);
	}
	/**
	 * 删除邮件(type 1 收件箱  2发件箱)
	 * 王旭明
	 * 2017-3-18
	 */   
	public function delete_email(){
		$data = $this->data;
		$id = S($data['token']);
		$email_id = $data['email_id'] ? $data['email_id'] : $this->ApiReturn(20001,'缺少邮件id');
		$type = $data['type'] ? $data['type'] : $this->ApiReturn(20001,'缺少信箱类型');
		if($type == 1){
			try{
		        $row = M('Send_email_to')->where(array('email_id'=>array('in',$email_id),'send_to'=>$id))->save(array('is_delete'=>1));
			}catch(\Exception $e){
	            $message = "服务器忙,请稍后再试";
	            $this->ApiReturn(10008,$message);
			}
		}elseif($type == 2){
           	try{
		        $row = M('Email')->where(array('id'=>array('in',$email_id),'send_from'=>$id))->save(array('is_delete'=>1));
			}catch(\Exception $e){
	            $message = "服务器忙,请稍后再试";
	            $this->ApiReturn(10008,$message);
			}
		}
		$message = "删除成功";
		$this->ApiReturn(1,$message);
	}
	/**
	 * 邮件详情(读邮件)	1收件箱 2发件箱
	 * 王旭明
	 * 2017-3-18
	 */   
	public function email_detail(){
		$data = $this->data;
		$id = S($data['token']);
		$email_id = $data['email_id'] ? $data['email_id'] : $this->ApiReturn(20001,'缺少邮件id');
		$type = $data['type'] ? $data['type'] : $this->ApiReturn(20001,'缺少信箱类型');
		if($type == 1){
			$email_detail = M('Email')->alias('a')
			                ->join('nk_user b on a.send_from=b.id')
			                ->join('nk_send_email_to c on a.id=c.email_id')
			                ->where(array('a.id'=>$email_id,'c.send_to'=>$id,'c.is_delete'=>-1))
			                ->field('a.id as email_id,a.send_from as send_id,a.title as email_title,a.content as email_content,a.send_time,a.picture_id,a.email_type,b.name')
			                ->find();		
		}elseif($type == 2){
			$email_detail = M('Email')->alias('a')
			                ->join('nk_send_email_to c on a.id=c.email_id')
			                ->where(array('a.id'=>$email_id))
			                ->field('a.id as email_id,a.send_from as send_id,a.title as email_title,a.content as email_content,a.send_time,a.picture_id,a.email_type')
			                ->find();
			$get_user_list = M('Send_email_to')->alias('a')->join('nk_user b on a.send_to=b.id')->where(array('a.email_id'=>$email_id))->field('b.name')->select();
			$username = '';
			foreach ($get_user_list as $key1 => $value1) {
				$username = $username.','.$value1['name'];
			}
			$username = substr($username,1);	
			$email_detail['name'] = $username;
		}
		// echo M('Email')->getLastSql();
		if(empty($email_detail)){
			$message = "邮件不存在";
		    $this->ApiReturn(10005,$message);
		}
		if(empty($email_detail['email_content'])){
			$email_detail['email_content'] = '';
		}
		if(empty($email_detail['picture_id'])){
			$email_detail['picture_id'] = '';
		}
		$chang_read = M('Send_email_to')->where(array('email_id'=>$email_id,'send_to'=>$id))->save(array('read'=>1));
		$email_detail['time'] = date("Y-m-d H:i:s",$email_detail['send_time']);
        unset($email_detail['send_time']);
	    $pic_list = M('Picture')->where(array('id'=>array('in',$email_detail['picture_id'])))->select();
	    foreach ($pic_list as $key => $value) {
	    	$hou = explode('.',$value['picture_name']);
	    	$hou = $hou[1];
	    	if(in_array($hou,array('jpg', 'gif', 'png', 'jpeg'))){
                $type = 'pic';
	    	}else{
                $type = 'file';
	    	}
	    	$pic_list[$key]['type'] = $type;
	    }
	    if(empty($pic_list)){
	    	$pic_list = array();
	    }
        $return_data = array('email_detail'=>$email_detail,'pic_list'=>$pic_list);
		$message = "获取成功";
		$this->ApiReturn(1,$message,$return_data);
	}
    /**
	 * 发邮件( 1发邮件 2回复邮件 )
	 * 王旭明
	 * 2017-3-18
	 */  
	public function send_emails(){
		$data = $this->data;
		$email['send_from'] = S($data['token']);
		$email['title'] = $data['title'] ? $data['title'] : $this->ApiReturn(20001,'缺少发信标题');
		$send_to = $data['send_to'] ? $data['send_to'] : $this->ApiReturn(20001,'缺少接收人');
		$email['email_type'] = $data['email_type'] ? $data['email_type'] : $this->ApiReturn(20001,'缺少邮件类型');
		if(empty($data['content'])&&empty($data['picture_id'])){
			$message = "邮件不能为空";
		    $this->ApiReturn(10001,$message);	
		}
		$email['content'] = $data['content'];
		$email['picture_id'] = $data['picture_id'];
		$email['send_time'] = time();
		$email['is_delete'] = -1;
		try{
		    $send_emails = M('Email')->add($email);
	        $send_array = explode(',',$send_to);
	        try{
	  	        foreach ($send_array as $key => $value) {
	        	    $add_send_email_to = M('Send_email_to')->add(array('email_id'=>$send_emails,'send_to'=>$value));
		        }	      	
	        }catch(\Exception $e){
               $this->ApiReturn(10001, '系统错误');
		    }
		}catch(\Exception $e){
            $this->ApiReturn(10001, '系统错误');
		}
  		$message = "发送成功";
		$this->ApiReturn(1,$message);      

	}
    /**
	 * 回复邮件页面
	 * 王旭明
	 * 2017-3-23
	 */  
	public function replay_emails(){
		$data = $this->data;
		$id = S($data['token']);
		$email_id = $data['email_id'] ? $data['email_id'] : $this->ApiReturn(20001,'缺少邮件id');
		$email_detail = M('Email')->alias('a')->join('nk_user b on a.send_from=b.id')->join('nk_send_email_to c on a.id=c.email_id')->where(array('a.id'=>$email_id,'c.send_to'=>$id))->field('a.title,b.id,b.name')->find();
		if(empty($email_detail)){
			$message = "邮件不存在";
	        $this->ApiReturn(10008,$message);
		}
		$return_data = array('replay_user_id'=>$email_detail['id'],'replay_name'=>$email_detail['name'],'replay_title'=>$email_detail['title']);
	    $message = "获取成功";
		$this->ApiReturn(1,$message,$return_data);   
	}
    /**
	 * 通讯录
	 * 王旭明
	 * 2017-3-20
	 */  	
	// public function friends(){
	//     $data = $this->data;
	// 	$id = S($data['token']);
	// 	// echo $id;
	// 	// $id = 52;
 //        $rs = M('Friend')->where(array('user_id|friend_id'=>$id))->select();
 //        $friend_arr = array();
 //        $department_arr = array();
 //        if ($rs){
 //            foreach ($rs as $item){
 //                if ($item['user_id'] == $id){
 //                    $friend_arr[] = $item['friend_id'];
 //                }elseif ($item['friend_id'] == $id){
 //                    $friend_arr[] = $item['user_id'];
 //                }
 //            }
 //            if ($friend_arr)foreach ($friend_arr as $k=>$item){
 //                $user = M('user')->where(array('id'=>$item))->field('id as user_id, name as friend_name, department_id')->find();
 //                foreach ($department_arr as $key=>$dep){
 //                    $a=0;
 //                    if ($dep['department_id'] == $user['department_id'])
 //                    {
 //                        $a = 1;
 //                        $user['friends_id'] = "";
 //                        $department_arr[$key]['friends_list'][] = $user;
 //                        break;
 //                    }
 //                }
 //                if ($a==0){
 //                    $department_arr[$k]['department_id'] = $user['department_id'];
 //                    $user['friends_id'] = "";
 //                    $department_info = M('Department')->where(array('id'=>$user['department_id']))->find();
 //                    $department_arr[$k]['department_name'] = $department_info['d_name'];
 //                    $department_arr[$k]['friends_list'][] = $user;
 //                }
 //            }
 //        }
 //        // print_r($department_arr);
 //        // return;
 //        // echo json_encode($department_arr);
 //        // return;
 //        $message = "获取成功";
 //        if(empty($department_arr)){
 //        	$code = 0;
 //        }else{
 //        	$department_arr = array_values($department_arr);
 //        	$code = 1;
 //        }
	// 	$this->ApiReturn($code,$message,$department_arr);  
	// }
    /**
	 * 通讯录分类
	 * 王旭明
	 * 2017-4-13
	 */  
	public function friends_category(){
	    $data = $this->data;
		$id = S($data['token']);

        $return_data = array();
        array_push($return_data,array('id'=>'-1', 'name'=>'创文办'));

        $user = M('User')->where(array('nk_user.id'=>$id))->join('LEFT JOIN nk_department ON nk_department.id=nk_user.department_id')->find();
        if ($user['department_id'] == 1 || $user['department_category_id'] == 4 || $user['department_id'] == 7){
            array_push($return_data,array('id'=>'5','name'=>'区级领导'));
        }

		$category_list = M('DepartmentCategory')->select();
		foreach ($category_list as $key => $value) {
			$row = array('id'=>$value['id'],'name'=>$value['category_name']);
			array_push($return_data,$row);
		}
        $message = "获取成功";
        if(empty($return_data)){
        	$code = 0;
        }else{
        	$code = 1;
        }
		$this->ApiReturn($code,$message,$return_data);  
    }
    /**
	 * 通讯录
	 * 王旭明
	 * 2017-4-13
	 */  
 	public function friends(){
	    $data = $this->data;
		$id = S($data['token']);
        $category_id = $data['category_id'] ? $data['category_id'] : $this->ApiReturn(20001,'缺少分类id');
        $search = $data['keyword'];
        $where['nk_department.department_category_id']=$category_id;
        if($search){
        	$where['nk_department.d_name'] = array('like','%'.$search.'%');
        	$wherename['nk_user.name'] = array('like','%'.$search.'%');
        }
        $friends_list = M('Department')->where($where)->field('id,d_name')->select();
        $return_data=array();
        foreach ($friends_list as $key => $value) {
        	$friends = array();
        	$wherename['nk_user.department_id']=$value['id'];
        	$list = M('User')->where($wherename)->field('id,name')->select();
        	foreach ($list as $key1 => $value1) {
        		$row = array('user_id'=>$value1['id'],'friend_name'=>$value1['name']);
                if($id != $row['user_id']){
                    array_push($friends,$row);
                }
        	}
            $rows = array('department_id'=>$value['id'],'department_name'=>$value['d_name'],'friends_list'=>$friends);
            array_push($return_data,$rows);
        }
        $message = "获取成功";
        if(empty($friends_list)){
        	$code = 0;
        }else{
        	$code = 1;
        }
		$this->ApiReturn($code,$message,$return_data);  
    }   
}