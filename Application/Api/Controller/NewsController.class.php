<?php
namespace Api\Controller;
use Client\Controller\UserApiBaseController;
class NewsController extends UserApiBaseController {
	/**
	 * 新闻列表
	 * 王旭明
	 * 2017-3-29
	 */
	public function news_list(){
		$data = $this->data;
		$id = S($data['token']);
		$page = $data['page'] ? $data['page']-1 : 0;
        if ($data['start'] && $data['end']){
            $where['create_time'] = array('between', array(substr($data['start'], 0, -3), substr($data['end'], 0, -3)));
        }
        if($data['start'] && !$data['end']){
        	$where['create_time'] = array('EGT', substr($data['start'], 0, -3));
        }
        if(!$data['start'] && $data['end']){
        	$where['create_time'] = array('ELT', substr($data['end'], 0, -3));
        }
        $department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $department_id = $department_id['department_id'];
        $rs = M('News')
            ->where($where)
             ->order('create_time desc')
             ->limit($page*10,10)
             ->field('id as news_id,title as news_title,content as new_content,create_time,department_id,type')
             ->select();
        // echo M('News')->getLastSql();
        // return;
        if ($rs){
            foreach ($rs as $k=>$item){

                $rs[$k]['type_name'] = "公告";
                if ($rs[$k]['type'] == 2)
                {
                    $rs[$k]['type_name'] = "通知";
                }

            	$middle = strip_tags($item['new_content']);
            	$str = str_replace("&nbsp;","",$middle);
            	$rs[$k]['news_content']= $str;
            	unset($rs[$k]['new_content']);
            	$rs[$k]['news_send_time'] = date("Y.m.d",$item['create_time']);
                unset($rs[$k]['create_time']);
            	if($item['department_id'] == 0){
            		continue;
            	}
                $departmentIDs = explode(',', $item['department_id']);
                if ($departmentIDs)if (!in_array($department_id, $departmentIDs)){
                    unset($rs[$k]);
                }
            }
            if ($rs){
                $rs=array_values($rs);
            }
        }
		$message = "获取成功";
		if(empty($rs)){
			$code = 0;
			$rs = array();
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$rs);
        // var_dump($head_info);
	}
	/**
	 * 工作简报
	 * 王旭明
	 * 2017-3-29
	 */
	public function work_desc(){
		$data = $this->data;
		$id = S($data['token']);
		$page = $data['page'] ? $data['page']-1 : 0;
        if ($data['start'] && $data['end']){
            $where['create_time'] = array('between', array(substr($data['start'], 0, -3), substr($data['end'], 0, -3)));
        }
        if($data['start'] && !$data['end']){
        	$where['create_time'] = array('EGT', substr($data['start'], 0, -3));
        }
        if(!$data['start'] && $data['end']){
        	$where['create_time'] = array('ELT', substr($data['end'], 0, -3));
        }
        $rs = M('Newspaper')
            ->where($where)
             ->order('create_time desc')
             ->limit($page*10,10)
             ->field('id as work_id,title as work_title,`desc` as work_desc,content as work_content,create_time')
             ->select();
             // echo M('Pdf')->getLastSql();
             // return;
        if($rs){
	        foreach ($rs as $key => $value) {
	        	$rs[$key]['work_send_time'] = date('Y.m.d',$value['create_time']);
	        	unset($rs[$key]['create_time']);
	        }
        }
		$message = "获取成功";
		if(empty($rs)){
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$rs);
        // var_dump($head_info);
	}
	/**
	 * 工作简报详情
	 * 王旭明
	 * 2017-4-6
	 */
	public function work_detail(){
		$data = $this->data;
		$id = S($data['token']);
		$work_id = $data['work_id'] ? $data['work_id'] : $this->ApiReturn('10005','缺少工作简报id');
        $rs = M('Newspaper')
             ->where(array('id'=>$work_id))
             ->field('id as work_id,title as work_title,`desc` as work_desc,pic_url as work_img,create_time')
             ->find();
             // echo M('Pdf')->getLastSql();
             // return;
        if($rs){
        	$rs['work_send_time'] = date('Y.m.d',$rs['create_time']);
        	unset($rs['create_time']);
            $rs['work_content'] = 'http://'.$_SERVER['HTTP_HOST'].'/api/news/content_detail';
        }
		$message = "获取成功";
		if(empty($rs)){
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$rs);
	}
    /**
     * 工作简报详情(内容)
     * 王旭明
     * 2017-4-21
     */
    public function content_detail(){
        $data = $this->data;
        $id = S($data['token']);
        $work_id = $data['work_id'] ? $data['work_id'] : $this->ApiReturn('10005','缺少工作简报id');
        $rs = M('Newspaper')
             ->where(array('id'=>$work_id))
             ->field('content')
             ->find();
        $this->assign('content',$rs['content']);
        $this->display();
    }
	/**
	 * 主题活动
	 * 王旭明
	 * 2017-3-29
	 */
	public function main_activity(){
		$data = $this->data;
		$id = S($data['token']);
		$page = $data['page'] ? $data['page']-1 : 0;
		$category_list = M('Activity_category')->order('create_time')->select();
		$category = $data['category_id'] ? $data['category_id'] : $category_list[0]['id'];
        $rs = M('Activity')
             ->alias('a')
             ->join('nk_activity_category b on a.ac_id=b.id')
             ->where(array('a.ac_id'=>$category))
             ->order('a.create_time desc')
             ->limit($page*10,10)
             ->field('a.id as activity_id,a.title as activity_title,a.`desc` as activity_desc,a.pic_url as activity_pic,a.create_time')
             ->select();
        if($rs){
	        foreach ($rs as $key => $value) {
	        	$rs[$key]['activity_send_time'] = date('Y.m.d',$value['create_time']);
	        	unset($rs[$key]['create_time']);
	        }
        }else{
        	$rs = array();
        }
        if ($rs){
            $rs=array_values($rs);
        }
        $return_data = array('category_list'=>$category_list,'activity'=>$rs);
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
	 * 主题活动详情
	 * 王旭明
	 * 2017-3-29
	 */
	public function activity_detail(){
		$data = $this->data;
		$id = S($data['token']);
		$activity_id = $data['activity_id'] ? $data['activity_id'] : $this->ApiReturn('10005','缺少活动id');
        $rs = M('Activity')
             ->where(array('id'=>$activity_id))
             ->field('id as activity_id,title as activity_title,content as activity_content,`desc` as activity_desc,pic_url as activity_pic,create_time')
             ->find();
        if($rs){
        	$rs['activity_send_time'] = date('Y-m-d',$rs['create_time']);
        	unset($rs['create_time']);
        }else{
        	$rs = array();
        }
		$message = "获取成功";
		if(empty($rs)){
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$rs);
        // var_dump($head_info);
	}
	/**
	 * 公告详情
	 * 王旭明
	 * 2017-3-29
	 */
	public function news_detail(){
		$data = $this->data;
		$id = S($data['token']);
		$news_id = $data['news_id'] ? $data['news_id'] : $this->ApiReturn('10005','缺少新闻id');
        $department_id = M('User')->where(array('id'=>$id))->field('department_id')->find();
        $department_id = $department_id['department_id'];
        $rs = M('News')
             ->where(array('id'=>$news_id))
             ->order('create_time desc')
             ->field('id as news_id,title as news_title,create_time,department_id')
             ->find();
        // echo M('News')->getLastSql();
        // return;
        if ($rs){
            	$rs['news_send_time'] = date("Y-m-d",$rs['create_time']);
                unset($rs['create_time']);
                $rs['news_content'] = 'http://'.$_SERVER['HTTP_HOST'].'/api/news/news_content_detail';
                $departmentIDs = explode(',', $rs['department_id']);
            	if($rs['department_id'] != 0 &&(!in_array($department_id, $departmentIDs))){
            	    $this->ApiReturn('10005','您没有阅读权限');
            	}
        }
		$message = "获取成功";
		if(empty($rs)){
			$code = 0;
		}else{
			$code = 1;
		}
		$this->ApiReturn($code,$message,$rs);
        // var_dump($head_info);
	}
    /**
     * 公告详情(内容)
     * 王旭明
     * 2017-4-21
     */
    public function news_content_detail(){
        $data = $this->data;
        $id = S($data['token']);
        $news_id = $data['news_id'] ? $data['news_id'] : $this->ApiReturn('10005','缺少新闻id');
        $rs = M('News')
             ->where(array('id'=>$news_id))
             ->order('create_time desc')
             ->field('content')
             ->find();
        $this->assign('content',$rs['content']);
        $this->display('content_detail');
    }
}