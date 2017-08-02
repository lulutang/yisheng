<?php
/**
 * tpAdmin [a web admin based ThinkPHP5]
 *
 * @author yuan1994 <tianpian0805@gmail.com>
 * @link http://tpadmin.yuan1994.com/
 * @copyright 2016 yuan1994 all rights reserved.
 * @license http://www.apache.org/licenses/LICENSE-2.0
 */

//------------------------
// 用户控制器
//-------------------------

namespace app\admin\controller;

\think\Loader::import('controller/Controller', \think\Config::get('traits_path') , EXT);

use app\admin\Controller;
use think\Exception;
use think\Loader;

class Yisheng extends Controller
{
    use \app\admin\traits\controller\Controller;
    
    public function index(){
        //不查询管理员
        $map['id'] = ["gt", 1];
        $p = $this->request->param('p')>=1?$this->request->param('p'):1;
        if ($this->request->param('mobile')) {
            $map['mobile'] = ["like", "%" . $this->request->param('mobile') . "%"];
        }
        $count = Model('User')->getUserCount($map);
        $list = Model('User')->getUserList($map);
        $page = $list->render();
        
        $this->view->assign('count', $count);
        $this->view->assign('list', $list);
        $this->view->assign('page', $page);
        return $this->view->fetch();
    }
    
    public function info(){
        //不查询管理员
        $uid = $this->request->param('uid')>=1?$this->request->param('uid'):1;
        
        $p = $this->request->param('p')>=1?$this->request->param('p'):1;
      
        $map = array('uid' => $uid);
        $list = Model('User')->getUserLoginList($map);
        $page = $list->render();
        $this->view->assign('list', $list);
        $this->view->assign('page', $page);
        return $this->view->fetch();
    }
   
}