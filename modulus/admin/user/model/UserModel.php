<?php 

namespace modulus\admin\user\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;
use old;
use User;

class UserModel extends model
{
	public function UserColumn()
    {
        return $this->db->columns('user');
    }    
    
    public function UserCount()
    {
        return $this->db->t1count('user', 'user_id > 0', [])->count;
    }    

    public function UserShow($id)
    {
        return $this->db->t1where('user', "user_id = ?", [$id]) ?:
            $this->return->code(404)->return('not_found')->get()->referer();
    }

    public function UserUpdate()
    {
        $form = [
            'user_id',
            'user_email',
            'user_login',
            'user_gender',
            'user_ip',
            'user_password',
            'confirm_password',
            'user_updated',
        ];

        #array diff keys
        array_different($form, $_POST) ?: 
            $this->return->code(404)->return('error_form')->get()->referer();

        #peel tags of array
        $data = peel_tag_array($_POST);
        old::create($data);

        #check via valitron
        $v = new v($data);

        $v->rule('required', 'user_email');
        $v->rule('required', 'user_login');
        $v->rule('required', 'user_gender');
        $v->rule('required', 'user_password');
        $v->rule('required', 'confirm_password');

        $v->rule('lengthMin', 'user_email', 7);
        $v->rule('lengthMin', 'user_login', 3);
        $v->rule('lengthMin', 'user_password', 3);

        $v->rule('lengthMax', 'user_email', 30);
        $v->rule('lengthMax', 'user_login', 30);
        $v->rule('lengthMax', 'user_password', 30);
        
        $v->rule('equals', 'user_password', 'confirm_password');

        $http1 = "panel/user/update/{$data['user_id']}";
        error::valitron($v, $http1);

        #user
        !$this->db->t1where('user', 'user_id != ? AND user_login=?', [
            $data['user_id'], $data['user_login']
        ], 1) 
        &&
        !$this->db->t1where('user', 'user_id != ? AND user_email=?', [
            $data['user_id'], $data['user_email']
        ], 1) 
        ?: $this->return->code(404)->return('error')->get()->referer();

        $data = except($data, ['confirm_password']);

        #if not found user
        $update = $this->db->update('user', $data, ['id' => 'user_id']);

        $update['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->referer();
       
        if(User::user_id() == $data['user_id']){
            User::create(db()->t1where('user', 'user_id=?', [User::user_id()], 1));
        }

        #unset variables
        unset($http1); unset($data); unset($_POST); unset($v); unset($form);

        $this->return->code(200)->return('success')->get()->referer();
    }
   
}

