<?php
namespace Api\Controller;
use Think\Controller;
// use Client\Controller\UserApiBaseController;
class TestController extends Controller {
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
		$reminders_array = array();
		foreach ($reminders as $key => $value) {
			$row = array('reminder_id'=>$value['id'],'reminder_title'=>$value['r_title'],'reminder_content'=>$value['r_content'],'start_time'=>date('Y-m-d H:i:s',$value['send_time']),'end_time'=>date('Y-m-d H:i:s',$value['finish_time']),'department_name'=>$value['d_name']);
			array_push($reminders_array, $row);
		}
		$news = M('News')->alias('a')->join('nk_category ON a.category_id = nk_category.id')->select();
		$news_array = array();
		foreach ($news as $key => $value) {
			$row = array('news_id'=>$value['id'],'news_category_name'=>$value['category_name'],'news_title'=>$value['title'],'news_content'=>$value['content'],'time'=>date('Y-m-d H:i:s',$value['create_time']));
			array_push($news_array, $row);
		}
		$periodical = M('Periodical')->order('id desc')->field('id as periodical_id,pic as periodical_pic,stage as periodical_stage')->find();
		if(empty($periodical)){
			$periodical = array();
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
	public function upload(){
		// dump($_FILES['pic']);
		// return;
	 //    $upload = new \Think\Upload();// 实例化上传类
	 //    $upload->maxSize   =     3145728 ;// 设置附件上传大小
	 //    $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
	 //    $upload->rootPath  =     './Public/'; // 设置附件上传根目录
	 //    $upload->savePath  =     ''; // 设置附件上传（子）目录
	 //    // 上传文件 
	 //    // dump($_Files['pic']);
	 //    $info   =   $upload->upload();
	 //    dump($info);
	 //    if(!$info) {// 上传错误提示错误信息
	 //        $this->error($upload->getError());
	 //    }else{// 上传成功
	 //        // $this->success('上传成功！');
	 //    }
	 dump($_FILES['pic']);
	 return;
	 		if (!empty($_FILES)) {
				//上传图片
				$upload = new \Think\Upload();// 实例化上传类
				$upload->maxSize = 11048576;// 设置附件上传大小
				$upload->exts = array('jpg', 'png', 'jpeg', 'gif');// 设置附件上传类型
				$upload->rootPath = './public/images/'; // 设置附件上传根目录
				$upload->savePath = ''; // 设置附件上传（子）目录
				// 上传文件
				foreach ($_FILES as $key => $value) {
					// dump($value);
					// return;
					// echo $key;
					if($key=='img'){
						// echo "2";
						$info = $upload->upload($_FILES['img']);
						echo $key;
					}else{
						// dump($_FILES[1]);
						// return;
						// echo "1";
						$info1 = $upload->upload($_FILES['pic']);
						if(!$info1){
							// $this->error($upload->getError());
						}
						// dump($info1);
						// return;
						foreach ($info1 as $key1 => $value1) {
							echo $key1;
						}
					}
				}
				return;
				// var_dump($info);
				// if (!$info) {// 上传错误提示错误信息
				// 	$this->error($upload->getError());
				// } else {// 上传成功 获取上传文件信息
				// 		// dump($info);
				// 	foreach ($info as $key => $value) {
				// 		echo $key;
				// 	}
				// 	// dump($info);
				// 	return;
				// 	$article['image'] = "/public/images/" . $info['pic']['savepath'] . $info['pic']['savename'];
				// }
			}else{
				$this->error("没有上传图片！");
			}
	}

public function ceshi(){
	$this->push();
}
     /* 导出excel函数*/
    public function push($data,$name='Excel'){
    	include_once('PHPExcel.php');
          error_reporting(E_ALL);
          // date_default_timezone_set('Europe/London');
         $objPHPExcel = new PHPExcel();
        /*以下是一些设置 ，什么作者  标题啊之类的*/
         $objPHPExcel->getProperties()->setCreator("转弯的阳光")
                               ->setLastModifiedBy("转弯的阳光")
                               ->setTitle("数据EXCEL导出")
                               ->setSubject("数据EXCEL导出")
                               ->setDescription("备份数据")
                               ->setKeywords("excel")
                              ->setCategory("result file");
         /*以下就是对处理Excel里的数据， 横着取数据，主要是这一步，其他基本都不要改*/
        foreach($data as $k => $v){
             $num=$k+1;
             $objPHPExcel->setActiveSheetIndex(0)
                         //Excel的第A列，uid是你查出数组的键值，下面以此类推
                          ->setCellValue('A'.$num, $v['uid'])    
                          ->setCellValue('B'.$num, $v['email'])
                          ->setCellValue('C'.$num, $v['password']);
            }
            $objPHPExcel->getActiveSheet()->setTitle('User');
            $objPHPExcel->setActiveSheetIndex(0);
             header('Content-Type: application/vnd.ms-excel');
             header('Content-Disposition: attachment;filename="'.$name.'.xls"');
             header('Cache-Control: max-age=0');
             $objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel5');
             $objWriter->save('php://output');
             exit;
      }
}