<?php 

namespace modulus\admin\user\controller;
use modulus\admin\user\model\UserModel;
use core\controller;
use pagination;

class UserController extends controller
{
    public $user;
    
    public function __construct()
    {
        $this->user = new UserModel();
        $this->page = new pagination();
    }

    public function update($id)
    {
        $this->layout('panel', 'admin', 'user', 'update', [
            'user' => $this->user->UserShow($id),
            'column' => $this->user->UserColumn()
        ]);
    }

    public function UserUpdate()
    {
        $this->user->UserUpdate();
    }
}
