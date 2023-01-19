<?php 

namespace modulus\admin\Save\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;
use old;
use User;

class SaveModel extends model
{
    public function SaveColumn()
    {        
        return $this->db->columns('save');
    }    
    
    #
    public function save()
    {
        return $this->db->t1where('save', "save_id>0", [], 2);
    }

    #
	public function saveCount()
    {
        return $this->db->p3count('save', 'user', 'article', "save.save_id > 0", [])->count;
    }    

    public function saveList($start, $limit)
    {
        return $this->db->p3where('save', 'user', 'article', "save.save_id > 0
            ORDER BY save_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    #
    public function SaveByUserCount($user)
    {
        return $this->db->p3count('save', 'user', 'article', "save.user_id=?", [$user])->count;
    }    

    public function SaveByUser($user, $start, $limit)
    {
        return $this->db->p3where('save', 'user', 'article', "save.user_id=?
            ORDER BY save_id DESC LIMIT {$start}, {$limit}", [$user], 2, 2);
    }
   
   
    #
    public function saveShow($id)
    {
        return $this->db->p3where('save', 'article', 'user', "save.save_id=?", [$id]) ?:
            $this->return->code(404)->return('not_found')->get()->referer();
    }

    #
    public function saveCreate()
    {
        $form = [
            'article_id',
            'user_id',
        ];

        #array diff keys
        array_different($form, $_POST) ?: 
            $this->return->code(404)->return('error_form')->get()->referer();

        #peel tags of array
        $data = peel_tag_array($_POST);
        old::create($data);

        #check via valitron
        $http1 = "panel/save/create";
        $v = new v($data);

        $v->rule('required', 'article_id');
        $v->rule('required', 'user_id');

        error::valitron($v, $http1);

        $this->db->t1where('user', 'user_id=?', [
            $data['user_id']
        ]) &&
        $this->db->t1where('article', 'article_id=?', [
            $data['article_id']
        ]) ?: 
        $this->return->code(404)->return('not_found')->get()->http($http1);

        $data += ['save_updated' => date('Y-m-d H:i:s')];
        $create = $this->db->create('save', $data);

        $create['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->referer();
        
        old::delete($data);
        
        #unset variables
        unset($http1); unset($data); unset($_POST); unset($v); unset($form);

        $this->return->code(200)->return('success')->get()->referer();
    }


    public function saveUpdate()
    {
        $form = [
            'article_id',
            'user_id',
        ];

        #array diff keys
        array_different($form, $_POST) ?: 
            $this->return->code(404)->return('error_form')->get()->referer();

        #peel tags of array
        $data = peel_tag_array($_POST);
        old::create($data);

        #check via valitron
        $http1 = "panel/save/update/{$data['save_id']}";
        $v = new v($data);

        $v->rule('required', 'article_id');
        $v->rule('required', 'user_id');

        error::valitron($v, $http1);

        $this->db->t1where('user', 'user_id=?', [
            $data['user_id']
        ]) &&
        $this->db->t1where('article', 'article_id=?', [
            $data['article_id']
        ]) ?: 
        $this->return->code(404)->return('not_found')->get()->http($http1);

        $data += ['save_updated' => date('Y-m-d H:i:s')];
        $update = $this->db->update('save', $data, ['id' => 'save_id']);

        $update['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->referer();
        
        old::delete($data);
        
        #unset variables
        unset($http1); unset($data); unset($_POST); unset($v); unset($form);

        $this->return->code(200)->return('success')->get()->referer();
    }

    public function saveDelete($id)
    {
        $save = $this->db->t1where('save', 'save_id=?', [$id]) ?: 
            $this->return->code(404)->return('not_found')->json();

        $delete = $this->db->delete('save', [
            'save_id' => $save->save_id
        ], ['id' => 'save_id']);

        $delete['status'] == TRUE ?:
            $this->return->code(404)->return('error')->json();

        unset($id); unset($delete); unset($save);

        $this->return->code(200)->return('success')->json();
    }

    public function SaveDestroy($id)
    {
        $http1 = 'panel/save/page/1';
        
        $save = $this->db->t1where('save', 'save_id=?', [$id]) ?: 
            $this->return->code(404)->return('not_found')->get()->http($http1);

        $delete = $this->db->delete('save', [
            'save_id' => $save->save_id
        ], ['id' => 'save_id']);

        $delete['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->http($http1);

        unset($id); unset($delete); unset($save);

        $this->return->code(200)->return('success')->get()->http($http1);
    }

    public function saveSearchEngine()
    {
        $http1 = 'panel/save/search/data/';
        $http2 = 'panel/save/page/1';

        $form = [
            'page',
            'field_key',
            'field_value',
        ];

        #array diff keys
        array_different($form, $_GET) ?: 
            $this->return->code(404)->return('error_form')->get()->referer();

        #peel tags of array
        $data = peel_tag_array($_GET);
        $data += ['page_key' => 'panel/save/search/key/value'];

        #valitron
        $v = new v($data);

        $v->rule('required', 'page');
        $v->rule('required', 'field_key');
        $v->rule('required', 'field_value');

        $v->rule('lengthMin', 'field_value', 1);
        $v->rule('lengthMin', 'field_key', 2);

        $v->rule('lengthMax', 'field_value', 20);
        $v->rule('lengthMax', 'field_key', 100);

        $v->rule('equals', 'page', 'page_key');

        error::valitron($v, $http2);        
        
        $this->return->http("{$http1}{$data['field_key']}/{$data['field_value']}/page/1");
    }

    public function saveSearchCount($key, $value)
    {
        $http1 = 'panel/save/page/1';
        return $this->db->p3count('save', 'article', 'user', "save.{$key} LIKE ? ", [
            "%{$value}%"
        ])->count ?: $this->return->code(404)->return('not_found')->get()->http($http1);
    }

    public function saveSearch($key, $value, $start, $limit)
    {
        return $this->db->p3where('save', 'article', 'user', "save.{$key} LIKE ? 
            ORDER BY save.save_id DESC LIMIT {$start}, {$limit}", [
            "%{$value}%"
        ], 2, 2);
    }
}

