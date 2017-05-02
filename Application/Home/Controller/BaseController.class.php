<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/3/23
 * Time: 14:23
 */

namespace Home\Controller;


use Think\Controller;

class BaseController extends Controller
{
    public function _initialize() {
        if (!$_SESSION['userinfo']){
//            redirect(':U("Home/Auth/login")');
//           header("location:".U('Home/Auth/login'));
             redirect('/Home/Auth/login');
        }
    }
}