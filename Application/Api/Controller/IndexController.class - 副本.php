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
		$head_info = M('User')->alias('a')->join('nk_department b ON a.department_id=b.id','LEFT')->where(array('a.id'=>$id))->field('a.id as user_id,a.name as user_name,a.phone as user_phone,a.email as user_email,a.position,b.d_name as department_name')->find();
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
		//待读邮件
		$unread_email = M('Email')->where(array('send_to'=>$id,'read'=>'-1','is_delete'=>'-1'))->count();
		$head_info['unread_email_count'] = $unread_email['count'];
		//待阅公文
		$unread_document = M('Document')->where(array('to_id'=>$id,'read'=>'-1'))->count();
		$head_info['unread_document_count'] = $unread_document['count'];
		//待办事项
		$wait_do = M('Office')->where(array('to_id'=>$id,'achieve'=>'-1'))->count();
		$head_info['wait_do_count'] = $wait_do['count'];
		// echo M('User')->getLastSql();
		// 催办事项
		$reminders = M('Reminder')->alias('a')->join('nk_department ON a.sup_id = nk_department.id')->where(array('a.exe_id'=>$id))->select();
		$reminders_array = [];
		foreach ($reminders as $key => $value) {
			$row = array('reminder_id'=>$value['id'],'reminder_title'=>$value['r_title'],'reminder_content'=>$value['r_content'],'start_time'=>date('Y-m-d H:i:s',$value['send_time']),'end_time'=>date('Y-m-d H:i:s',$value['finish_time']),'department_name'=>$value['d_name']);
			array_push($reminders_array, $row);
		}
		$news = M('News')->alias('a')->join('nk_category ON a.category_id = nk_category.id')->select();
		$news_array = [];
		foreach ($news as $key => $value) {
			$row = array('news_id'=>$value['id'],'news_category_name'=>$value['category_name'],'news_title'=>$value['title'],'news_content'=>$value['content'],'time'=>date('Y-m-d H:i:s',$value['create_time']));
			array_push($news_array, $row);
		}
		$periodical = M('Periodical')->order('id desc')->field('id as periodical_id,pic as periodical_pic,stage as periodical_stage')->find();
		if(empty($periodical)){
			$periodical = [];
		}
		$return_data = array('header_info'=>$head_info,'reminders'=>$reminders_array,'news'=>$news_array,'periodical'=>$periodical);
		$message = "获取成功";
		if(empty($return_data)){
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$return_data);
        // var_dump($head_info);
	}
}