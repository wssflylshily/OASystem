<?php
namespace Home\Controller;
use Think\Controller;
use Think\Page;
class UserController extends Controller {
    /**
     * 用户列表
     * 王旭明
     * 2017.3.23
     */
     public function user_list(){
        $where =array();
        $where['a.is_delete']=-1;
        $pid = I("get.pid");
        if($pid){
           $where['b.department_category_id'] = $pid;
           $department_lv2 = M("Department")->where(array('department_category_id'=>$pid))
               ->field('id,parent_id,d_name')
               ->select();
           $this->assign('department_lv2',$department_lv2);
        }
        $sid = I("get.sid");
        if($sid){
            $where['a.department_id'] = $sid;
        }
        if($key = I('get.keyword')){
           $where['a.name'] = array('like',"%{$key}%");
        }
        $category_list = M('DepartmentCategory')->select();
        import('ORG.Util.Page');// 导入分页类
        $count      = M('User')->alias('a')->join('nk_department b on a.department_id=b.id','left')->field('a.*,b.d_name')->where($where)->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $User = M('User')->alias('a')->join('nk_department b on a.department_id=b.id','left')->limit($Page->firstRow.','.$Page->listRows)->field('a.*,b.d_name')->where($where)->order('a.sort,a.id')->select();
         $department = D('DepartmentCategoryTask')->select();
         foreach ($department as $k => $v){
             $department[$k]['data'] =  D("department")->where(array('nk_department.dp_category_task_id'=>$v['id']))->select();
         }
        $this->assign('user_list',$User);
        $this->assign('department',$department);
        $this->assign('page',$show);
        $this->assign('category_list',$category_list);
        $this->display('system_user');
     } 
     /**
     * 搜索用户
     * 王旭明
     * 2017.4.13
     */
     public function search_user(){
         $keyword=$_GET['keyword'];
         $rs = M('User')
               ->alias('a')
               ->join('nk_department b on a.department_id=b.id')
               ->where(array('b.department_category_id'=>array('neq',0),'a.name'=>array('like','%'.$keyword.'%')))
               ->field('a.*')
               ->select();
        // echo M('User')->getLastSql();
        // return;
        echo json_encode($rs);
     } 
    /**
     * 验证手机格式
     * 王旭明
     * 2017.3.23
     */
    function check_mobile($mobile){
        if(preg_match('/1[34578]\d{9}$/',$mobile))
            return true;
        return false;
    }
    /**
     * 增加用户
     * 王旭明
     * 2017.3.23
     */
     public function add_user(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
         if(!$_POST['name']){
             $arr = array('status'=>-1,'msg'=>'用户名不能为空');
             echo json_encode($arr);
             exit();
         }
        $data['name'] = $_POST['name'];
        $data['phone'] = $_POST['tel'];
        $data['department_id'] = $_POST['ssdw'];
        $data['sort'] = $_POST['sort'];
        $data['create_time'] = time();
        $data['password'] = md5(md5('123456').time());
        
         $name_exsit = M('User')->where(array('name'=>$data['name']))->find();
         if($name_exsit){
             $arr = array('status'=>-1,'msg'=>'该用户名已存在');
             echo json_encode($arr);
             exit();
         }

        if ($data['phone']){
            if($this->check_mobile($data['phone']) == false){
                $arr = array('status'=>-1,'msg'=>'手机格式不正确');
                echo json_encode($arr);
                exit();
            }
            $phone_exsit = M('User')->where(array('phone'=>$data['phone']))->find();
            if($phone_exsit){
                $arr = array('status'=>-1,'msg'=>'手机号已存在');
                echo json_encode($arr);
                exit();
            }
        }

        $row = M('User')->add($data);
        if($row){
            $arr = array('status'=>1,'msg'=>'添加成功');
            echo json_encode($arr);
            exit();        
        }else{
            $arr = array('status'=>-1,'msg'=>'添加失败');
            echo json_encode($arr);
            exit();              
        }
     }
    /**
     * 删除用户
     * 王旭明
     * 2017.3.23
     */
     public function delete_user(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_POST['id'];
        $phone_exsit = M('User')->where(array('id'=>$id))->find();
        if(!$phone_exsit){
            $arr = array('status'=>-1,'msg'=>'用户不存在');
            echo json_encode($arr);
            exit();  
        }
        $row = M('User')->where(array('id'=>$id))->save(array('is_delete'=>1));
        if($row){
            $arr = array('status'=>1,'msg'=>'删除成功');
            echo json_encode($arr);
            exit();        
        }else{
            $arr = array('status'=>-1,'msg'=>'删除失败');
            echo json_encode($arr);
            exit();              
        }
     }
    /**
     * 删除用户
     * 王旭明
     * 2017.3.23
     */
    public function delete(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        foreach($_GET['id'] as $key=>$val){
            M('User')->where(array('id'=>$val))->setField(array('is_delete'=>'1' ));
        }
        $arr = array('status'=>1,'msg'=>'删除成功');
        echo json_encode($arr);
        exit();  
    }
    /**
     * 编辑用户
     * 王旭明
     * 2017.3.23
     */
     public function edit_user(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }

         if(!$_POST['name']){
             $arr = array('status'=>-1,'msg'=>'用户名不能为空');
             echo json_encode($arr);
             exit();
         }

        $data['name'] = $_POST['name'];
        $data['phone'] = $_POST['tel'];
        $d_id = M('Department')->where(array('d_name'=>$_POST['ssdw_name']))->find();
        $data['department_id'] = $d_id['id'];
        $data['sort'] = $_POST['sort'];
        $id = $_POST['id'];
        if ($data['phone']){
            if($this->check_mobile($data['phone']) == false){
                $arr = array('status'=>-1,'msg'=>'手机格式不正确');
                echo json_encode($arr);
                exit();
            }
            $where['id'] = array('neq',$id);
            $where['phone'] = $data['phone'];
            $phone_exsit = M('User')->where($where)->find();
            if($phone_exsit){
                $arr = array('status'=>-1,'msg'=>'手机号已存在');
                echo json_encode($arr);
                exit();
            }
        }
         $user_exsit = M('User')->where(array('id'=>$id))->find();
         if(!$user_exsit){
             $arr = array('status'=>-1,'msg'=>'用户不存在');
             echo json_encode($arr);
             exit();
         }

        $row = M('User')->where(array('id'=>$id))->save($data);
        if($row){
            $arr = array('status'=>1,'msg'=>'修改成功');
            echo json_encode($arr);
            exit();        
        }else{
            $arr = array('status'=>-1,'msg'=>'修改失败');
            echo json_encode($arr);
            exit();              
        }
     }

    /**
     * 部门列表
     * 王旭明
     * 2017.3.30
     */
     public function department(){
        import('ORG.Util.Page');// 导入分页类

        $where = array();
        $pid = I("get.pid");
        if($pid){
           $where['dp_category_task_id'] = $pid;
           $department_lv2 = D("Department")->where($where)
               ->field('id,parent_id,d_name')
               ->select();
           $this->assign('department_lv2',$department_lv2);
        }
        if($key = I('get.keyword')){
           $where['d_name'] = array('like',"%{$key}%");
        }
        // $sid = I("get.sid");
        // if($sid){
        //     $where['parent_id'] = array('like',array("%,$sid","%,$sid,%","$sid,%","$sid"),'OR');
        // }

        $count      = M('Department')->where($where)->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $department = M('Department')->where($where)->order('id')->limit($Page->firstRow.','.$Page->listRows)->order('sort,id')->select();
        foreach ($department as $key => $value) {
            $department[$key]['count_person'] = M('User')->where(array('department_id'=>$value['id'],'is_delete'=>-1))->count();
            $parents_id = explode(',',$value['parent_id']);
            $de_name = '';
            foreach ($parents_id as $key1 => $value1) {
                $p_department_name = M('Department')->where(array('id'=>$value1))->field('d_name')->find();
                $de_name = $de_name.';'.$p_department_name['d_name'];
            }
            
            $department[$key]['p_name'] = substr($de_name,1);
        }
        $department_list = M('Department')->where(array('level'=>array('in',array(1,2))))->select();
        // echo M('Department')->getLastSql();
        // return;
        // echo strip_tags("Hello <b>World</b>");
        // return;
        $this->assign('department_list',$department_list);
        $this->assign('department',$department);
        $this->assign('page',$show);
        // dump($User);

        // $where_lv = array(
        //     'parent_id'=>0
        // );

        $department_lv1 = D('DepartmentCategoryTask')->
           field("id,category_name")
//            ->where($where_lv)
            ->select();
        $this->assign("department_lv1",$department_lv1);

        $this->display();
     }

    /**
     * 添加部门
     * 孙璠
     * 2017.4.14
     */
    public function getAddDepartment()
    {
        $depCate = D('DepartmentCategoryTask')->select();
        foreach ($depCate as $k => $v){
            $depCate[$k]['data'] =  D("department")->where(array('nk_department.dp_category_task_id'=>$v['id']))->select();
        }
        $this->assign('depCate', $depCate);
        $this->display('add_department');
    }

    public function getEditDepartment()
    {
        $id = $_GET['id'];
        $rs = M('Department')->where(array('nk_department.id'=>$id))->find();
        if ($rs['dp_category_task_id'] == 1){
            $rs['dp_name'] = "委员单位";
        }elseif ($rs['dp_category_task_id'] == 2){
            $rs['dp_name'] = "成员单位";
        }elseif ($rs['dp_category_task_id'] == 3){
            $rs['dp_name'] = "街道";
        }elseif ($rs['dp_category_task_id'] == 4){
            $rs['dp_name'] = "各指挥部";
        }elseif ($rs['dp_category_task_id'] == 5){
            $rs['dp_name'] = "区级领导";
        }elseif ($rs['dp_category_task_id'] == 6){
            $rs['dp_name'] = "社区";
        }elseif ($rs['dp_category_task_id'] == -1){
            $rs['dp_name'] = "创文办";
        }

        if ($rs['department_category_id'] == 1){
            $rs['email_name'] = "委员单位";
        }elseif ($rs['department_category_id'] == 2){
            $rs['email_name'] = "成员单位";
        }elseif ($rs['department_category_id'] == 3){
            $rs['email_name'] = "街道";
        }elseif ($rs['department_category_id'] == 4){
            $rs['email_name'] = "各指挥部";
        }elseif ($rs['department_category_id'] == 5){
            $rs['email_name'] = "区级领导";
        }elseif ($rs['department_category_id'] == 6){
            $rs['email_name'] = "社区";
        }elseif ($rs['department_category_id'] == -1){
            $rs['email_name'] = "创文办";
        }

        $pids = explode(',', $rs['parent_id']);
        $rs['parent_name']="";
        $old_parent = array();
        foreach ($pids as $pid){
            $department_exsit = M('Department')->where(array('nk_department.id'=>$pid))->find();
            array_push($old_parent,$department_exsit);
            if($department_exsit){
                $rs['parent_name'] .= ",".$department_exsit['d_name'];
            }
        }
        $rs['parent_name'] = substr($rs['parent_name'], 1);
        $this->assign('rs', $rs);
        $this->assign('old_parent', $old_parent);
        $this->assign('id', $id);

        $depCate = D('DepartmentCategoryTask')->select();
        foreach ($depCate as $k => $v){
            $depCate[$k]['data'] =  D("department")->where(array('nk_department.dp_category_task_id'=>$v['id']))->select();
        }
        $this->assign('depCate', $depCate);

        $this->display('edit_department');
    }

    public function searchDepartmentAjax()
    {
        $key = $_GET['keyword'];
        $data =  D("department")->where(array('nk_department.d_name'=>array('like', '%'.$key.'%')))->select();
        echo json_encode($data);
    }

    /**
     * 新增部门
     * 王旭明
     * 2017.3.30
     */
    public function add_department(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if(!$_POST['name']){
             $arr = array('status'=>-1,'msg'=>'部门名称不能为空');
             echo json_encode($arr);
             exit();
         }
        if(!$_POST['ssdw']){
             $arr = array('status'=>-1,'msg'=>'上级部门不能为空');
             echo json_encode($arr);
             exit();
         }
         if (!$_POST['fl']){
             $arr = array('status'=>-1,'msg'=>'部门分类不能为空');
             echo json_encode($arr);
             exit();
         }
        if (!$_POST['emailid']){
            $arr = array('status'=>-1,'msg'=>'邮件分类不能为空');
            echo json_encode($arr);
            exit();
        }
        $data['d_name'] = $_POST['name'];
//        $data['parent_id'] = substr($_POST['ssdw'],1);
        $data['parent_id'] = $_POST['ssdw'];
        $data['dp_category_task_id'] = $_POST['fl'];
        $data['department_category_id'] = $_POST['emailid'];
        $data['sort'] = $_POST['sort'];
        $data['create_time'] = time();
        $name_exsit = M('Department')->where(array('nk_department.d_name'=>$data['d_name']))->find();
        if($name_exsit){
             $arr = array('status'=>-1,'msg'=>'部门名称已存在');
             echo json_encode($arr);
             exit();
        }
        $pids = explode(',', $data['parent_id']);
        foreach ($pids as $pid){
            $department_exsit = M('Department')->where(array('nk_department.id'=>$pid))->find();
            if(!$department_exsit){
                $arr = array('status'=>-1,'msg'=>'上级部门不存在,请重试');
                echo json_encode($arr);
                exit();
            }
        }

//        $data['level'] = $department_exsit['level']+1;
        $row = M('Department')->add($data);
        if($row){
            $arr = array('status'=>1,'msg'=>'添加成功');
            echo json_encode($arr);
            exit();        
        }else{
            $arr = array('status'=>-1,'msg'=>'添加失败');
            echo json_encode($arr);
            exit();              
        }
     }
    /**
     * 删除部门
     * 王旭明
     * 2017.3.30
     */
     public function delete_department(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_POST['id'];
        $department_exsit = M('Department')->where(array('id'=>$id))->find();
        if(!$department_exsit){
            $arr = array('status'=>-1,'msg'=>'部门不存在');
            echo json_encode($arr);
            exit();  
        }
        $user_exsit = M('User')->where(array('department_id'=>$id,'is_delete'=>-1))->find();
        if($user_exsit){
            $arr = array('status'=>-1,'msg'=>'该部门下还有用户,请先清理用户');
            echo json_encode($arr);
            exit();            
        }
        $row = M('Department')->where(array('id'=>$id))->delete();
        if($row){
            $arr = array('status'=>1,'msg'=>'删除成功');
            echo json_encode($arr);
            exit();        
        }else{
            $arr = array('status'=>-1,'msg'=>'删除失败');
            echo json_encode($arr);
            exit();              
        }
     }
    /**
     * 删除部门（群）
     * 王旭明
     * 2017.3.30
     */
    public function delete_department_list(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        foreach($_GET['id'] as $key=>$val){
            $user_exsit = M('User')->where(array('department_id'=>$val,'is_delete'=>-1))->find();
            if(!$user_exsit){ 
                M('Department')->where(array('id'=>$val))->delete();       
            }
        }
        $arr = array('status'=>1,'msg'=>'删除成功');
        echo json_encode($arr);
        exit();  
    }
    /**
     * 编辑部门
     * 王旭明
     * 2017.3.30
     */
     public function edit_department(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if(!$_POST['name']){
             $arr = array('status'=>-1,'msg'=>'部门名称不能为空');
             echo json_encode($arr);
             exit();
         }
        if(!$_POST['ssdw']){
             $arr = array('status'=>-1,'msg'=>'上级部门不能为空');
             echo json_encode($arr);
             exit();
         }
         if (!$_POST['fl']){
             $arr = array('status'=>-1,'msg'=>'部门分类不能为空');
             echo json_encode($arr);
             exit();
         }
         if (!$_POST['emailid']){
             $arr = array('status'=>-1,'msg'=>'邮件分类不能为空');
             echo json_encode($arr);
             exit();
         }
         $pids = explode(',', $_POST['ssdw']);
         foreach ($pids as $pid){
             $department_exsit = M('Department')->where(array('id'=>$pid))->find();
             if(!$department_exsit){
                 $arr = array('status'=>-1,'msg'=>'上级部门不存在,请重试');
                 echo json_encode($arr);
                 exit();
             }
         }
        $data['d_name'] = $_POST['name'];
        $data['parent_id'] = $_POST['ssdw'];
        $data['dp_category_task_id'] = $_POST['fl'];
         $data['department_category_id'] = $_POST['emailid'];
        $data['sort'] = $_POST['sort'];
//        $data['level'] = $department_exsit['level']+1;
        $row = M('Department')->where(array('id'=>$_POST['id']))->save($data);
        // echo M('Department')->getLastSql();
         $arr = array('status'=>1,'msg'=>'修改成功');
         echo json_encode($arr);
         exit();
     }
    /**
     * 公告列表
     * 王旭明
     * 2017.3.30
     */
     public function gonggao_list(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_SESSION['userinfo']['department_id'];

        if(I("get.start") || I("get.end")){
            $start = strtotime(I("get.start"));
            $endday = I("get.end")." 23:59:59";
            $end = strtotime($endday);
            $where['create_time'] = array('between',"{$start},{$end}");
        }
        if($key = I('get.keyword')){
           $where['title'] = array('like',"%{$key}%");
        }
        $rs_count = M('News')->where($where)
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

        $rs = M('News')->where($where)
            ->field('*, nk_news.id as nid, nk_news.create_time as created_time')
            ->limit($Page->firstRow.','.$Page->listRows)
            ->order('create_time desc')
            ->select();
         // echo M('News')->getLastSql();
         // return;
        if ($rs){
            foreach ($rs as $k=>$item){
                if ($item['department_id'] == 0){
                    $rs[$k]['name_list'] = '全体';
                    continue;
                }
                $departmentIDs = explode(',', $item['department_id']);
                $de_name = '';
                foreach ($departmentIDs as $key => $value) {
                    $department_name = M('Department')->where(array('id'=>$value))->field('d_name')->find();
                    $de_name = $de_name.','.$department_name['d_name'];
                }
                $last_name = substr($de_name, 1);
                $rs[$k]['name_list'] = $last_name;
            }
            if ($rs){
                array_values($rs);
            }
        }
        $this->assign('page',$show);
        $this->assign('news', $rs);
        $this->display();
     }
    /**
     * 新增公告
     * 王旭明
     * 2017.3.30
     */
     public function add_news(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        // import('ORG.Util.Page');// 导入分页类
        // $rs = M('News')
        //     ->field('*, nk_news.id as nid, nk_news.create_time as created_time')
        //     ->limit($Page->firstRow.','.$Page->listRows)
        //     ->order('create_time desc')
        //     ->select();
        // $this->assign('page',$show);
        // $this->assign('news', $rs);

         $depCate = D('DepartmentCategoryTask')->select();
         foreach ($depCate as $k => $v){
             $depCate[$k]['data'] =  D("department")->where(array('nk_department.dp_category_task_id'=>$v['id']))->select();
         }
         $this->assign('depCate', $depCate);

        $this->display('system_gonggao');
     }
    /**
     * 公告删除
     * 王旭明
     * 2017.3.31
     */
     public function gonggao_del(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_POST['id'];
        $gonggao_exsit = M('News')->where(array('id'=>$id))->find();
        if(!$gonggao_exsit){
            $arr = array('status'=>-1,'msg'=>'公告不存在');
            echo json_encode($arr);
            exit();  
        }
        $row = M('News')->where(array('id'=>$id))->delete();
        if($row){
            $arr = array('status'=>1,'msg'=>'删除成功');
            echo json_encode($arr);
            exit();        
        }else{
            $arr = array('status'=>-1,'msg'=>'删除失败');
            echo json_encode($arr);
            exit();              
        }
     }
    /**
     * 删除公告
     * 王旭明
     * 2017.3.31
     */
    public function gonggao_delete(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        foreach($_GET['id'] as $key=>$val){
            M('News')->where(array('id'=>$val))->delete();
        }
        $arr = array('status'=>1,'msg'=>'删除成功');
        echo json_encode($arr);
        exit();  
    }
     /**
     * 操作新增公告
     * 王旭明
     * 2017.3.30
     */
     public function postGongGao(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if (empty($_POST['rwbt'])){
            $this->error('公告标题不能为空,页面跳转中...');
        }
        /*if (empty($_POST['zysx'])){
            $this->error('公告描述不能为空,页面跳转中...');
        }*/
        if (empty($_POST['editorValue'])){
            $this->error('内容详情不能为空,页面跳转中...');
        }
         if (empty($_POST['ggtype'])){
             $this->error('公告分类不能为空,页面跳转中...');
         }

        $data['department_id'] = $_POST['fbfw'];
        $data['title'] = $_POST['rwbt'];
        $data['desc'] = $_POST['zysx'];
        $data['content'] = $_POST['editorValue'];
        $data['create_time'] = time();
        $data['type'] = $_POST['ggtype'];
        $did = M('News')->add($data);
        $this->success('发布成功，页面跳转中...', 'gonggao_list');
     }   
     /**
     * 编辑公告
     * 王旭明
     * 2017.3.31
     */
     public function gonggao_detail(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_GET['id'];
        $detail = M('News')->where(array('id'=>$id))->find();
         $detail['department_list'] = "";
         $oldArray=array();
        if($detail['department_id']!=0){
            $d_list = explode(',',$detail['department_id']);
            $d_name_list = '';
            foreach ($d_list as $key => $value) {
                $d_name = M('Department')->where(array('id'=>$value))->find();
                $d_name_list = $d_name_list.';'.$d_name['d_name'];
                array_push($oldArray, $d_name);
            }
            $detail['department_list'] = substr($d_name_list,1);
        }
        // echo $detail['department_list'];
        // return;
        $this->assign('detail',$detail);
        $this->assign('old_parent',$oldArray);

         $depCate = D('DepartmentCategoryTask')->select();
         foreach ($depCate as $k => $v){
             $depCate[$k]['data'] =  D("department")->where(array('nk_department.dp_category_task_id'=>$v['id']))->select();
         }
         $this->assign('depCate', $depCate);


        $this->display();
     } 
    /**
     * 操作编辑公告
     * 王旭明
     * 2017.3.30
     */
     public function postEditGongGao(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if (empty($_POST['rwbt'])){
            $this->error('公告标题不能为空,页面跳转中...');
        }
        /*if (empty($_POST['zysx'])){
            $this->error('公告描述不能为空,页面跳转中...');
        }*/
        if (empty($_POST['editorValue'])){
            $this->error('内容详情不能为空,页面跳转中...');
        }

         if (empty($_POST['ggtype'])){
             $this->error('公告分类不能为空,页面跳转中...');
         }

        $data['department_id'] = $_POST['fbfw'];
        $data['title'] = $_POST['rwbt'];
        $data['desc'] = $_POST['zysx'];
        $data['content'] = $_POST['editorValue'];
         $data['type'] = $_POST['ggtype'];
        $did = M('News')->where(array('id'=>$_POST['id']))->save($data);
        $this->success('修改成功，页面跳转中...', 'gonggao_list');
     }       
    /**
     * 活动列表
     * 王旭明
     * 2017.3.31
     */
     public function activity_list(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_SESSION['userinfo']['department_id'];
        import('ORG.Util.Page');// 导入分页类


        $where = array();
        if(I("get.start") || I("get.end")){
             $start = strtotime(I("get.start"));
             $endday = I("get.end")." 23:59:59";
             $end = strtotime($endday);
             $where['a.create_time'] = array('between',"{$start},{$end}");
         }
         if($key = I('get.keyword')){
             $where['title'] = array('like',"%{$key}%");
         }
        $count      = M('Activity')->alias("a")->where($where)->count();// 查询满足要求的总记录数
         $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('Activity')
               ->alias('a')
               ->join('nk_activity_category b on a.ac_id=b.id')
               ->order('create_time desc')
               ->where($where)
               ->limit($Page->firstRow.','.$Page->listRows)
               ->field('a.*,b.category_name')
               ->select();
        $this->assign('page',$show);
        $this->assign('news', $rs);
        $this->display();
     }
    /**
     * 新增活动
     * 王旭明
     * 2017.3.31
     */
     public function add_activity(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $category_list = M('ActivityCategory')->select();
        $this->assign('category_list',$category_list);
        $this->display('system_huodong');
     }
     /**
     * 操作新增活动
     * 王旭明
     * 2017.3.31
     */
     public function postActivity(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if (empty($_POST['category_name'])){
            $this->error('请选择分类,页面跳转中...');
        }
        if (empty($_POST['rwbt'])){
            $this->error('活动标题不能为空,页面跳转中...');
        }
        if (empty($_POST['zysx'])){
            $this->error('活动摘要不能为空,页面跳转中...');
        }
        if (empty($_POST['editorValue'])){
            $this->error('内容详情不能为空,页面跳转中...');
        }
        // dump($_FILES);
        if(empty($_FILES)){
            $this->error('必须上传图片,页面跳转中...');
        }
        // return;
        //上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     11048576 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =     './Public/Picture/'; // 设置附件上传根目录
        $upload->savePath  =     ''; // 设置附件上传（子）目录
        // 上传文件
        $info   =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }
        // dump($info['photo']['savepath']);
        // return;
        $data['pic_url'] = "/Public/Picture/".$info['photo']['savepath'].$info['photo']['savename'];
        $data['ac_id'] = $_POST['category_name'];
        $data['title'] = $_POST['rwbt'];
        $data['desc'] = $_POST['zysx'];
        $data['content'] = $_POST['editorValue'];
        $data['create_time'] = time();
        $did = M('Activity')->add($data);
        $this->success('发布成功，页面跳转中...', 'activity_list');
     }    
    /**
     * 编辑活动
     * 王旭明
     * 2017.3.31
     */
     public function activity_detail(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_GET['id'];
        $detail = M('Activity')->where(array('id'=>$id))->find();
        $category_list = M('ActivityCategory')->select();
        $this->assign('category_list',$category_list);
        $this->assign('detail',$detail);
        $this->display();
     } 
     /**
     * 操作编辑活动
     * 王旭明
     * 2017.3.31
     */
     public function editActivity(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();
        }
        if (empty($_POST['category_name'])){
            $this->error('请选择分类,页面跳转中...');
        }
        if (empty($_POST['rwbt'])){
            $this->error('活动标题不能为空,页面跳转中...');
        }
        if (empty($_POST['zysx'])){
            $this->error('活动摘要不能为空,页面跳转中...');
        }
        if (empty($_POST['editorValue'])){
            $this->error('内容详情不能为空,页面跳转中...');
        }
        // dump($_FILES['photo']);
        // return;
        if(!empty($_FILES['photo']['tmp_name'])){
            // $this->error('必须上传图片,页面跳转中...');
                    //上传图片
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize   =     11048576 ;// 设置附件上传大小
            $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
            $upload->rootPath  =     './Public/Picture/'; // 设置附件上传根目录
            $upload->savePath  =     ''; // 设置附件上传（子）目录
            // 上传文件
            $info   =   $upload->upload();
            if(!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            }
            // dump($info['photo']['savepath']);
            // return;
            $data['pic_url'] = "/Public/Picture/".$info['savepath'].$info['savename'];
        }
        // return;

        $data['ac_id'] = $_POST['category_name'];
        $data['title'] = $_POST['rwbt'];
        $data['desc'] = $_POST['zysx'];
        $data['content'] = $_POST['editorValue'];
        $data['create_time'] = time();
        $did = M('Activity')->where(array('id'=>$_POST['id']))->save($data);
        $this->success('修改成功，页面跳转中...', 'activity_list');
     }    
    /**
     * 活动删除
     * 王旭明
     * 2017.3.31
     */
     public function delete_activity(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_POST['id'];
        $gonggao_exsit = M('Activity')->where(array('id'=>$id))->find();
        if(!$gonggao_exsit){
            $arr = array('status'=>-1,'msg'=>'活动不存在');
            echo json_encode($arr);
            exit();  
        }
        $row = M('Activity')->where(array('id'=>$id))->delete();
        if($row){
            $arr = array('status'=>1,'msg'=>'删除成功');
            echo json_encode($arr);
            exit();        
        }else{
            $arr = array('status'=>-1,'msg'=>'删除失败');
            echo json_encode($arr);
            exit();              
        }
     }
    /**
     * 删除活动
     * 王旭明
     * 2017.3.31
     */
    public function act_delete(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        foreach($_GET['id'] as $key=>$val){
            M('Activity')->where(array('id'=>$val))->delete();
        }
        $arr = array('status'=>1,'msg'=>'删除成功');
        echo json_encode($arr);
        exit();  
    }

    /**
     * 简报列表
     * 王旭明
     * 2017.3.31
     */
     public function jianbao_list(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_SESSION['userinfo']['department_id'];
        import('ORG.Util.Page');// 导入分页类

         $where = array();
         if(I("get.start") || I("get.end")){
             $start = strtotime(I("get.start"));
             $endday = I("get.end")." 23:59:59";
             $end = strtotime($endday);
             $where['create_time'] = array('between',"{$start},{$end}");
         }
         if($key = I('get.keyword')){
             $where['title'] = array('like',"%{$key}%");
         }
        $count      = M('Newspaper')->where($where)->count();// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('Newspaper')
               ->where($where)
               ->order('create_time desc')
                ->limit($Page->firstRow.','.$Page->listRows)
               ->select();
        $this->assign('page',$show);
        $this->assign('news', $rs);
        $this->display();
     }
    /**
     * 发简报
     * 王旭明
     * 2017.3.31
     */
     public function add_jianbao(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $category_list = M('ActivityCategory')->select();
        $this->assign('category_list',$category_list);
        $this->display('system_jianbao');
     }
    //  /**
    //  * 操作新增简报
    //  * 王旭明
    //  * 2017.3.31
    //  */
     /*public function postJianBao(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if (empty($_POST['rwbt'])){
            $this->error('活动标题不能为空,页面跳转中...');
        }
        if (empty($_POST['zysx'])){
            $this->error('活动摘要不能为空,页面跳转中...');
        }
        // dump($_FILES);
        if(empty($_FILES['picsc']['tmp_name'])){
            $this->error('必须上传图片,页面跳转中...');
        }
        if(empty($_FILES['pdfsc']['tmp_name'])){
            $this->error('必须上传pdf,页面跳转中...');
        }
        // return;
        //上传图片
        if (!empty($_FILES)){
            //上传图片
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize   =     11048576 ;// 设置附件上传大小
            $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg','pdf');// 设置附件上传类型
            $upload->rootPath  =     './Public/Picture/'; // 设置附件上传根目录
            $upload->savePath  =     ''; // 设置附件上传（子）目录
            // 上传文件
            $info   =   $upload->upload();
            if(!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            }else{// 上传成功 获取上传文件信息
                // dump($info);

                foreach($info as $key=>$file){
                    if($key=='picsc'){
                        if(!in_array($file['ext'],array('jpg', 'gif', 'png', 'jpeg'))){
                             $this->error('上传图片格式不正确,页面跳转中...');
                        }
                        $data['pic_url'] = "/Public/Picture/".$file['savepath'].$file['savename'];
                    }else{
                        if(!in_array($file['ext'],array('pdf'))){
                             $this->error('请上传pdf格式文件,页面跳转中...');
                        }
                        $data['file_url'] = "/Public/Picture/".$file['savepath'].$file['savename'];
                        $data['file_name'] = $file['name'];
                    }            
                }
            }
            // $pids = substr($pids, 0, -1);
        }

        // return;
        $data['title'] = $_POST['rwbt'];
        $data['desc'] = $_POST['zysx'];
        $data['create_time'] = time();
        $did = M('Pdf')->add($data);
        $this->success('发布成功，页面跳转中...', 'jianbao_list');
     }*/
    /**
     * 简报提交表单
     * 孙璠
     * 2017.4.6
     */
    public function postJianBao()
    {
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();
        }
        if (empty($_POST['rwbt'])){
            $this->error('简报标题不能为空,页面跳转中...');
        }
        if (empty($_POST['zysx'])){
            $this->error('简报摘要不能为空,页面跳转中...');
        }
        if (empty($_POST['editorValue'])){
            $this->error('内容详情不能为空,页面跳转中...');
        }
        /*if(empty($_FILES)){
            $this->error('必须上传图片,页面跳转中...');
        }
        //上传图片
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize   =     11048576 ;// 设置附件上传大小
        $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
        $upload->rootPath  =     './Public/Picture/'; // 设置附件上传根目录
        $upload->savePath  =     ''; // 设置附件上传（子）目录
        // 上传文件
        $info   =   $upload->upload();
        if(!$info) {// 上传错误提示错误信息
            $this->error($upload->getError());
        }
        $data['pic_url'] = "/Public/Picture/".$info['photo']['savepath'].$info['photo']['savename'];*/
        $data['title'] = $_POST['rwbt'];
        $data['desc'] = $_POST['zysx'];
        $data['content'] = $_POST['editorValue'];
        $data['create_time'] = time();
        $did = M('Newspaper')->add($data);
        $this->success('发布成功，页面跳转中...', 'jianbao_list');
    }
     /**
      * 编辑活动
      * 王旭明
      * 2017.3.31
      */
     public function jianbao_detail(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_GET['id'];
        $detail = M('Newspaper')->where(array('id'=>$id))->find();
        $this->assign('detail',$detail);
        $this->display();
     } 
      /**
      * 操作编辑简报
      * 王旭明
      * 2017.3.31
      */
     /*public function editJianBao(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if (empty($_POST['rwbt'])){
            $this->error('活动标题不能为空,页面跳转中...');
        }
        if (empty($_POST['zysx'])){
            $this->error('活动摘要不能为空,页面跳转中...');
        }
        // dump($_FILES);
        // if(empty($_FILES['picsc']['tmp_name'])){
        //     $this->error('必须上传图片,页面跳转中...');
        // }
        // if(empty($_FILES['pdfsc']['tmp_name'])){
        //     $this->error('必须上传pdf,页面跳转中...');
        // }
        // return;
        //上传图片
        // dump($_FILES);
        // return;
        if (!empty($_FILES['picsc']['tmp_name'])||!empty($_FILES['pdfsc']['tmp_name'])){
            //上传图片
            $upload = new \Think\Upload();// 实例化上传类
            $upload->maxSize   =     11048576 ;// 设置附件上传大小
            $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg','pdf');// 设置附件上传类型
            $upload->rootPath  =     './Public/Picture/'; // 设置附件上传根目录
            $upload->savePath  =     ''; // 设置附件上传（子）目录
            // 上传文件
            $info   =   $upload->upload();
            if(!$info) {// 上传错误提示错误信息
                $this->error($upload->getError());
            }else{// 上传成功 获取上传文件信息
                // dump($info);
                foreach($info as $key=>$file){
                    if($key=='picsc'){
                        if(!in_array($file['ext'],array('jpg', 'gif', 'png', 'jpeg'))){
                             $this->error('上传图片格式不正确,页面跳转中...');
                        }
                        $data['pic_url'] = "/Public/Picture/".$file['savepath'].$file['savename'];
                    }else{
                        if(!in_array($file['ext'],array('pdf'))){
                             $this->error('请上传pdf格式文件,页面跳转中...');
                        }
                        $data['file_url'] = "/Public/Picture/".$file['savepath'].$file['savename'];
                        $data['file_name'] = $file['name'];
                    }            
                }
            }
            // $pids = substr($pids, 0, -1);
        }
        // return;
        $data['title'] = $_POST['rwbt'];
        $data['desc'] = $_POST['zysx'];
        $data['create_time'] = time();
        $did = M('Pdf')->where(array('id'=>$_POST['id']))->save($data);
        $this->success('修改成功，页面跳转中...', 'jianbao_list');
     }*/
     public function editJianBao()
     {
         if($_SESSION['userinfo']['department_id']!=1){
             $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
             echo json_encode($arr);
             exit();
         }
         if (empty($_POST['rwbt'])){
             $this->error('简报标题不能为空,页面跳转中...');
         }
         if (empty($_POST['zysx'])){
             $this->error('简报摘要不能为空,页面跳转中...');
         }
         if (empty($_POST['editorValue'])){
             $this->error('内容详情不能为空,页面跳转中...');
         }
         /*if(!empty($_FILES['photo']['tmp_name'])){
             //上传图片
             $upload = new \Think\Upload();// 实例化上传类
             $upload->maxSize   =     11048576 ;// 设置附件上传大小
             $upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
             $upload->rootPath  =     './Public/Picture/'; // 设置附件上传根目录
             $upload->savePath  =     ''; // 设置附件上传（子）目录
             // 上传文件
             $info   =   $upload->upload();
             if(!$info) {// 上传错误提示错误信息
                 $this->error($upload->getError());
             }
             $data['pic_url'] = "/Public/Picture/".$info['savepath'].$info['savename'];
         }*/

         $data['title'] = $_POST['rwbt'];
         $data['desc'] = $_POST['zysx'];
         $data['content'] = $_POST['editorValue'];
         $data['create_time'] = time();
         $did = M('Newspaper')->where(array('id'=>$_POST['id']))->save($data);
         $this->success('修改成功，页面跳转中...', 'jianbao_list');
     }
    /**
     * 简报删除
     * 王旭明
     * 2017.3.31
     */
     public function delete_jianbao(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $id = $_POST['id'];
        $gonggao_exsit = M('Newspaper')->where(array('id'=>$id))->find();
        if(!$gonggao_exsit){
            $arr = array('status'=>-1,'msg'=>'简报不存在');
            echo json_encode($arr);
            exit();  
        }
        $row = M('Newspaper')->where(array('id'=>$id))->delete();
        if($row){
            $arr = array('status'=>1,'msg'=>'删除成功');
            echo json_encode($arr);
            exit();        
        }else{
            $arr = array('status'=>-1,'msg'=>'删除失败');
            echo json_encode($arr);
            exit();              
        }
     }
    /**
     * 删除简报
     * 王旭明
     * 2017.3.31
     */
    public function jian_delete(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        foreach($_GET['id'] as $key=>$val){
            M('Newspaper')->where(array('id'=>$val))->delete();
        }
        $arr = array('status'=>1,'msg'=>'删除成功');
        echo json_encode($arr);
        exit();  
    }
    /**
     * 录入常规性任务(网上申报)
     * 王旭明
     * 2017.04.24
     */
    public function task_common_w(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $keyword = $data['keyword'];
        if($keyword){
            $where['nk_department.d_name'] = array('like','%'.$keyword.'%');
        }
        $department_level = M('User')->alias('a')
                    ->join('nk_department b on a.department_id=b.id')
                    ->where(array('a.id'=>$_SESSION['userinfo']['id']))
                    ->field('b.id,b.parent_id,b.level')
                    ->find();
        if($department_level['id']==7){
            $return_data = array(array('id'=>-1,'name'=>'创文办'),array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'));
        }elseif($department_level['id']==1){
            $return_data = array(array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'),array('id'=>'3','name'=>'街道'),array('id'=>'4','name'=>'各指挥部'));
        }else{
            $return_data = '';
        }
        if($return_data){
            $dt=0;
            foreach ($return_data as $key => $value) {
                $where['nk_department.dp_category_task_id']=$value['id'];
                $return_data[$key]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
                if($return_data[$key]['list']==null){
                    $return_data[$key]['list']=array();
                }
            }
        }else{
            $dt=1;
            $list = array();
            $return_data = array(array('id'=>'null','name'=>'null'));
            $pid = $department_level['id'];
            $where['nk_department.parent_id'] = array('like',array("%,$pid","%,$pid,%","$pid,%","$pid"),'OR');
            // if()
            $return_data[0]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
            if($return_data[0]['list']==null){
                    $return_data[0]['list']=array();
                }
        }
        $this->assign('return_data',$return_data);
        $this->assign('dt',$dt);
        $this->display();
    }
    /**
     * 录入常规性任务(网上申报)
     * 王旭明
     * 2017.04.24
     */
    public function post_task_common_w(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if($_POST['way'][0]==1){
            if(!$_POST['shjdw']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['rwbt']){
                $this->error('指标名称不能为空');
            }
            if(!$_POST['zysx']){
                $this->error('测评内容不能为空');
            }
            if(!$_POST['cpbz']){
                $this->error('测评标准不能为空');
            }
            if(!$_POST['sbcl']){
                $this->error('网上申报具体要求不能为空');
            }
            if(!$_POST['qtdwid']&&!$_POST['zrdwid']){
                $this->error('牵头单位和责任单位不能同时为空');
            }
            $data['type']=1;
            $data['headline'] = $_POST['shjdw'];
            $data['title'] = $_POST['sbcl'];
            $data['index_name'] = $_POST['rwbt'];
            $data['test_content'] = $_POST['zysx'];
            $data['evaluation_standard'] = $_POST['cpbz'];
            $qt = $_POST['qtdwid'];
            $zr = $_POST['zrdwid'];
        }else{
            if(!$_POST['shjdw2']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['rwbt2']){
                $this->error('工作任务不能为空');
            }
            if(!$_POST['jtnr2']){
                $this->error('具体内容不能为空');
            }
            if(!$_POST['sbcl2']){
                $this->error('上报材料和检查提示不能为空');
            }
            if(!$_POST['qtdwid2']&&!$_POST['zrdwid2']){
                $this->error('牵头单位和责任单位不能同时为空');
            }
            $data['type'] = 2;
            $data['headline'] = $_POST['shjdw2'];
            $data['title'] = $_POST['jtnr2'];
            $data['index_name'] = $_POST['rwbt2'];
            $data['test_content'] = $_POST['sbcl2'];
            $qt = $_POST['qtdwid2'];
            $zr = $_POST['zrdwid2'];
        }
        $data['send_time'] = time();
        $result = M('DocumentCommon')->add($data);
        if($result){
            $qt = explode(',',$qt);
            foreach ($qt as $key => $value) {
                $send['document_id'] = $result;
                $send['to_id'] = $value;
                $send['dtype'] = 1;
                $send_to = M('SendDocumentToCommon')->add($send);
            }
            $zr = explode(',',$zr);
            foreach ($zr as $key => $value) {
                $send['document_id'] = $result;
                $send['to_id'] = $value;
                $send['dtype'] = 2;
                $send_to = M('SendDocumentToCommon')->add($send);
            }
            $this->success('发布成功');
        }else{
            $this->error('发布出错,请稍后再试');
        }
    }
    /**
     * 录入常规性任务(实地考察)
     * 王旭明
     * 2017.04.24
     */
    public function task_common_w_sd(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $keyword = $data['keyword'];
        if($keyword){
            $where['nk_department.d_name'] = array('like','%'.$keyword.'%');
        }
        $department_level = M('User')->alias('a')
                    ->join('nk_department b on a.department_id=b.id')
                    ->where(array('a.id'=>$_SESSION['userinfo']['id']))
                    ->field('b.id,b.parent_id,b.level')
                    ->find();
        if($department_level['id']==7){
            $return_data = array(array('id'=>-1,'name'=>'创文办'),array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'));
        }elseif($department_level['id']==1){
            $return_data = array(array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'),array('id'=>'3','name'=>'街道'),array('id'=>'4','name'=>'各指挥部'));
        }else{
            $return_data = '';
        }
        if($return_data){
            $dt=0;
            foreach ($return_data as $key => $value) {
                $where['nk_department.dp_category_task_id']=$value['id'];
                $return_data[$key]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
                if($return_data[$key]['list']==null){
                    $return_data[$key]['list']=array();
                }
            }
        }else{
            $dt=1;
            $list = array();
            $return_data = array(array('id'=>'null','name'=>'null'));
            $pid = $department_level['id'];
            $where['nk_department.parent_id'] = array('like',array("%,$pid","%,$pid,%","$pid,%","$pid"),'OR');
            // if()
            $return_data[0]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
            if($return_data[0]['list']==null){
                    $return_data[0]['list']=array();
                }
        }
        $this->assign('return_data',$return_data);
        $this->assign('dt',$dt);
        $this->display();
    }
   /**
     * 录入常规性任务(实地考察)
     * 王旭明
     * 2017.04.24
     */
    public function post_task_common_w_sd(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if($_POST['way'][0]==1){
            if(!$_POST['shjdw']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['rwbt']){
                $this->error('指标名称不能为空');
            }
            if(!$_POST['zysx']){
                $this->error('测评内容不能为空');
            }
            if(!$_POST['cpbz']){
                $this->error('测评标准不能为空');
            }
            if(!$_POST['sbcl']){
                $this->error('实地考察点位及标准不能为空');
            }
            if(!$_POST['zrdwid']){
                $this->error('责任单位不能为空');
            }
            $data['type']=6;
            $data['headline'] = $_POST['shjdw'];
            $data['title'] = $_POST['sbcl'];
            $data['index_name'] = $_POST['rwbt'];
            $data['test_content'] = $_POST['zysx'];
            $data['evaluation_standard'] = $_POST['cpbz'];
            $zr = $_POST['zrdwid'];
        }else{
            if(!$_POST['shjdw2']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['cpbz2']){
                $this->error('测评标准不能为空');
            }
            if(!$_POST['sbcl2']){
                $this->error('实地考察要求不能为空');
            }
            if(!$_POST['zrdwid2']){
                $this->error('责任单位不能为空');
            }
            $data['type'] = 3;
            $data['headline'] = $_POST['shjdw2'];
            $data['title'] = $_POST['sbcl2'];
            $data['index_name'] = $_POST['cpbz2'];
            $zr = $_POST['zrdwid2'];
        }
        $data['send_time'] = time();
        $result = M('DocumentCommon')->add($data);
        if($result){
            $zr = explode(',',$zr);
            foreach ($zr as $key => $value) {
                $send['document_id'] = $result;
                $send['to_id'] = $value;
                $send['dtype'] = 2;
                $send_to = M('SendDocumentToCommon')->add($send);
            }
            $this->success('发布成功');
        }else{
            $this->error('发布出错,请稍后再试');
        }
    }
    /**
     * 录入常规性任务(文件调查)
     * 王旭明
     * 2017.04.24
     */
    public function task_common_w_wj(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $keyword = $data['keyword'];
        if($keyword){
            $where['nk_department.d_name'] = array('like','%'.$keyword.'%');
        }
        $department_level = M('User')->alias('a')
                    ->join('nk_department b on a.department_id=b.id')
                    ->where(array('a.id'=>$_SESSION['userinfo']['id']))
                    ->field('b.id,b.parent_id,b.level')
                    ->find();
        if($department_level['id']==7){
            $return_data = array(array('id'=>-1,'name'=>'创文办'),array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'));
        }elseif($department_level['id']==1){
            $return_data = array(array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'),array('id'=>'3','name'=>'街道'),array('id'=>'4','name'=>'各指挥部'));
        }else{
            $return_data = '';
        }
        if($return_data){
            $dt=0;
            foreach ($return_data as $key => $value) {
                $where['nk_department.dp_category_task_id']=$value['id'];
                $return_data[$key]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
                if($return_data[$key]['list']==null){
                    $return_data[$key]['list']=array();
                }
            }
        }else{
            $dt=1;
            $list = array();
            $return_data = array(array('id'=>'null','name'=>'null'));
            $pid = $department_level['id'];
            $where['nk_department.parent_id'] = array('like',array("%,$pid","%,$pid,%","$pid,%","$pid"),'OR');
            // if()
            $return_data[0]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
            if($return_data[0]['list']==null){
                    $return_data[0]['list']=array();
                }
        }
        $this->assign('return_data',$return_data);
        $this->assign('dt',$dt);
        $this->display();
    }
   /**
     * 录入常规性任务(文件调查)
     * 王旭明
     * 2017.04.24
     */
    public function post_task_common_w_wj(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if($_POST['way'][0]==1){
            if(!$_POST['shjdw']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['rwbt']){
                $this->error('指标名称不能为空');
            }
            if(!$_POST['zysx']){
                $this->error('测评内容不能为空');
            }
            if(!$_POST['sbcl']){
                $this->error('问卷主要内容不能为空');
            }
            if(!$_POST['qtdwid']){
                $this->error('牵头单位不能为空');
            }
            $data['type']=5;
            $data['headline'] = $_POST['shjdw'];
            $data['title'] = $_POST['zysx'];
            $data['index_name'] = $_POST['rwbt'];
            $data['test_content'] = $_POST['sbcl'];
            $qt = $_POST['qtdwid'];
        }else{
            if(!$_POST['shjdw2']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['zysx2']){
                $this->error('测评标准不能为空');
            }
            if(!$_POST['sbcl2']){
                $this->error('问卷主要内容不能为空');
            }
            if(!$_POST['qtdwid2']){
                $this->error('牵头单位不能为空');
            }
            $data['type'] = 4;
            $data['headline'] = $_POST['shjdw2'];
            $data['title'] = $_POST['zysx2'];
            $data['index_name'] = $_POST['sbcl2'];
            $qt = $_POST['qtdwid2'];

        }
        $data['send_time'] = time();
        $result = M('DocumentCommon')->add($data);
        if($result){
            $qt = explode(',',$qt);
            foreach ($qt as $key => $value) {
                $send['document_id'] = $result;
                $send['to_id'] = $value;
                $send['dtype'] = 1;
                $send_to = M('SendDocumentToCommon')->add($send);
            }
            $this->success('发布成功');
        }else{
            $this->error('发布出错,请稍后再试');
        }
    }
    /**
     * 常规性任务列表
     * 孙璠
     * 2017.4.7
     */
    public function commonIndex()
    {
//        dump($_GET);
        $type = $_GET['type']?$_GET['type']:1;
        $where = array();
        /*if ($type==1){
            $where = "`type`=$type";
        }elseif ($type==2){
            $where = "`type` IN (2,3,4)";
        }*/
        $where = "`type`=$type";

        $this->assign('type', $type);

        if ($_GET['keyword']){
            $keyword=$_GET['keyword'];
            $department_list = M('Department')->where("d_name like '%$keyword%'")->select();
            $document_arr = '';
            foreach ($department_list as $key => $value) {
                $document_id_list = M('SendDocumentToCommon')->where(array('to_id'=>$value['id']))->group('document_id')->select();
                foreach ($document_id_list as $key1 => $value1) {
                    $document_arr = $document_arr.','.$value1['document_id'];
                }
            }
            if(!empty($document_arr)){
                $document_arr = substr($document_arr,1);
            }
            /*if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
                    $where['nk_document_common.headline'] = array('like',"%$keyword%");
                }elseif($key2 ==2){
                    $where['nk_document_common.title|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                }elseif($key2 ==3){
                    $where['nk_document_common.title|nk_document_common.headline|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                }elseif($key2 ==4){
                    $where['nk_document_common.id'] = array('in',$document_arr);
                }
            }else{
                $where['nk_document_common.title|nk_document_common.headline|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                if (!empty($document_arr))
                {
                    $where['nk_document_common.id'] = array('in',$document_arr);
                }
            }*/
            if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
                    $where .= " and (`headline` like '%$keyword%'";
                }elseif($key2 ==2){
                    $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                }elseif($key2 ==3){
                    $where .=" and ((`headline` like '%$keyword%')or(`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                }elseif($key2 ==4){
                    $where .=" and (`id` in ($document_arr)";
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
            $this->assign('keyword',$keyword);
        }
//        $where['_logic'] = 'OR';

        import('ORG.Util.Page');// 导入分页类
        $de = M('DocumentCommon')->where($where)->group('headline')->select();
        $count      = count($de);// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('DocumentCommon')->where($where)->limit($Page->firstRow.','.$Page->listRows)->group('headline')->select();
//        echo M('DocumentCommon')->getLastSql();//die();


        $db = M('SendDocumentToCommon');
        foreach ($rs as $k=>$item)
        {
            $ids = array();
            $id = M('DocumentCommon')->where(array('headline'=>$item['headline']))->field('id')->select();
            foreach ($id as $a)
            {
                array_push($ids, $a['id']);
            }
            $rs[$k]['lead_name'] = "";
            $rs[$k]['responsibility_name'] = "";
            foreach ($ids as $did)
            {
                //牵头单位
                $qts = $db
                    ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                    ->where(array('dtype'=>1, 'document_id'=>$did))
                    ->field('d_name,to_id')
                    ->select();

                if ($qts){
                    foreach ($qts as $qt){
//                        dump($qt['d_name']);
                        if($qt['d_name']!=''){
                            $rs[$k]['lead_name'] .= $qt['d_name'].";";
                        }
                    }
                }
//                die();


                //责任单位
                $zrs = $db
                    ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                    ->where(array('dtype'=>2, 'document_id'=>$did))
                    ->field('d_name,to_id')
                    ->select();

                if ($zrs){
                    foreach ($zrs as $zr){
                        if($zr['d_name']!=''){
                            $rs[$k]['responsibility_name'] .= $zr['d_name'].";";
                        }
                    }
                }
            }
        }

        $this->assign('rs', $rs);
        // dump($rs);die;
        $this->assign('page', $show);
        $this->display();
    }
    /**
     * 常规性任务 大任务下的小列表
     * 孙璠
     * 2017.4.7
     */
    public function detailcommonlist()
    {
        $headline = $_GET['head'];

//        $typewhere['headline'] = $headline;
        $where = " `headline` like '%$headline%'";
        $type = $_GET['type']?$_GET['type']:1;
        $this->assign('type',$type);
//        $where = array();
        if ($type==1){
//            $typewhere['type'] = $type;
            $where .= " AND `type`=$type";
        }elseif ($type==2){
//            $typewhere['type'] = array('in', array(2,3,4));
            $where .= " AND `type` IN (2,3,4)";
        }

//        $typewhere['type'] = $type;
//        $typewhere['_logic'] = 'AND';
        $this->assign('type', $type);

        if ($_GET['keyword']){
            $keyword=$_GET['keyword'];
            $department_list = M('Department')->where("d_name like '%$keyword%'")->select();
            $document_arr = '';
            foreach ($department_list as $key => $value) {
                $document_id_list = M('SendDocumentToCommon')->where(array('to_id'=>$value['id']))->group('document_id')->select();
                foreach ($document_id_list as $key1 => $value1) {
                    $document_arr = $document_arr.','.$value1['document_id'];
                }
            }
            if(!empty($document_arr)){
                $document_arr = substr($document_arr,1);
            }
            /*if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
                    $where['nk_document_common.headline'] = array('like',"%$keyword%");
                }elseif($key2 ==2){
                    $where['nk_document_common.title|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                }elseif($key2 ==3){
                    $where['nk_document_common.title|nk_document_common.headline|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                }elseif($key2 ==4){
                    $where['nk_document_common.id'] = array('in',$document_arr);
                }
            }else{
                $where['nk_document_common.title|nk_document_common.headline|nk_document_common.index_name|nk_document_common.test_content|nk_document_common.evaluation_standard'] = array('like',"%$keyword%");
                if (!empty($document_arr))
                {
                    $where['nk_document_common.id'] = array('in',$document_arr);
                }
            }*/
            if($_GET['key2']!=0){
                $key2 = $_GET['key2'];
                if($key2 ==1){
//                    $where .= " and (`headline` like '%$keyword%'";
                }elseif($key2 ==2){
                    $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                }elseif($key2 ==3){
                    $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                }elseif($key2 ==4){
                    $where .=" and (`id` in ($document_arr))";
                    // $where['id'] = array('in',$document_arr);
                }
                $where .= ")";
            }else{
                $where .=" and ((`title` like '%$keyword%')or(`index_name` like '%$keyword%')or(`test_content` like '%$keyword%')or(`evaluation_standard` like '%$keyword%')";
                if(!empty($document_arr)){
                    $where .=" or (`id` in ($document_arr))";
                }
                $where .= ")";
            }
            $this->assign('keyword',$keyword);
        }

        import('ORG.Util.Page');// 导入分页类
        $de = M('DocumentCommon')->where($where)->select();
        $count      = count($de);// 查询满足要求的总记录数
        $Page       = new Page($count,20);// 实例化分页类 传入总记录数和每页显示的记录数
        $show       = $Page->show();// 分页显示输出

        $rs = M('DocumentCommon')->where($where)->limit($Page->firstRow.','.$Page->listRows)->select();
//        echo M('DocumentCommon')->getLastSql();

        $db = M('SendDocumentToCommon');
        foreach ($rs as $k=>$item)
        {
            //牵头单位
            $qts = $db
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                ->where(array('dtype'=>1, 'document_id'=>$item['id']))
                ->field('d_name,to_id,finish')
                ->select();
            $rs[$k]['lead_name'] = "";
            if ($qts){
                foreach ($qts as $qt){
                    if($qt['d_name']!=''){
                        $rs[$k]['lead_name'] .= $qt['d_name'].";";
                    }
                    if($qt['to_id']==$_SESSION['userinfo']['department_id']){
                        if ($qt['finish'] == -1){
                            $rs[$k]['edit'] = 1;
                        }else{
                            $rs[$k]['is_finish'] = 1;
                        }
                    }
//                    $rs[$k]['finish'] = $qt['finish'];
                }
            }


            //责任单位
            $zrs = $db
                ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
                ->where(array('dtype'=>2, 'document_id'=>$item['id']))
                ->field('d_name,to_id,finish')
                ->select();
            $rs[$k]['responsibility_name'] = "";
            if ($zrs){
                foreach ($zrs as $zr){
                    if($zr['d_name']!=''){
                        $rs[$k]['responsibility_name'] .= $zr['d_name'].";";
                    }
                    if($zr['to_id']==$_SESSION['userinfo']['department_id']){
                        if ($zr['finish'] == -1){
                            $rs[$k]['edit'] = 1;
                        }else{
                            $rs[$k]['is_finish'] = 1;
                        }
                    }
//                    $rs[$k]['finish'] = $zr['finish'];
                }
            }
        }
//        dump($rs);die();
        $this->assign('rs', $rs);
        $this->assign('page', $show);
        $this->display();
    }
    public function commondetailpage()
    {
        $id = $_GET['id'];
//        $where['type'] = $type = $_GET['type']?$_GET['type']:1;
        $this->assign('type', $_GET['type']);
        $rs = M('DocumentCommon')->where(array('id'=>$id))->find();
        $type = $_GET['type'] ? $_GET['type'] : 1;
        if($type==1){
            $radio = 1;
            $tab = 1;
        }elseif($type==2){
            $radio = 2;
            $tab = 1;
        }elseif($type==3){
            $radio = 2;
            $tab = 2;
        }elseif($type==4){
            $radio = 2;
            $tab = 3;
        }elseif($type==5){
            $radio = 1;
            $tab = 3;
        }elseif($type==6){
            $radio = 1;
            $tab = 2;
        }
        $this->assign('radio',$radio);
        $this->assign('tab',$tab);
       if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $keyword = $data['keyword'];
        if($keyword){
            $where['nk_department.d_name'] = array('like','%'.$keyword.'%');
        }
        $department_level = M('User')->alias('a')
                    ->join('nk_department b on a.department_id=b.id')
                    ->where(array('a.id'=>$_SESSION['userinfo']['id']))
                    ->field('b.id,b.parent_id,b.level')
                    ->find();
        if($department_level['id']==7){
            $return_data = array(array('id'=>-1,'name'=>'创文办'),array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'));
        }elseif($department_level['id']==1){
            $return_data = array(array('id'=>'1','name'=>'委员单位'),array('id'=>'2','name'=>'成员单位'),array('id'=>'3','name'=>'街道'),array('id'=>'4','name'=>'各指挥部'));
        }else{
            $return_data = '';
        }
        if($return_data){
            $dt=0;
            foreach ($return_data as $key => $value) {
                $where['nk_department.dp_category_task_id']=$value['id'];
                $return_data[$key]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
                if($return_data[$key]['list']==null){
                    $return_data[$key]['list']=array();
                }
            }
        }else{
            $dt=1;
            $list = array();
            $return_data = array(array('id'=>'null','name'=>'null'));
            $pid = $department_level['id'];
            $where['nk_department.parent_id'] = array('like',array("%,$pid","%,$pid,%","$pid,%","$pid"),'OR');
            // if()
            $return_data[0]['list'] = M('Department')->where($where)->field('id as department_id,d_name as department_name')->select();
            if($return_data[0]['list']==null){
                    $return_data[0]['list']=array();
                }
        }
        $this->assign('return_data',$return_data);
        $this->assign('dt',$dt);
        $rs = M('DocumentCommon')->where(array('id'=>$id))->find();
        $db = M('SendDocumentToCommon');
                //牵头单位
        $qts = $db
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
            ->where(array('dtype'=>1, 'document_id'=>$id))
            ->field('d_name,to_id,nk_department.id as d_id')
            ->select();
        $rs['lead_name'] = "";
        $rs['lead_id'] = "";
        if ($qts){
            foreach ($qts as $qt){
                if($qt['d_name']!=''){
                    $rs['lead_name'] .= $qt['d_name'].";";
                    $rs['lead_id'] .= ",".$qt['d_id'];
                }
            }
        }
        $this->assign('old_parent',$qts);

        //责任单位
        $zrs = $db
            ->join('LEFT JOIN nk_department ON nk_department.id=nk_send_document_to_common.to_id ')
            ->where(array('dtype'=>2, 'document_id'=>$id))
            ->field('d_name,to_id,nk_department.id as d_id')
            ->select();
        $rs['responsibility_name'] = "";
        $rs['responsibility_id'] = "";
        if ($zrs){
            foreach ($zrs as $zr){
                if($zr['d_name']!=''){
                    $rs['responsibility_name'] .= $zr['d_name'].";";
                    $rs['responsibility_id'] .= ",".$zr['d_id'];
                }
            }
        }
        $this->assign('old_parent_zeren',$zrs);
        $this->assign('detail',$rs);
        if($tab==1){
            $this->display('edit_task_common_w');
        }elseif($tab==2){
            $this->display('edit_task_common_w_sd');
        }elseif($tab==3){
            $this->display('edit_task_common_w_wj');
        }
    }
    public function delete_common(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        $did = $_GET['did'];
        $result = M('DocumentCommon')->where(array('id'=>$did))->delete();
        if($result){
            $arr = array('status'=>1,'msg'=>'删除成功');
            echo json_encode($arr);
            exit();           
        }
    }
    /**
     * 编辑常规性任务(网上申报)
     * 王旭明
     * 2017.04.27
     */
    public function edit_task_common_w(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }    
        if($_POST['way'][0]==1){
            if(!$_POST['shjdw']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['rwbt']){
                $this->error('指标名称不能为空');
            }
            if(!$_POST['zysx']){
                $this->error('测评内容不能为空');
            }
            if(!$_POST['cpbz']){
                $this->error('测评标准不能为空');
            }
            if(!$_POST['sbcl']){
                $this->error('网上申报具体要求不能为空');
            }
            if(!$_POST['qtdwid']&&!$_POST['zrdwid']){
                $this->error('牵头单位和责任单位不能同时为空');
            }
            $data['headline'] = $_POST['shjdw'];
            $data['title'] = $_POST['sbcl'];
            $data['index_name'] = $_POST['rwbt'];
            $data['test_content'] = $_POST['zysx'];
            $data['evaluation_standard'] = $_POST['cpbz'];
            $qt = $_POST['qtdwid'];
            $zr = $_POST['zrdwid'];
        }else{
            if(!$_POST['shjdw2']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['rwbt2']){
                $this->error('工作任务不能为空');
            }
            if(!$_POST['jtnr2']){
                $this->error('具体内容不能为空');
            }
            if(!$_POST['sbcl2']){
                $this->error('上报材料和检查提示不能为空');
            }
            if(!$_POST['qtdwid2']&&!$_POST['zrdwid2']){
                $this->error('牵头单位和责任单位不能同时为空');
            }
            $data['headline'] = $_POST['shjdw2'];
            $data['title'] = $_POST['jtnr2'];
            $data['index_name'] = $_POST['rwbt2'];
            $data['test_content'] = $_POST['sbcl2'];
            $qt = $_POST['qtdwid2'];
            $zr = $_POST['zrdwid2'];
        }
        $result = M('DocumentCommon')->where(array('id'=>$_POST['id']))->save($data);
        $clear = M('SendDocumentToCommon')->where(array('document_id'=>$_POST['id']))->delete();
        $qt = explode(',',$qt);
        foreach ($qt as $key => $value) {
            $send['document_id'] = $_POST['id'];
            $send['to_id'] = $value;
            $send['dtype'] = 1;
            $send_to = M('SendDocumentToCommon')->add($send);
        }
        $zr = explode(',',$zr);
        foreach ($zr as $key => $value) {
            $send['document_id'] = $_POST['id'];
            $send['to_id'] = $value;
            $send['dtype'] = 2;
            $send_to = M('SendDocumentToCommon')->add($send);
        }
        $this->success('修改成功');
    }
   /**
     * 修改常规性任务(实地考察)
     * 王旭明
     * 2017.04.24
     */
    public function edit_task_common_w_sd(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if($_POST['way'][0]==1){
            if(!$_POST['shjdw']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['rwbt']){
                $this->error('指标名称不能为空');
            }
            if(!$_POST['zysx']){
                $this->error('测评内容不能为空');
            }
            if(!$_POST['cpbz']){
                $this->error('测评标准不能为空');
            }
            if(!$_POST['sbcl']){
                $this->error('实地考察点位及标准不能为空');
            }
            if(!$_POST['zrdwid']){
                $this->error('责任单位不能为空');
            }
            $data['headline'] = $_POST['shjdw'];
            $data['title'] = $_POST['sbcl'];
            $data['index_name'] = $_POST['rwbt'];
            $data['test_content'] = $_POST['zysx'];
            $data['evaluation_standard'] = $_POST['cpbz'];
            $zr = $_POST['zrdwid'];
        }else{
            if(!$_POST['shjdw2']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['cpbz2']){
                $this->error('测评标准不能为空');
            }
            if(!$_POST['sbcl2']){
                $this->error('实地考察要求不能为空');
            }
            if(!$_POST['zrdwid2']){
                $this->error('责任单位不能为空');
            }
            $data['headline'] = $_POST['shjdw2'];
            $data['title'] = $_POST['sbcl2'];
            $data['index_name'] = $_POST['cpbz2'];
            $zr = $_POST['zrdwid2'];
        }
        $result = M('DocumentCommon')->where(array('id'=>$_POST['id']))->save($data);
        $clear = M('SendDocumentToCommon')->where(array('document_id'=>$_POST['id']))->delete();
        $zr = explode(',',$zr);
        foreach ($zr as $key => $value) {
            $send['document_id'] = $_POST['id'];
            $send['to_id'] = $value;
            $send['dtype'] = 2;
            $send_to = M('SendDocumentToCommon')->add($send);
        }
        $this->success('修改成功');
    }
  /**
     * 编辑常规性任务(文件调查)
     * 王旭明
     * 2017.04.24
     */
    public function edit_task_common_w_wj(){
        if($_SESSION['userinfo']['department_id']!=1){
            $arr = array('status'=>-1,'msg'=>'权限不足,请联系创文办');
            echo json_encode($arr);
            exit();  
        }
        if($_POST['way'][0]==1){
            if(!$_POST['shjdw']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['rwbt']){
                $this->error('指标名称不能为空');
            }
            if(!$_POST['zysx']){
                $this->error('测评内容不能为空');
            }
            if(!$_POST['sbcl']){
                $this->error('问卷主要内容不能为空');
            }
            if(!$_POST['qtdwid']){
                $this->error('牵头单位不能为空');
            }
            $data['headline'] = $_POST['shjdw'];
            $data['title'] = $_POST['zysx'];
            $data['index_name'] = $_POST['rwbt'];
            $data['test_content'] = $_POST['sbcl'];
            $qt = $_POST['qtdwid'];
        }else{
            if(!$_POST['shjdw2']){
                $this->error('测评项目不能为空');
            }
            if(!$_POST['zysx2']){
                $this->error('测评标准不能为空');
            }
            if(!$_POST['sbcl2']){
                $this->error('问卷主要内容不能为空');
            }
            if(!$_POST['qtdwid2']){
                $this->error('牵头单位不能为空');
            }
            $data['headline'] = $_POST['shjdw2'];
            $data['title'] = $_POST['zysx2'];
            $data['index_name'] = $_POST['sbcl2'];
            $qt = $_POST['qtdwid2'];

        }
        $result = M('DocumentCommon')->where(array('id'=>$_POST['id']))->save($data);
        $clear = M('SendDocumentToCommon')->where(array('document_id'=>$_POST['id']))->delete();
        $qt = explode(',',$qt);
        foreach ($qt as $key => $value) {
            $send['document_id'] = $_POST['id'];
            $send['to_id'] = $value;
            $send['dtype'] = 1;
            $send_to = M('SendDocumentToCommon')->add($send);
        }
        $this->success('修改成功');
    }
}