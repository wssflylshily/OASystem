<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/4/24
 * Time: 14:03
 */

namespace Home\Controller;


use Think\Controller;

class ChatController extends Controller
{
    public function _initialize(){
    	$apply_list = M('ApplyFriends')
    	              ->alias('a')
    	              ->join('nk_user b ON a.from_id=b.id')
    	              ->where(array('a.status'=>0,'a.to_id'=>$_SESSION['userinfo']['id']))
    	              ->field('a.*,b.name')
    	              ->order('a.create_time desc')
    	              ->select();
    	$return = array();
    	foreach ($apply_list as $key => $value) {
    		if(date('Y-m-d',$value['create_time'])==$today){
    			$list = array('id'=>$value['id'],'a_name'=>$value['name'],'a_create_time'=>$value['create_time'],'a_content'=>$value['content']);
                array_push($z_list,$list);
                $row = array('today'=>$today,'list'=>$z_list);
                unset($return[$key-1]);
    		}else{
    			$z_list = array();
    			$today = date('Y-m-d',$value['create_time']);
    			$list = array('id'=>$value['id'],'a_name'=>$value['name'],'a_create_time'=>$value['create_time'],'a_content'=>$value['content']);
    			array_push($z_list,$list);
    			$row = array('today'=>$today,'list'=>$z_list);
    		}
    		array_push($return,$row);
    	}
        if(!empty($return)){
        	$this->assign('apply_friends_show','1');
        }
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
        foreach ($department_arr as $key => $value) {
        	$department_arr[$key]['count'] = count($value['friends_list']);
        }
        $this->assign('friends_list',$department_arr);
    	$this->assign('apply_list',$return);

        //-----------最近联系人、群组-------start--------
    
        $chat_room = M('ChatRoom')->where(array('user_id' =>array('like', array($id.'%', '%'.$id, '%'.$id.'%', $id), 'OR')))->select();
        $single=array(); $group=array();
        foreach ($chat_room as $key => $value) {
            $user_arr = explode(',', $value['user_id']);

            if (in_array( $id, $user_arr)) {
                /*if (count($user_arr) <= 2) {
                    //单聊
                    if ($user_arr[0] == $id) {
                        $chat_to_id = $user_arr[1];
                    }else{
                        $chat_to_id = $user_arr[0];
                    }
                    $user = M('user')->join('LEFT JOIN nk_department ON nk_department.id=nk_user.department_id')->where(array('nk_user.id'=>$chat_to_id))->find();
                    if ($user) {
                        array_push($single, $user);
                    }
                    break;
                }else{
                    //群聊
                    array_push($group, $value);
                }*/
                array_push($group, $value);
            }
            
             
        }
        // $to_id=array();
        $tasklist = M('TalkList')->where(array('send_id'=>$id, 'type'=>1))->group('to_id')->field('to_id')->select();
        foreach ($tasklist as $key => $value) {
            # code...
            $user = M('User')->where(array('id'=>$value['to_id']))->find();
            array_push($single, $user);
        }
        // dump($single);die;
        $this->assign('single', $single);
        $this->assign('group', $group);
        $single_talk = 0;
        if($_GET['user_id']){
            $single_talk = 1;
            $this->assign('single_talk',$single_talk);  
        }
        if($_GET['id']){
            $single_talk = 2;
            $this->assign('single_talk',$single_talk); 
        }
        //-----------最近联系人、群组--------end--------
    }
    public function SingleChat()
    {
        $this->display();
    }


    //群聊
    public function group_chat($id=null)
    {
        $id = $_GET['to_id']?$_GET['to_id']:$id;

        //获取当天的年份
        $y = date("Y");
         
        //获取当天的月份
        $m = date("m");
         
        //获取当天的号数
        $d = date("d");
         
        //将今天开始的年月日时分秒，转换成unix时间戳(开始示例：2015-10-12 00:00:00)
        $todayTime= mktime(0,0,0,$m,$d,$y);

        $id = $_GET['id'];
        $room = M('ChatRoom')->where(array('id'=>$id))->find();
        $rs = M('TalkList')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_talk_list.send_id')
            ->where(array('nk_talk_list.to_id'=>$id, 'nk_talk_list.type' => 2, 'nk_talk_list.create_time' =>array('gt', $todayTime)))
            ->field('*, nk_talk_list.create_time as c_time')
            ->select();

        $userids = explode(',', $room['user_id']);
        $user_arr = array();
        foreach ($userids as $key => $value) {
            $user = M('User')->where(array('id'=>$value))->find();
            array_push($user_arr, $user);
        }
        $this->assign('rs',$rs);
        $this->assign('room',$room);
        $this->assign('users', $user_arr);
        // dump($room);die;
        $this->display('group_chat');
    }


    //创建一个群聊
    public function create_group()
    {
        $userids = $_GET['userids'];
        $user_id = $userids.",".$_SESSION['userinfo']['id'];
   
        $data['user_id'] = $user_id;
        $data['room_name'] = $_GET['qunzu_name'];
        $data['create_time'] = time();
        if(!M('ChatRoom')->add($data)){
            echo 0;die;
        }
        echo 1;
    }

    public function delete_group()
    {
        $where['id'] = $_GET['id'];
        $id = $_SESSION['userinfo']['id'];
        $room = M('ChatRoom')->where($where)->find();
        $user_arr = explode(',', $room['user_id']);
        foreach ($user_arr as $key => $value) {
            if ($value == $id) {
                # code...
                unset($user_arr[$key]);
            }
        }
        foreach ($user_arr as $key => $value) {
            $user_id = $value.",";
        }
        $data['user_id'] = substr($user_id, 0, -1);
        $id = M('ChatRoom')->where($where)->save($data);
        echo 1;
    }

    public function right_contact(){
    	$this->display('_layouts/chat_right_contact');
    }
    /**
     * 个人聊天内容
     * 王旭明
     * 2017.4.26
     */
    public function talk_person(){
    	$user_id = $_GET['user_id'];
    	$userinfo = M('User')->alias('a')
    	            ->join('nk_department b on a.department_id=b.id')
    	            ->where(array('a.id'=>$user_id))
    	            ->field('a.*,b.d_name')
    	            ->find();
    	$my_id = $_SESSION['userinfo']['id'];
    	$today = strtotime(date("Y-m-d"));
        $talk_list = M('TalkList')
                     ->where("((send_id = $my_id and to_id = $user_id)or (send_id = $user_id and to_id = $my_id)) and type = 1 and create_time >= $today")
                     ->select();
        $this->assign('userinfo',$userinfo);
        $this->assign('talk_list',$talk_list);
        $this->display('SingleChat');
    }
    /**
     * ajax聊天
     * 王旭明
     * 2017.4.26
     */
    public function talk_ajax(){
    	$user_id = $_GET['user_id'];
    	$my_id = $_SESSION['userinfo']['id'];
    	$today = strtotime(date("Y-m-d"));
        $talk_list = M('TalkList')
             ->where("((send_id = $my_id and to_id = $user_id)or (send_id = $user_id and to_id = $my_id)) and type = 1 and create_time >= $today")
             ->select();
    	$userinfo = M('User')->alias('a')
            ->join('nk_department b on a.department_id=b.id')
            ->where(array('a.id'=>$user_id))
            ->field('a.*,b.d_name')
            ->find();
        $this->assign('userinfo',$userinfo);
        $this->assign('talk_list',$talk_list);
        $this->display('ajax_talk_person');
    }
    /**
     * ajax发送聊天
     * 王旭明
     * 2017.4.26
     */
    public function send_talk_person(){
    	$data['send_id'] = $_SESSION['userinfo']['id'];
    	$data['to_id'] = $_GET['user_id'];
    	$data['create_time'] = time();
    	$data['content'] = $_GET['content'];
    	$data['type'] = 1;
    	$result = M('TalkList')->add($data);
    	if($result){
    		echo "1";
    	}
    }
    /**
     * ajax聊天（历史内容）
     * 王旭明
     * 2017.4.26
     */
    public function talk_ajax_history(){
    	$user_id = $_GET['user_id'];
    	$my_id = $_SESSION['userinfo']['id'];
    	$today = strtotime(date("Y-m-d"));
        $old_list = M('TalkList')
                     ->where("((send_id = $my_id and to_id = $user_id)or (send_id = $user_id and to_id = $my_id)) and type = 1 and create_time < $today")
                     ->order('create_time desc')
                     ->select();
        // echo M('TalkList')->getLastSql();
        // return;
    	$userinfo = M('User')->alias('a')
            ->join('nk_department b on a.department_id=b.id')
            ->where(array('a.id'=>$user_id))
            ->field('a.*,b.d_name')
            ->find();
        foreach ($old_list as $key => $value) {
        	$old_list[$key]['create_time'] = date('Y-m-d H:i:s',$value['create_time']);
        }
        $rs = array('old_list'=>$old_list,'userinfo'=>$userinfo);
        echo json_encode($rs);
        // $this->display('ajax_talk_person');
    }


    /**
     * 群聊----发送消息
     * 2017.4.27
     * 孙璠
     */
    public function send_msg()
    {
        $content = $_GET['content'];
        $type = $_GET['type'];
        $to_id = $_GET['to_id'];
        if (!M('TalkList')->add(array('send_id'=>$_SESSION['userinfo']['id'], 'to_id' => $to_id, 'create_time'=>time(), 'content'=>$content, 'type'=>$type))) {
            # code...
            echo 1;die;
        }
        echo 0;die;
        
        
    }

    /**
     * 群聊----实时更新消息
     * 2017.4.27
     * 孙璠
     */
    
    public function ajax_talk_group()
    {
        //获取当天的年份
        $y = date("Y");
         
        //获取当天的月份
        $m = date("m");
         
        //获取当天的号数
        $d = date("d");
         
        //将今天开始的年月日时分秒，转换成unix时间戳(开始示例：2015-10-12 00:00:00)
        $todayTime= mktime(0,0,0,$m,$d,$y);

        $id = $_GET['to_id'];
        $rs = M('TalkList')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_talk_list.send_id')
            ->where(array('nk_talk_list.to_id'=>$id, 'nk_talk_list.type' => 2, 'nk_talk_list.create_time' => array('gt', $todayTime)))
            ->field('*, nk_talk_list.create_time as c_time')->select();

            // echo M('TalkList')->getLastSql();die;
        $this->assign('rs', $rs);
        $this->display();
    }

/**
 * 群聊--历史
 * 孙璠
 * 2017.4.27
 */
    public function ajax_group_history(){
        $id = $_GET['to_id'];

        //获取当天的年份
        $y = date("Y");
         
        //获取当天的月份
        $m = date("m");
         
        //获取当天的号数
        $d = date("d");
         
        //将今天开始的年月日时分秒，转换成unix时间戳(开始示例：2015-10-12 00:00:00)
        $todayTime= mktime(0,0,0,$m,$d,$y);


        $rs = M('TalkList')
            ->join('LEFT JOIN nk_user ON nk_user.id=nk_talk_list.send_id')
            ->where(array('nk_talk_list.to_id'=>$id, 'nk_talk_list.type' => 2, 'nk_talk_list.create_time' => array('lt', $todayTime)))
            ->field('*, nk_talk_list.create_time as c_time')->select();
        foreach ($rs as $key => $value) {
            $rs[$key]['c_time'] = date('Y-m-d H:i:s',$value['c_time']);
        }
        echo json_encode($rs);
    }
}