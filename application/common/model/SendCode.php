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

class SendCode
{
    /**
     * 写入权限
     * @param $role_id
     * @param $data
     * @return bool|string
     */
    public function insertSendCode($data)
    {
     
          $db_access = Db::name("SendCode");
          $data['create_time'] = time();
          $data['status']      = 0;
          $data['use_time']      = 0;
          
          $db_access->insert($data);
       
          return true;
    

    }
    
    public function getSendCode($data) {
        $db_access = Db::name("SendCode");
        $data['status']=0; 
        return $db_access->where($data)->order('create_time desc')->find();
    }
    
    public function updateSendCode($id) {
        return Db::name("SendCode")->where(array('id'=>$id))->update(array('status'=>1));
    }
}