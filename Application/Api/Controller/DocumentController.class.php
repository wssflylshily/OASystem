<?php
namespace Api\Controller;
use Client\Controller\UserApiBaseController;
class DocumentController extends UserApiBaseController {
	/**
	 * 获取任务分类列表
	 * 王旭明
	 * 2017-3-21
	 */
	public function get_document_category(){
		// $data = $this->data;
		// $id = S($data['token']);
	    $document_category = M('Sudden_category')->select();
	    $message = "获取成功";
		if(empty($document_category)){
			$document_category = array();
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$document_category);
	}
	/**
	 * 任务列表管理(收文)
	 * 王旭明
	 * 2017-3-20
	 */
	public function get_document_list(){
		$data = $this->data;
		$id = S($data['token']);
		$page = $data['page'] ? $data['page']-1 : 0;
		$where['1']='1';
		if($data['is_finish']){
			$where['c.finish'] = $data['is_finish']; 
		}
		if($data['is_read']){
			$where['c.read'] = $data['is_read']; 
		}
		if($data['category_id']){
			$where['a.sudden_category_id'] = $data['category_id']; 
		}
        $department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $department_id = $department_id['department_id'];
		$document_list = M('Document')->alias('a')
		                 ->join('nk_department b on a.from_id=b.id')
		                 ->join('nk_send_document_to c on a.id=c.document_id')
		                 ->where(array('c.to_id'=>$department_id))
		                 ->where($where)
		                 ->field('a.id,a.title,a.send_time,b.d_name,c.read,c.finish')
		                 ->group('c.document_id')
		                 ->order('a.send_time desc')
		                 ->limit($page*10,10)
		                 ->select();
        $return_data = array();
        foreach ($document_list as $key => $value) {
        	$cui = M('Reminder')->where(array('document_id'=>$value['id'],'type'=>1))->find();
        	//1被催办  0不被催办
        	if($cui){
        		$quick = 1;
        	}else{
        		$quick = 0;
        	}
        	$row = array('document_id'=>$value['id'],'document_title'=>$value['title'],'send_time'=>date("Y-m-d",$value['send_time']),'send_from'=>$value['d_name'],'is_read'=>$value['read'],'is_finish'=>$value['finish'],'reminders'=>$quick);
        	array_push($return_data,$row);
        }
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
	 * 任务详情(收文)
	 * 王旭明
	 * 2017-3-21
	 */
	public function document_detail(){
		$data = $this->data;
		$id = S($data['token']);
		$document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
		$document_detail = M('Document')->alias('a')
		                   ->join('nk_department b on a.from_id=b.id')
		                   ->join('nk_send_document_to c on a.id=c.document_id')
		                   ->join('nk_sudden_category d on a.sudden_category_id=d.id')
		                   ->where(array('a.id'=>$document_id,'c.to_id'=>$department_id['department_id']))
		                   ->field('a.id,a.title as document_title,a.content as document_content,a.doc_sn as document_sn,a.main_content as document_main,a.send_time,a.finish_time,a.file,b.d_name as from_name,c.finish as is_finish,d.sudden_category_name as category_name')
		                   ->find();
		$department_name = M('Send_document_to')->where(array('document_id'=>$document_id))->select();
		$lead_name = '';
		$responsibility_name = '';
		if(empty($document_detail)){
			$this->ApiReturn('10003','任务不存在');
		}
		//组合牵头 和 责任 部门
		foreach ($department_name as $key => $value) {
			if($value['dtype'] == 1){
                $lead_name = $lead_name.','.$this->get_department_name($value['to_id']);
			}else{
                $responsibility_name = $responsibility_name.','.$this->get_department_name($value['to_id']);
			}
		}
		if($lead_name){
			$lead_name=substr($lead_name,1);
		}
		if($responsibility_name){
			$responsibility_name=substr($responsibility_name,1);
		}
		$cui = M('Reminder')->where(array('document_id'=>$document_detail['id'],'type'=>1))->find();
    	//1被催办  0不被催办
    	if($cui){
    		$document_detail['quick'] = 1;
    	}else{
    		$document_detail['quick'] = 0;
    	}
		$document_detail['lead_name'] = $lead_name;
		$document_detail['responsibility_name'] = $responsibility_name;
        $document_detail['date_send_time'] = date("Y-m-d H:i",$document_detail['send_time']);
        $document_detail['date_finish_time'] = date("Y-m-d H:i",$document_detail['finish_time']);
        $pic_list = array();
        //查询附件信息
        if(!empty($document_detail['file'])){
           $pic_list = M('Picture')->where(array('id'=>array('in',$document_detail['file'])))->select();
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
        }else{
        	$document_detail['file'] = '';
        }
        $rows = M('Send_document_to')
                ->where(array('document_id'=>$document_id,'to_id'=>$department_id['department_id']))
                ->save(array('read'=>1));
        unset($document_detail['send_time']);
        unset($document_detail['finish_time']);
        $return_data = array('document_detail'=>$document_detail,'pic_list'=>$pic_list);
        $message = "获取成功";
		$this->ApiReturn(1,$message,$return_data);
	}
	/**
	 * 任务列表(发文)
	 * 王旭明
	 * 2017-3-21
	 */
	public function send_document_list(){
		$data = $this->data;
		$id = S($data['token']);
		$page = $data['page'] ? $data['page']-1 : 0;
		$where['1']='1';
		if($data['is_finish']){
			$where['d_finish'] = $data['is_finish']; 
		}
		if($data['is_read']){
			$where['read'] = $data['is_read']; 
		}
		if($data['category_id']){
			$where['sudden_category_id'] = $data['category_id']; 
		}
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $department_id = $department_id['department_id'];
		$send_document_list = M('Document')->where(array('from_id'=>$department_id,'is_delete'=>-1))->where($where)->order('send_time desc')->limit($page*10,10)->select();
		$return_data = array();
		foreach ($send_document_list as $key => $value) {
		    $row = array('document_id'=>$value['id'],'document_sn'=>$value['doc_sn'],'document_title'=>$value['title'],'document_send_time'=>date("Y-m-d",$value['send_time']),'is_read'=>$value['read'],'is_finish'=>$value['d_finish']);
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
	 * 任务详情(发文)
	 * 王旭明
	 * 2017-3-21
	 */
	public function send_document_detail(){
		$data = $this->data;
		$id = S($data['token']);
		$document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
		$document_detail = M('Document')->alias('a')
		                   ->join('nk_department b on a.from_id=b.id')
		                   ->join('nk_sudden_category c on a.sudden_category_id=c.id')
		                   ->where(array('a.id'=>$document_id,'a.from_id'=>$department_id['department_id'],'is_delete'=>-1))
		                   ->field('a.id,a.title as document_title,a.content as document_content,a.doc_sn as document_sn,a.main_content as document_main,a.send_time,a.finish_time,a.d_finish as is_finish,a.file,b.d_name as from_name,c.sudden_category_name as category_name')
		                   ->find();
		if(empty($document_detail)){
			$this->ApiReturn('10003','任务不存在');
		}
		//组合牵头 和 责任 部门
		$department_name = M('Send_document_to')->where(array('document_id'=>$document_id))->select();
		// echo M('Send_document_to')->getLastSql();
		// return;
		$lead_name = '';
		$responsibility_name = '';
		foreach ($department_name as $key => $value) {
			if($value['dtype'] == 1){
                $lead_name = $lead_name.','.$this->get_department_name($value['to_id']);
			}else{
                $responsibility_name = $responsibility_name.','.$this->get_department_name($value['to_id']);
			}
		}
		if($lead_name){
			$lead_name=substr($lead_name,1);
		}
		if($responsibility_name){
			$responsibility_name=substr($responsibility_name,1);
		}
		$cui = M('Reminder')->where(array('document_id'=>$document_detail['id'],'type'=>1))->find();
    	//1被催办  0不被催办
    	if($cui){
    		$document_detail['quick'] = 1;
    	}else{
    		$document_detail['quick'] = 0;
    	}
		$document_detail['lead_name'] = $lead_name;
		$document_detail['responsibility_name'] = $responsibility_name;
        $document_detail['date_send_time'] = date("Y-m-d H:i",$document_detail['send_time']);
        $document_detail['date_finish_time'] = date("Y-m-d H:i",$document_detail['finish_time']);
        $pic_list = array();
        //查询附件信息
        if(!empty($document_detail['file'])){
           $pic_list = M('Picture')->where(array('id'=>array('in',$document_detail['file'])))->select();
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
        }else{
        	$document_detail['file'] = '';
        }
        unset($document_detail['send_time']);
        unset($document_detail['finish_time']);
        $return_data = array('document_detail'=>$document_detail,'pic_list'=>$pic_list);
        $message = "获取成功";
		$this->ApiReturn(1,$message,$return_data);
	}
	/**
	 * 发布任务
	 * 王旭明
	 * 2017-3-22
	 */	
	public function publish_task(){
		$data = $this->data;
		$id = S($data['token']);
		// echo substr('123456',0,-3);
		$task['title'] = $data['title'] ? $data['title'] : $this->ApiReturn('10001','缺少任务标题');
        $task['doc_sn'] = $data['sn'] ? $data['sn'] : $this->ApiReturn('10002','缺少任务编号');
        $task['sudden_category_id'] = $data['category'] ? $data['category'] : $this->ApiReturn('10003','缺少任务分类');
        $task['finish_time'] = $data['time'] ? substr($data['time'],0,-3) : $this->ApiReturn('10004','缺少任务完成时间');
        $task['send_time'] = time();
        $task['content'] = $data['content'];
        $task['main_content'] = $data['main_content'];
        $task['file'] = $data['file'];
        if(empty($data['lead_id'])&&empty($data['responsibility_id'])){
        	$this->ApiReturn('10005','牵头单位和责任单位不能同时为空');
        }
        if(empty($task['content'])&&empty($task['main_content'])&&empty($task['file'])){
        	$this->ApiReturn('10006','发送内容不能为空');
        }
        //查询部门id
        $department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $department_id = $department_id['department_id'];
        $task['from_id'] = $department_id;
        try{
        	$document_id = M('Document')->add($task);
        	$add_send['document_id'] = $document_id; 
        	if($data['lead_id']){
        		$add_send['dtype'] = 1;
        		$lead_array = explode(',',$data['lead_id']);
        		foreach ($lead_array as $key => $value) {
        			$add_send['to_id'] = $value;
        			try{
                       $add_send_document = M('Send_document_to')->add($add_send);
        			}catch(\Exception $e){
			        	$this->ApiReturn('10007','添加失败,请稍后再试');
			        }
        		}
        	}
        	if($data['responsibility_id']){
        		$add_send['dtype'] = 2;
        		$responsibility_array = explode(',',$data['responsibility_id']);
        		foreach ($responsibility_array as $key => $value) {
        			$add_send['to_id'] = $value;
        			try{
                        $add_send_document = M('Send_document_to')->add($add_send);
        			}catch(\Exception $e){
			        	$this->ApiReturn('10007','添加失败,请稍后再试');
			        }
        		}
        	}
        }catch(\Exception $e){
        	$this->ApiReturn('10007','添加失败,请稍后再试');
        }
        $message = "任务发送成功";
		$this->ApiReturn(1,$message);
	}
	/**
	 * 发布任务反馈
	 * 王旭明
	 * 2017-3-22
	 */	
	public function publish_task_feedback(){
		$data = $this->data;
		$id = S($data['token']);
		// print_r($data);
		// return;
		$feedback['document_id'] = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
        $feedback['r_content'] = $data['feedback_content'];
        $feedback['file_id'] = $data['feedback_file'];
        if(empty($feedback['r_content'])&&empty($feedback['file'])){
        	$this->ApiReturn('10005','缺少发送内容');
        }
        $feedback['send_time'] = time();
        $feedback['type'] = 2;
        $department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $feedback['sup_id'] = $department_id['department_id'];
        try{
        	$row = M('Reminder')->add($feedback);
        }catch(\Exception $e){
        	$this->ApiReturn('10007','反馈发送失败,请稍后再试');
        }
        $message = "反馈发送成功";
		$this->ApiReturn(1,$message);
	}
	/**
	 * 发布任务催办
	 * 王旭明
	 * 2017-3-22
	 */	
	public function publish_task_reminder(){
		$data = $this->data;
		$id = S($data['token']);
		// print_r($data);
		// return;
		$reminder['document_id'] = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
        $reminder['r_content'] = $data['reminder_content'] ? $data['reminder_content'] : $this->ApiReturn('10005','缺少催办内容');
        $reminder['send_time'] = time();
        $reminder['type'] = 1;
        $department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $reminder['sup_id'] = $department_id['department_id'];
        try{
        	$row = M('Reminder')->add($reminder);
        }catch(\Exception $e){
        	$this->ApiReturn('10007','催办发送失败,请稍后再试');
        }
        $message = "催办发送成功";
		$this->ApiReturn(1,$message);
	}
	/**
	 * 任务进度
	 * 王旭明
	 * 2017-3-22
	 */	
	public function task_progress(){
		$data = $this->data;
		$id = S($data['token']);
		$document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $progress = M('Document')->alias('a')
	                  ->join('nk_send_document_to b on a.id=b.document_id')
	                  ->join('nk_department c on b.to_id=c.id')
	                  ->where(array('a.id'=>$document_id))
	                  ->field('a.id,a.title,a.send_time,a.from_id,a.file,a.check_time,a.d_finish,b.finish,b.to_id,b.end_time,c.d_name')
	                  ->find();
        $send_name = M('Department')->where(array('id'=>$progress['from_id']))->field('d_name')->find();
        $send_name = $send_name['d_name'];
        // echo json_encode($progress);
        // return;
        if(empty($progress)){
			$this->ApiReturn('10003','任务不存在');
		}
	    $single_file = array();
    	if($progress['file']){
    		$s_file = explode(',',$progress['file']);
        	foreach ($s_file as $key => $value) {
        		$s_file_details = M('Picture')->where(array('id'=>$value))->find();
        		$s_file_row = array('file_name'=>$s_file_details['picture_name'],'file_url'=>$s_file_details['picture_url']);
        		array_push($file_list,$s_file_row);
        	}
    	}
        $progress_list = array();
        $row = array('time'=>date("Y-m-d H:i",$progress['send_time']),'department'=>$send_name,'content'=>$progress['title'],'file'=>$single_file,'quick'=>0);
        array_push($progress_list,$row);
        $progress_content = M('Reminder')->alias('a')
                           ->join('nk_department b on a.sup_id=b.id')
                           ->where(array('a.document_id'=>$document_id))
                           ->field('a.id,a.r_content,a.send_time,a.type,b.d_name,a.file_id')
                           ->order('send_time')
                           ->select();
        // echo M('Reminder')->getLastSql();
        foreach ($progress_content as $key => $value) {
        	//1 催办消息  
        	if($value['type']==1){
        		$quick=1;
        	}else{
        		$quick=0;
        	}
        	$file_list = array();
        	if($value['file_id']){
        		$file = explode(',',$value['file_id']);
	        	foreach ($file as $key1 => $value1) {
	        		$file_details = M('Picture')->where(array('id'=>$value1))->find();
	        		$file_row = array('file_name'=>$file_details['picture_name'],'file_url'=>$file_details['picture_url']);
	        		array_push($file_list,$file_row);
	        	}
        	}
        	$rows = array('time'=>date("Y-m-d H:i",$value['send_time']),'department'=>$value['d_name'],'content'=>$value['r_content'],'file'=>$file_list,'quick'=>$quick);
        	array_push($progress_list,$rows);
        }
        $finish = M('Document')->alias('a')
              ->join('nk_send_document_to b on a.id=b.document_id')
              ->join('nk_department c on b.to_id=c.id')
              ->where(array('a.id'=>$document_id))
              ->field('a.id,a.title,a.send_time,a.from_id,a.file,a.check_time,a.d_finish,b.finish,b.to_id,b.end_time,c.d_name')
              ->select();
        foreach ($finish as $key => $value) {
	        if($value['finish']==1){
	        	$f_department = M('Department')->where(array('id'=>$value['to_id']))->field('d_name')->find();
	        	$row_f = array('time'=>date("Y-m-d H:i",$value['end_time']),'department'=>$f_department['d_name'],'content'=>'已完成','file'=>array(),'quick'=>0);
	        	array_push($progress_list,$row_f);
	        }
        }
        if($progress['d_finish']==1){
        	$d_department = M('Department')->where(array('id'=>$progress['from_id']))->field('d_name')->find();
            $row_d = array('time'=>date("Y-m-d H:i",$progress['check_time']),'department'=>$d_department['d_name'],'content'=>'确认完成','file'=>array(),'quick'=>0);
            array_push($progress_list,$row_d);
        }
        $message = "获取成功";
		$this->ApiReturn(1,$message,$progress_list);
	}
	/**
	 * 完成任务（收件）
	 * 王旭明
	 * 2017-3-22
	 */	
	public function finish_task(){
		$data = $this->data;
		$id = S($data['token']);
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
		$document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
		try{
			$finish = M('SendDocumentTo')->where(array('document_id'=>$document_id, 'to_id'=>$department_id['department_id']))->save(array('finish'=>1,'end_time'=>time()));
		}catch(\Exception $e){
        	$this->ApiReturn('10007','修改失败');
        }            
        $message = "修改成功";
		$this->ApiReturn(0,$message);   
	}
	/**
	 * 确认完成任务（发件）
	 * 王旭明
	 * 2017-3-22
	 */	
	public function send_finish_task(){
		$data = $this->data;
		$id = S($data['token']);
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
		$document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
		try{
			$finish = M('Document')->where(array('id'=>$document_id,'from_id'=>$department_id['department_id']))
            ->save(array('d_finish'=>1,'check_time'=>time()));
		}catch(\Exception $e){
        	$this->ApiReturn('10007','修改失败');
        }            
        $message = "修改成功";
		$this->ApiReturn(0,$message);   
	}

	/**
     * 常规性任务
     * 王旭明
     * 2017.4.7
     */
	public function DocumentCommonList()
    {
        try{
            $data = $this->data;
            $id = S($data['token']);
            $page = $data['page'] ? $data['page']-1 : 0;
            $type = $data['type'] ? $data['type'] : $this->ApiReturn(10005,'缺少类型');
            $key2 = $data['key2'];
            $where = "`type`=$type";
            // $wheretype['_logic'] = 'AND';  
            if($data['keyword']){
            	$keyword = $data['keyword'];
            	// $search  = M('DocumentCommon')->where(array('headline'=>$value['headline']))->field('id')->select();
		        $department_list = M('Department')->where("d_name like '%$keyword%'")->select();
		            $document_arr = '';
		            foreach ($department_list as $key => $value) {
		                $document_id_list = M('SendDocumentToCommon')
		                                    ->alias('a')
		                                    ->join('nk_document_common b on a.document_id=b.id')
		                                    ->where(array('a.to_id'=>$value['id'],'b.type'=>$type))
		                                    ->group('document_id')
		                                    ->select();
		                foreach ($document_id_list as $key1 => $value1) {
		                    $document_arr = $document_arr.','.$value1['document_id'];
		                }
		            }
		            if(!empty($document_arr)){
		                $document_arr = substr($document_arr,1);
		            }
		            /*if($data['key2']!=''){
		                $key2 = $data['key2'];
		                if($key2 ==1){
		                   $where .= " and `headline` like '%$keyword%'";
		                }elseif($key2 ==2){
		                	$where .=" and (`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
		                }elseif($key2 ==3){
		                    $where .=" and (`headline` like '%$keyword%')or(`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
		                }elseif($key2 ==4){
		                	$where .=" and `id` in ($document_arr)";
		                    // $where['id'] = array('in',$document_arr);   
		                }
		            }else{
                        $where .=" and (`headline` like '%$keyword%')or(`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
		                if(!empty($document_arr)){
		                    $where .=" or `id` in ($document_arr)";   
		                }
		            }*/
                if($key2!=''){
                    $key2 = $_GET['key2'];
                    if($key2 ==1){
                        $where .= " and (`headline` like '%$keyword%'";
                    }elseif($key2 ==2){
                        $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                    }elseif($key2 ==3){
                        $where .=" and ((`headline` like '%$keyword%')or(`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                    }elseif($key2 ==4){
                        $where .=" and (`id` in ($document_arr))";
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
            }
            // $where['_logic'] = 'OR';
            // print_r($keywhere);
            // return;
            $document_common = M('DocumentCommon')->where($where)->group('headline')->limit($page*10,10)->select();
//             echo M('DocumentCommon')->getLastSql();
            // return;
            $return_data = array();
            foreach ($document_common as $key => $value) {
            	$doc_com  = M('DocumentCommon')->where(array('headline'=>$value['headline'],'type'=>$type))->field('id')->select();
            	$lead_name = "";
                $responsibility_name = "";
                $lead =array();
                $responsibility = array();
                foreach ($doc_com as $key1 => $value1) {
					    $qts = M('SendDocumentToCommon')
			                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
			                ->where(array('dtype'=>1, 'document_id'=>$value1['id']))
			                ->field('d_name,to_id,finish')
			                ->select();
			            if ($qts){
			                foreach ($qts as $qt){
			                    if($qt['d_name']!="" && !in_array($qt['d_name'],$lead)){
			                        $lead_name .= $qt['d_name'].";";
			                        array_push($lead,$qt['d_name']);
			                    }
			                }
			            }
			            //责任单位
			            $zrs = M('SendDocumentToCommon')
			                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
			                ->where(array('dtype'=>2, 'document_id'=>$value1['id']))
			                ->field('d_name,to_id,finish')
			                ->select();
			            if ($zrs){
			                foreach ($zrs as $zr){
			                    if($zr['d_name']!="" && !in_array($zr['d_name'],$responsibility)){
			                       $responsibility_name .= $zr['d_name'].";";
			                       array_push($responsibility,$zr['d_name']);
			                    }
			                }
			            }
                }
	            $row = array('title'=>$value['headline'],'lead_name'=>$lead_name,'responsibility_name'=>$responsibility_name);
                array_push($return_data,$row);

            }
            if(empty($return_data)){
            	$code = 0;
            }else{
            	$code = 1;
            }
            $this->ApiReturn($code, '获取成功', $return_data);
        }catch (\Exception $e){
            $this->ApiReturn(10002,'系统错误');
        }
    }
	/**
     * 常规性任务子页
     * 王旭明
     * 2017.4.7
     */
    public function DocumentOne(){
        $data = $this->data;
        $id = S($data['token']);
        $page = $data['page'] ? $data['page']-1 : 0;
        $title = $data['title'] ? $data['title'] : $this->ApiReturn('10005','缺少任务标题');
        $type = $data['type'] ? $data['type'] : $this->ApiReturn(10005,'缺少类型');
        $department = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $doc_com  = M('DocumentCommon')->where(array('headline'=>$title,'type'=>$type))->limit($page*10,10)->select();
        $return_data = array();
        foreach ($doc_com as $key => $value) {
        	$edit = 0;
        	$qts = M('SendDocumentToCommon')
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                ->where(array('dtype'=>1, 'document_id'=>$value['id']))
                ->field('d_name,to_id')
                ->select();
            $lead_name = "";
            if ($qts){
                foreach ($qts as $qt){
                    if($qt['d_name']!=""){
                        $lead_name .= $qt['d_name'].";";
                    }
                    if($qt['to_id']==$department['department_id']){
                        $edit = 1;
                    }
                }
            }
                        //责任单位
            $zrs = M('SendDocumentToCommon')
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                ->where(array('dtype'=>2, 'document_id'=>$value['id']))
                ->field('d_name,to_id')
                ->select();
            $responsibility_name = "";
            if ($zrs){
                foreach ($zrs as $zr){
                    if($zr['d_name']!=""){
                       $responsibility_name .= $zr['d_name'].";";
                    }
                    if($qt['to_id']==$department['department_id']){
                        $edit = 1;
                    }

                }
            }
            if($department['department_id'] == 1){
                  $finish_button = 1;
            }else{
            	  $finish_button = 0;
            }
            $row = array('document_id'=>$value['id'],'common_title'=>$value['title'],'lead_name'=>$lead_name,'responsibility_name'=>$responsibility_name,'edit'=>$edit,'finish'=>$value['d_finish'],'finish_button'=>$finish_button);
            array_push($return_data,$row);
        }
        if(empty($return_data)){
        	$code = 0;
        }else{
        	$code = 1;
        }
        $this->ApiReturn($code, '获取成功', $return_data);
    }
	/**
     * 常规性任务详情
     * 王旭明
     * 2017.4.7
     */
    public function DocumentOneDetail(){
        $data = $this->data;
        $id = S($data['token']);
        $document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
        $department = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $db = M('SendDocumentToCommon');
        $rs = M('DocumentCommon')
            ->where(array('id'=>$document_id))
            ->order('send_time DESC')
            ->field('id as did,d_finish,headline,title,index_name,test_content,evaluation_standard,check_time,send_time,type')
            ->find();
            // echo M('SendDocumentToCommon')->getLastSql();
        if($rs){
        	$rs['check_times']=date("Y-m-d",$rs['check_time']);
	        $rs['send_times']=date("Y-m-d",$rs['send_time']);
	        $rs['d_name'] = '创文办';
	        unset($rs['check_time']);
	        unset($rs['send_time']);
	        //牵头单位
	        $qts = $db
	            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
	            ->where(array('dtype'=>1, 'document_id'=>$rs['did']))
	            ->field('d_name,finish,to_id')
	            ->select();
	        $rs['lead_name'] = "";
	        $rs['edit'] = 0;
	        if ($qts){
	            foreach ($qts as $qt){
	                if($qt['d_name']!=''){
	                   $rs['lead_name'] .= $qt['d_name'].";";
	                }
	                if($qt['to_id']==$department['department_id']){
	                    $rs['edit'] = 1;
	                }
	                $rs['finish'] = $zr['finish'];
	            }
	        }


	        //责任单位
	        $zrs = $db
	            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
	            ->where(array('dtype'=>2, 'document_id'=>$rs['did']))
	            ->field('d_name,finish,to_id')
	            ->select();
	        $rs['responsibility_name'] = "";
	        if ($zrs){
	            foreach ($zrs as $zr){
	                if($zr['d_name']!=''){
	                    $rs['responsibility_name'] .= $zr['d_name'].";";
	                }
	                if($zr['to_id']==$department['department_id']){
	                    $rs['edit'] = 1;
	                }
	                $rs['finish'] = $zr['finish'];
	            }
	        }
	        if($department['department_id'] == 1){
	              $rs['finish_button'] = 1;
	        }else{
	        	  $rs['finish_button'] = 0;
	        }
	        if($rs['d_finish']==1){
	        	$rs['button_type'] = 1;//显示进度
	        }else{
	        	if($rs['finish']==1){
	        		if($rs['edit']==1&&$rs['finish_button'] == 0){
	        			$rs['button_type'] = 1; //显示进度
	        		}elseif($rs['finish_button'] == 1){
	        			$rs['button_type'] = 2;//显示进度  确认完成
	        		}else{
	        			$rs['button_type'] = 0;//什么都不显示
	        		}
	        	}else{
	        		if($rs['edit']==1&&$rs['finish_button'] == 0){
	        			$rs['button_type'] = 3;//完成  汇报  进度
	        		}elseif($rs['finish_button'] == 1){
	                    $rs['button_type'] = 2;//显示进度  确认完成
	        		}else{
	        			$rs['button_type'] = 0;//什么都不显示
	        		}
	        	}
	        }
        }else{
        	$this->ApiReturn(10005, '任务不存在');  
        }
        if(empty($rs)){
        	$code = 0;
        }else{
        	$code = 1;
        }
        $this->ApiReturn($code, '获取成功', $rs);     
    }
    /**
     * 常规性任务进度
     * 王旭明
     * 2017.4.07
     */
    public function jinducommon()
    {
		$data = $this->data;
		$id = S($data['token']);
		$document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $progress = M('DocumentCommon')->alias('a')
	                  ->join('nk_send_document_to_common b on a.id=b.document_id')
	                  ->join('nk_department c on b.to_id=c.id')
	                  ->where(array('a.id'=>$document_id))
	                  ->field('a.id,a.title,a.send_time,a.check_time,a.d_finish,b.finish,b.to_id,b.end_time,c.d_name')
	                  ->find();
        // echo json_encode($progress);
        // return;
        if(empty($progress)){
			$this->ApiReturn('10003','任务不存在');
		}
		$single_file = array();
    	if($progress['file']){
    		$s_file = explode(',',$progress['file']);
        	foreach ($s_file as $key => $value) {
        		$s_file_details = M('Picture')->where(array('id'=>$value))->find();
        		$s_file_row = array('file_name'=>$s_file_details['picture_name'],'file_url'=>$s_file_details['picture_url']);
        		array_push($file_list,$s_file_row);
        	}
    	}
        $progress_list = array();
        $row = array('time'=>date("Y-m-d H:i",$progress['send_time']),'department'=>'创文办','content'=>$progress['title'],'file'=>$single_file);
        array_push($progress_list,$row);
        $progress_content = M('ReminderCommon')->alias('a')
                           ->join('nk_department b on a.sup_id=b.id')
                           ->where(array('a.document_id'=>$document_id))
                           ->field('a.id,a.r_content,a.send_time,a.type,b.d_name,a.file_id')
                           ->order('send_time')
                           ->select();
        // echo M('Reminder')->getLastSql();
        foreach ($progress_content as $key => $value) {
        	$file_list = array();
        	if($value['file_id']){
        		$file = explode(',',$value['file_id']);
	        	foreach ($file as $key1 => $value1) {
	        		$file_details = M('Picture')->where(array('id'=>$value1))->find();
	        		$file_row = array('file_name'=>$file_details['picture_name'],'file_url'=>$file_details['picture_url']);
	        		array_push($file_list,$file_row);
	        	}
        	}
        	$rows = array('time'=>date("Y-m-d H:i",$value['send_time']),'department'=>$value['d_name'],'content'=>$value['r_content'],'file'=>$file_list);
        	array_push($progress_list,$rows);
        }
        if($progress['finish']==1){
        	$f_department = M('Department')->where(array('id'=>$progress['to_id']))->field('d_name')->find();
        	$row_f = array('time'=>date("Y-m-d H:i",$progress['end_time']),'department'=>$f_department['d_name'],'content'=>'已完成','file'=>array());
        	array_push($progress_list,$row_f);
        }
        if($progress['d_finish']==1){
        	$d_department = M('Department')->where(array('id'=>$progress['from_id']))->field('d_name')->find();
            $row_d = array('time'=>date("Y-m-d H:i",$progress['check_time']),'department'=>'创文办','content'=>'确认完成','file'=>array());
            array_push($progress_list,$row_d);
        }
        $message = "获取成功";
		$this->ApiReturn(1,$message,$progress_list);
    }
	/**
	 * 常规性任务确认完成任务
	 * 王旭明
	 * 2017-3-22
	 */	
	public function finish_task_common(){
		$data = $this->data;
		$id = S($data['token']);
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
		if($department_id['department_id'] != 1){
			$this->ApiReturn('10005','权限不足,请联系创文办');
		}
		$document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
		try{
			$finish = M('DocumentCommon')->where(array('id'=>$document_id))->save(array('d_finish'=>1,'check_time'=>time()));
		}catch(\Exception $e){
        	$this->ApiReturn('10007','修改失败');
        }            
        $message = "修改成功";
		$this->ApiReturn(0,$message);   
	}
    /**
     * 反馈（常规任务）
     * 王旭明
     * 2017.4.07
     */
    public function feedback_common()
    {
		$data = $this->data;
		$id = S($data['token']);
		// print_r($data);
		// return;
		$feedback['document_id'] = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
        $feedback['r_content'] = $data['feedback_content'];
        $feedback['file_id'] = $data['feedback_file'];
        if(empty($feedback['r_content'])&&empty($feedback['file'])){
        	$this->ApiReturn('10005','缺少发送内容');
        }
        $feedback['send_time'] = time();
        $feedback['type'] = 2;
        $department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $feedback['sup_id'] = $department_id['department_id'];
        try{
        	$row = M('ReminderCommon')->add($feedback);
        }catch(\Exception $e){
        	$this->ApiReturn('10007','反馈发送失败,请稍后再试');
        }
        $message = "反馈发送成功";
		$this->ApiReturn(0,$message);
    }
	/**
	 * 常规任务完成任务执行者
	 * 王旭明
	 * 2017-4-7
	 */	
	public function do_task_common(){
		$data = $this->data;
		$id = S($data['token']);
		$department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
		$document_id = $data['document_id'] ? $data['document_id'] : $this->ApiReturn('10005','缺少任务id');
		try{
			$finish = M('SendDocumentToCommon')->where(array('document_id'=>$document_id, 'to_id'=>$department_id['department_id']))->save(array('finish'=>1,'end_time'=>time()));
		}catch(\Exception $e){
        	$this->ApiReturn('10007','修改失败');
        }            
        $message = "修改成功";
		$this->ApiReturn(0,$message);   
	}
}

