<?php
namespace Home\Controller;
use Think\Controller;
// use Api\Controller\UploadController;
class IndexController extends BaseController {
    public function index(){
        $this->show('<style type="text/css">*{ padding: 0; margin: 0; } div{ padding: 4px 48px;} body{ background: #fff; font-family: "微软雅黑"; color: #333;font-size:24px} h1{ font-size: 100px; font-weight: normal; margin-bottom: 12px; } p{ line-height: 1.8em; font-size: 36px }</style><div style="padding: 24px 48px;"> <h1>:)</h1><p>欢迎使用 <b>ThinkPHP</b>！</p><br/>[ 您现在访问的是Home模块的Index控制器 ]</div><script type="text/javascript" src="http://tajs.qq.com/stats?sId=9347272" charset="UTF-8"></script>','utf-8');
    }

    public function test(){
        $rs = M('user')->select();
    }
    public function file_test(){
    	// $b = $_GET['b'];
    	// $a = explode(',',$b);
    	// print_r($a);
    	$this->display();
    }
	public function downloads(){
	    $file = "/nankai/Public/Picture/20170318/58ccf2502c1f7.png";
        $file_dir = $_SERVER['DOCUMENT_ROOT'].$file;
        // echo $file_dir;
        $filename=pathinfo($file);
        if (!file_exists($file_dir)){
            header("Content-type: text/html; charset=utf-8");
            echo "File not found!";
            exit; 
        } else {
            $file = fopen($file_dir,"r"); 
            header("Content-type: application/octet-stream");
            header("Accept-Ranges: bytes");
            header("Accept-Length: ".filesize($file_dir));
            header("Content-Disposition: attachment; filename=".$filename['basename']);
            echo fread($file, filesize($file_dir));
            fclose($file);
        }
	}
}