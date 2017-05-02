<?php
/**
 * Created by PhpStorm.
 * User: sunfan
 * Date: 2017/3/29
 * Time: 11:00
 */

namespace Home\Controller;

use Think\Page;

class NewsController extends BaseController
{

    //
    public function news()
    {
        $id = $_SESSION['userinfo']['department_id'];

        if ($_GET['start'] && $_GET['end']){
            $where['create_time'] = array('between', array(strtotime($_GET['start']), strtotime($_GET['end'])));
        }
        if ($_GET['start'] && !$_GET['end']){
            $where['create_time'] = array('EGT', strtotime($_GET['start']));
        }
        if (!$_GET['start'] && $_GET['end']){
            $where['create_time'] = array('ELT', strtotime($_GET['end']));
        }
        $rs_count = M('News')
            ->where($where)
            ->field('*, nk_news.id as nid, nk_news.create_time as created_time')
            ->select();
        $count = 0;
        if ($rs_count){
            foreach ($rs_count as $k=>$item){
                if ($item['department_id'] == 0){
                    $count = $count+1;
                    continue;
                }
                $departmentIDs = explode(',', $item['department_id']);
                if ($departmentIDs)if (in_array($id, $departmentIDs)){
                    $count = $count+1;
                }
            }
        }
        import('ORG.Util.Page');// 导入分页类
        // $count      = M('News')->where(array('department_id'=>$id))->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('News')
            ->where($where)
            ->field('*, nk_news.id as nid, nk_news.create_time as created_time')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->order('create_time desc')
            ->select();

        if ($rs){
            foreach ($rs as $k=>$item){
                $rs[$k]['type_name'] = "公告";
                if ($rs[$k]['type'] == 2)
                {
                    $rs[$k]['type_name'] = "通知";
                }

                if ($item['department_id'] == 0){
                    continue;
                }
                $departmentIDs = explode(',', $item['department_id']);
                if ($departmentIDs)if (!in_array($id, $departmentIDs)){
                    unset($rs[$k]);
                }

            }
            if ($rs){
                array_values($rs);
            }
        }

        $this->assign('page',$show);
        $this->assign('news', $rs);
        $this->display();
    }

    public function zhuti()
    {
        $cate = M('ActivityCategory')->select();
        $rs = array();
        foreach ($cate as $k=>$item){
            $zhuti = M('Activity')->where(array('ac_id'=>$item['id']))->limit(6)->order('create_time desc')->select();
            if ($zhuti){
                $rs[$k]['cid'] = $item['id'];
                $rs[$k]['c_name'] = $item['category_name'];
                $rs[$k]['zhuti'] = $zhuti;
            }
        }
        if ($rs){
            array_values($rs);
        }
        // dump($rs);
        // return;
        $this->assign('rs', $rs);
        $this->display();
    }

    //原pdf简报
    /*public function jianbao()
    {

        import('ORG.Util.Page');// 导入分页类
        $count      = M('Pdf')->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('Pdf')->order('create_time desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('rs', $rs);
        $this->assign('page',$show);
        $this->display();
    }*/

    public function jianbao()
    {
        if ($_GET['start'] && $_GET['end']){
            $where['create_time'] = array('between', array(strtotime($_GET['start']), strtotime($_GET['end'])));
        }
        if ($_GET['start'] && !$_GET['end']){
            $where['create_time'] = array('EGT', strtotime($_GET['start']));
        }
        if (!$_GET['start'] && $_GET['end']){
            $where['create_time'] = array('ELT', strtotime($_GET['end']));
        }
        import('ORG.Util.Page');// 导入分页类
        $count      = M('Newspaper')->where($where)->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('Newspaper')->where($where)->order('create_time desc')->limit($Page->firstRow.','.$Page->listRows)->select();

        $this->assign('rs', $rs);
        $this->assign('page',$show);
        $this->display();
    }

    public function detail()
    {
        $type = $_GET['type'];
        $id = $_GET['id'];
        if ($type==1){
            $db = M('News');
        }elseif ($type==2){
            $db = M('Activity');
        }else{
            /*$detail = M('Pdf')->where(array('id'=>$id))->find();
            header("Content-type: application/pdf");
            readfile(".".$detail['file_url']);
            die();*/
            $db = M('Newspaper');
        }
        $detail = $db->where(array('id'=>$id))->find();
        $this->assign('detail', $detail);
        $this->assign('type', $type);
        $this->display();
    }

    public function detail2()
    {
        $this->display();
    }
    public function more()
    {
        $category_id = $_GET['category_id'];
        import('ORG.Util.Page');// 导入分页类
        $count      = M('Activity')->where(array('ac_id'=>$category_id))->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出
        $activity = M('Activity')->where(array('ac_id'=>$category_id))->order('create_time desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $category_name = M('ActivityCategory')->where(array('id'=>$category_id))->find();
        $this->assign('activity', $activity);
        $this->assign('category_name', $category_name);
        $this->assign('page',$show);
        $this->display();
    }
}