<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/3/16
 * Time: 13:25
 */

namespace Home\Controller;


use Think\Controller;

class HomeController extends BaseController
{
    /**
     * 登陆
     * 韩京远
     * 2017.3.16
     */
    public function index()
    {
        $userinfo = M('user')
            ->where(array('nk_user.id'=>$_SESSION['userinfo']['id']))
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_user.department_id')
            ->find();
        //未读邮件
        $read = M('SendEmailTo')
            ->where(array('send_to'=>$_SESSION['userinfo']['id'] ,'read'=>'-1', 'is_delete'=>'-1'))->count();
        $this->assign('read', $read);
        //收到的任务（突发）
        $receiveDoc = M('SendDocumentTo')->where(array('to_id'=>$_SESSION['userinfo']['department_id'], 'read'=>'-1'))->group('document_id')->select();
        $this->assign('receiveDoc', count($receiveDoc));
        //代办事项
        $office = M('office')
            ->where(array('nk_office.to_id'=>$_SESSION['userinfo']['id'] ,'achieve'=>'-1'))->count();

        //催办事项
        /*$reminderinfo = M('reminder')
            ->where(array('nk_reminder.document_id'=>$_SESSION['userinfo']['department_id']))
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_reminder.sup_id')
            ->select();*/
        $reminder = array();
        $reminderinfo = M('SendDocumentTo')
            ->join('LEFT JOIN nk_document ON nk_document.id=nk_send_document_to.document_id ')
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_document.from_id ')
            ->where(array('to_id'=>$_SESSION['userinfo']['department_id']))
            ->field('*, nk_document.id as did, nk_document.title as s_title')
            ->group('nk_send_document_to.document_id')
            ->select();
        $j=0;
        for($i=0;$i<count($reminderinfo);$i++){
            //是否催办事项
            $cui = M('Reminder')->where(array('document_id'=>$reminderinfo[$i]['did']))->find();
            if ($cui){
                $reminder[$i] = $reminderinfo[$i];
                $reminder[$i]['s_send_time'] = $cui['send_time'];
                $reminder[$i]['s_content'] = $cui['r_content'];
                $j++;
                if ($j==4)break;
            }
        }
        $this->assign('reminder', $reminder);
//        dump($reminder);die();


        $department_id = M('User')->where(array('id'=>$_SESSION['userinfo']['id']))->field('department_id')->find();
        $department_id = $department_id['department_id'];
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
        if ($news_array){
            $news_array=array_values($news_array);
        }

//        dump($news_array);die();
        $pictureinfo = M('Periodical')
            ->order('id desc')->find();
        $this->assign('pictureinfo', $pictureinfo);

        $this->assign('userinfo', $userinfo);
        $this->assign('office',$office);
        $this->assign('cateinfo',$news_array);
        $this->display();
    }
    //z注册
  public function register()
  {
      $reg['name'] = $_REQUEST['name'];
      $reg['password'] = $_REQUEST['password'];
      $reg['phone'] = $_REQUEST['phone'];
      $reg['email'] = $_REQUEST['email'];
      $reg['department_id'] = $_REQUEST['department_id'];
      $reg['position'] = $_REQUEST['position'];
      $reg['create_time'] = $_REQUEST['create_time'];
      $reg['status'] = '1';
      $reg['create_time'] = time();
      $message = "注册成功";
      //var_dump($reg['name']);
      if($reg['name'] == ''|| $reg['password'] == '' || $reg['phone'] == '' || $reg['email'] == ''){
          $message = "信息不完整，请完善";
          //echo $message;
         // exit();
      }
      $phone = M('User')->where(array('phone'=>$reg['phone']))->find();
      if($phone){
          $message = "该手机号已经注册";
        //  echo $message;
         // exit();
      }
      $email = M('User')->where(array('email'=>$reg['email']))->find();
      if($email){
          $message = "该邮箱已经注册";
       //   echo $message;
         // exit();
      }
      try{
          //$reg['password'] = md5(md5($data['password'].$reg['create_time']));
      $user = M('User')->add($reg);
    // echo M('User')->getLastSql();
          if($user){
              $this->success('新增成功', 'Auth/login');
          }

      }catch(Exception $e){
          $message = "注册失败,请稍后再试";
      }
  }


}