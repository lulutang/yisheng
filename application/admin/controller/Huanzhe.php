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

class Huanzhe extends Controller
{

//    protected static $blacklist = ['delete', 'clear', 'deleteforever', 'recyclebin', 'recycle'];

    protected function filter(&$map)
    {
        //不查询管理员
        $map['id'] = ["gt", 1];

        if ($this->request->param('realname')) {
            $map['realname'] = ["like", "%" . $this->request->param('realname') . "%"];
        }
        if ($this->request->param('account')) {
            $map['account'] = ["like", "%" . $this->request->param('account') . "%"];
        }
        if ($this->request->param('email')) {
            $map['email'] = ["like", "%" . $this->request->param('email') . "%"];
        }
        if ($this->request->param('mobile')) {
            $map['mobile'] = ["like", "%" . $this->request->param('mobile') . "%"];
        }
    }

    public function index(){
        //不查询管理员
        $map['id'] = ["gt", 1];
        $p = $this->request->param('p')>=1?$this->request->param('p'):1;
        if ($this->request->param('username')) {
            $map['username'] = ["like", "%" . $this->request->param('username') . "%"];
        }
        $list = Model('User')->getpnjslistbyadmin($map);
        $page = $list->render();
        
        $this->view->assign('list', $list);
        $this->view->assign('page', $page);
        return $this->view->fetch();
    }
    
    public function info(){
        //不查询管理员
       
        $id = $this->request->param('id')>=1?$this->request->param('id'):1;
        $map['id'] = $id;
        $list = Model('User')->getpnjsone($map);
    
        $this->view->assign('list', $list);
       
        return $this->view->fetch();
    }
    
    
    public function export() {
        $header = ['姓名/床号', '天数', '输液方式','体重', '全天总液量', '非PN液量','PN液量','氨基酸','脂肪乳','PN 中纳量','PN 中钾量','PN时间','PN泵速','PN糖速','IP','地址'];
        $field = "username,day,fangshi,tizhong,allday,notpn,pn,anjisuan,zhifangru,pnna,pnk,pntime,pnsudu,pntangsu,ip,city";
        $where = array();
        if ($this->request->param('keyword')) {
            $where['username'] = ["like", "%" . $this->request->param('keyword') . "%"];
        }
        $data =model("User")->export($where, $field);
        if ($error = \Excel::export($header, $data, "list".date('Y-m-d',time()), '2003')) {
            throw new Exception($error);
        }
    }
    
}