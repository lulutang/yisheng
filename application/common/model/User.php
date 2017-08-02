<?php
/**
 * tpAdmin [a web admin based ThinkPHP5]
 *
 * @author yuan1994 <tianpian0805@gmail.com>
 * @link http://tpadmin.yuan1994.com/
 * @copyright 2016 yuan1994 all rights reserved.
 * @license http://www.apache.org/licenses/LICENSE-2.0
 */

namespace app\common\model;

use think\Db;

class User
{
    /**
     * 写入权限
     * @param $role_id
     * @param $data
     * @return bool|string
     */
    public function insertUser($data)
    {
     
          $db_access = Db::name("User");
          $data['create_time']          = time();
          $data['status']               = 0;
          $data['login_count']          = 1;
          $data['last_login_time']      = time();
          
          
          $db_access->insert($data);
       
          return true;
    

    }
    
    public function getUser($data) {
        $db_access = Db::name("User");
        return $db_access->where($data)->find();
    }
    
    public function getUserCount($data) {
        $db_access = Db::name("User");
        return $db_access->where($data)->count();
    }
    
    public function getUserList($data) {
        $db_access = Db::name("User");
        return $db_access->where($data)->paginate(10);
    }
    
    public function getpnjs($where){
        $list = Db::name("Pnjs")->where($where)->order('add_time desc')->group('username')->select();
        return $list;
    }
    
    public function getpnjsone($where){
        
        $list = Db::name("Pnjs")->where($where)->find();
        return $list;
    }
    
    public function getpnjslistbyadmin($where){
        $list = Db::name("Pnjs")->order('add_time desc')->where($where)->paginate(10);
        return $list;
    }
    
    public function getpnjslist($where){
        $list = Db::name("Pnjs")->order('day ')->where($where)->select();
        return $list;
    }
    
    
    public function updateUserLoginCount($data, $save) {
        $db_access = Db::name("User");
        $res = $db_access->where($data)->update($save);
        return $db_access->where($data)->setInc('login_count',1);
    }
    
    public function savepn($data) {
         $db_access = Db::name("Pnjs");

         $db_access->insert($data);
       
         return true;
    }
    
    public function insertUserLoginLog($data)
    {
         
        $db_access = Db::name("User_login_log");
        $data['login_time']          = date('Y-m-d H:i:s',time());
    
    
        $db_access->insert($data);
         
        return true;
    
    
    }
    
    public function getUserLoginList($where) {
         return Db::name("User_login_log")->where($where)->order('id desc')->paginate(10);
    }
    
    public function export($where, $field){
        return   Db::name("Pnjs")->where($where)->field($field)->select();
    ;
        
    }
    
}