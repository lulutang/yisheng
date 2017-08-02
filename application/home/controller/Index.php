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
// 管理后台首页
//-------------------------

namespace app\home\controller;

use app\home\Controller;
use think\Loader;
use think\Session;
use think\Db;

class Index extends Controller
{
   
    
    public function index()
    {
       
        $mobile =  $this->request->param('mobile') ;
        if($mobile && !session('user')){
            $user = model('User')->getUser(array('mobile'=>$mobile));
            session('user',$user);
        }
        
        if(!session('user')){
            header("location: http://".$_SERVER['HTTP_HOST']."/home/index/login.html");
            exit;
        }
        return $this->view->fetch();
    }
    
  
    public function menu()
    {
        // 检查认证识别号
        if (!session('user')) {
            header("location: http://".$_SERVER['HTTP_HOST']."/home/index/login.html");
            exit;
        
        }
        $current_login_ip = $this->request->ip();
        return $this->view->fetch();
    }
    
    public function pnlist()
    
    {
        // 检查认证识别号
        if (!session('user')) {
            header("location: http://".$_SERVER['HTTP_HOST']."/home/index/login.html");
            exit;
        
        }
        $user = session('user');
       
        $keyword =  $this->request->param('keyword');
        $where = array('user_id'=>$user['id']) ;
        if($keyword){
            $where['username'] = array('like','%'.$keyword.'%');
        }
        $list = model('user')->getpnjs($where);
        $this->view->assign('keyword', $keyword);
        $this->view->assign('list', $list);
        return $this->view->fetch();
    }
    
    public function pninfo()
    {
        // 检查认证识别号
        if (!session('user')) {
            header("location: http://".$_SERVER['HTTP_HOST']."/home/index/login.html");
            exit;
        
        }
        $username =  $this->request->param('username');
        $list = model('user')->getpnjslist(array('username'=>$username));
      
        $time = time();
        foreach ($list as $val){
           
            if($val['add_time']<$time){
                $time = $val['add_time'];
            }
        }
     
        $this->view->assign('list', $list);
        $this->view->assign('username', $list[0]['username']);
        $this->view->assign('time', $time);
        return $this->view->fetch();
    }
    public function pnjs()
    {
        // 检查认证识别号
        if (!session('user')) {
            header("location: http://".$_SERVER['HTTP_HOST']."/home/index/login.html");
            exit;
        
        }
        $current_login_ip = $this->request->ip();
        return $this->view->fetch();
    }
    
    public function pn()
    {
        // 检查认证识别号
        if (!session('user')) {
            header("location: http://".$_SERVER['HTTP_HOST']."/home/index/login.html");
            exit;
        
        }
        $current_login_ip = $this->request->ip();
        return $this->view->fetch();
    }
    
    
    public function ywjs()
    {
        // 检查认证识别号
        if (!session('user')) {
            header("location: http://".$_SERVER['HTTP_HOST']."/home/index/login.html");
            exit;
        
        }
        $current_login_ip = $this->request->ip();
        return $this->view->fetch();
    }
    
    public function login()
    {
        $mobile =  $this->request->param('mobile') ;
        if($mobile){
            $user = model('User')->getUser(array('mobile'=>$mobile));
            session('user',$user);
        }
        $current_login_ip = $this->request->ip();
        return $this->view->fetch();
    }
    
    public function ajaxlogin(){
        $mobile =  $this->request->param('mobile') ;
        $code   =  $this->request->param('code') ;
        if(!$mobile || !$code){
            echo -1;
            exit;
        }
        
        $res = model('SendCode')->getSendCode(array('mobile'=>$mobile));
        if($res && isset($res['code']) && $res['code'] == $code){
            model('SendCode')->updateSendCode($res['id']);
            //@todo 用户新增
            $user = model('User')->getUser(array('mobile'=>$mobile));
            $current_login_ip = $this->request->ip();
            $data = array('last_login_time'=>time(), 'last_login_ip'=>$current_login_ip);
            
            
            $data['country']   = $data['province'] =   $data['city']    = '未知';
            $local = curlData('http://int.dpool.sina.com.cn/iplookup/iplookup.php','GET',array('format'=>'json','ip'=>$current_login_ip));
            if($local=='-2'){
                $data['country']   = $data['province'] =   $data['city']    = '本地';
            }else{
                $local = (array)json_decode($local);
                $data['country']      = $local['country'];
                $data['province']     = $local['province'];
                $data['city']         = $local['city'];
            }
            
            if(!$user){
                $save = array('mobile'=>$mobile,'last_login_ip'=>$current_login_ip);
          
                model('User')->insertUser($save);
              
            }else{
                
             
                $res= model('User')->updateUserLoginCount(array('mobile'=>$mobile), $data);
              
            }
           
            model('user')->insertUserLoginLog(array('uid'=>$user['id'],
                'login_ip'=>$current_login_ip,
                'country'=> $data['country'],
                'mobile'=> $mobile,
                'province'=>$data['province'] ,
                'city'=> $data['city']
            
            ));
            if(!session('user')){
                $user = model('User')->getUser(array('mobile'=>$mobile));
                session('user',$user);
            }
            
           
            echo 0;
        }else{
            echo 1;
        }
     
        exit;
    }
    
    public function ajaxsend(){
        $mobile= $this->request->param('mobile') ;
   
        if(!$mobile){
           echo -1;
           exit;
        }
        $code =  rand(100000, 999999);
        model('SendCode')->insertSendCode(array('mobile'=>$mobile,'code'=>$code));
        $res = curlData('http://utf8.sms.webchinese.cn/','GET',array('Uid'=>'modernsky','Key'=>'ce91c88d4aa2da5accec','smsMob'=>$mobile,'smsText'=>'您的验证码是: '.$code));
       
        if($res){
            echo 0;
        }else{
            echo 1;
        }       
        exit;
    }
    
    public function savepn(){
        $param = $this->request->param();
        if(!$param['mobile']){
            echo -1;exit;
        }
        $user = model('User')->getUser(array('mobile'=>$param['mobile']));
        $data = array();
        $data['user_id']      = $user['id'];
        $data['username']      =$param['Te1'];
        $data['day']           =$param['Combo2Day'];
        $data['fangshi']       =$param['Combo1'];
        $data['tizhong']       =$param['Te2'];
        $data['key1']          =$param['Combo2'];
        $data['val1']          =$param['Te3'];
        $data['val11']         =$param['Combo5'];
        $data['allday']        =$param['Te4'];
        $data['notpn']         =$param['Te5'];
        $data['pn']            =$param['Te6'];
        $data['anjisuan']      =$param['Combo3'];
        $data['zhifangru']     =$param['Combo4'];
        $data['pnna']          =$param['Te7'];
        $data['pnk']           =$param['Te8'];
        $data['pntime']        =$param['Te9'];
        $data['pnsudu']        =$param['Te10'];
        $data['pntangsu']      =$param['Te11'];
        $data['key2']          =$param['Combo6'];
        $data['val2']          =$param['Te12'];
        $data['key3']          =$param['Combo7'];
        $data['val3']          =$param['Te13'];
        $data['key4']          =$param['Combo8'];
        $data['val4']          =$param['Te14'];
        $data['key5']          =$param['Combo10'];
        $data['val5']          =$param['Te15'];
        $data['key6']          =$param['Combo12'];
        $data['val6']          =$param['Te16'];
        $data['key7']          =$param['Combo11'];
        $data['val7']          =$param['Te17'];
        $data['lvna']          =$param['Te18'];
        $data['lvk']           =$param['Te19'];
        $data['te20']          =$param['Te20'];
        $data['te21']          =$param['Te21'];
        $data['te22']          =$param['Te22'];
        $data['te23']          =$param['Te23'];
        
        $data['tangnl']        =$param['Te26'];
        $data['aanl']          =$param['Te27'];
        $data['fatnl']         =$param['Te28'];
        $data['nainl']         =$param['Te29'];
        $data['pnnl']          =$param['Te30'];
        $data['zongnl']        =$param['Te31'];
        $data['shentouya']     =$param['Te32'];
        $data['tangnudu']      =$param['Te33'];
        $data['zhangli']       =$param['Te34'];
        $data['anjisuan1']     =$param['Te35'];
        $data['zhifangru1']    =$param['Te36'];
        $data['add_time']      = time();
        $current_login_ip      = $this->request->ip();
        $data['ip']            = $current_login_ip;
        
     
     
        $local = curlData('http://int.dpool.sina.com.cn/iplookup/iplookup.php','GET',array('format'=>'json','ip'=>$current_login_ip));
        if($local=='-2'){
            $data['country']   = $data['province'] =   $data['city']    = '本地';
        }else{
            $local = (array)json_decode($local);
            $data['country']      = $local['country'];
            $data['province']     = $local['province'];
            $data['city']         = $local['city'];
        }
    
       $res =  model('User')->savepn($data);
    
       if($res){
           echo 0;
       }else{
           echo -1;
       }
       exit;
    }
    
    /**
     * 欢迎页
     * @return mixed
     */
    public function welcome()
    {
        // 查询 ip 地址和登录地点
        if (Session::get('last_login_time')) {
            $last_login_ip = Session::get('last_login_ip');
            $last_login_loc = \Ip::find($last_login_ip);

            $this->view->assign("last_login_ip", $last_login_ip);
            $this->view->assign("last_login_loc", implode(" ", $last_login_loc));

        }
        $current_login_ip = $this->request->ip();
        $current_login_loc = \Ip::find($current_login_ip);

        $this->view->assign("current_login_ip", $current_login_ip);
        $this->view->assign("current_login_loc", implode(" ", $current_login_loc));

        // 查询个人信息
        $info = Db::name("AdminUser")->where("id", UID)->find();
        $this->view->assign("info", $info);

        return $this->view->fetch();
    }
}