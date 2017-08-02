<?php
namespace app\index\controller;

class Index
{
    public function index()
    {
        return \think\Response::create(\think\Url::build('/home'), 'redirect');
    }
}
