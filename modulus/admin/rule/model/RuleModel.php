<?php 

namespace modulus\admin\rule\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;
use old;

class RuleModel extends model
{
    public function RuleColumn()
    {        
        return $this->db->columns('rule');
    }    

	public function ruleCount()
    {
	    return $this->db->t1count('rule', 'rule_id > 0', [])->count;
    }    

    public function ruleList($start, $limit)
    {
        return $this->db->t1where('rule', "rule_id > 0
            ORDER BY rule_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    public function ruleShow($id)
    {
        return $this->db->t1where('rule', "rule_id = ?", [$id]) ?:
            $this->return->code(404)->return('not_found')->get()->referer();
    }

    public function ruleCreate()
    {
        $http1 = 'panel/rule/create';

        $form = [
            'rule_text',
            'rule_created',
        ];

        #array diff keys
        array_different($form, $_POST) ?: 
            $this->return->code(404)->return('error_form')->get()->referer();

        #peel tags of array
        $data = peel_tag_array($_POST);
        old::create($data);

        #check via valitron
        $v = new v($data);

        $v->rule('required', 'rule_text');
        $v->rule('required', 'rule_created');

        $v->rule('lengthMin', 'rule_text', 10);
        $v->rule('lengthMax', 'rule_text', 1000);
        
        error::valitron($v, $http1);

        #if not found rule
        $create = $this->db->create('rule', $data);

        $create['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->referer();
        
        #unset variables
        unset($http1); unset($data); unset($_POST); unset($v); unset($form);

        $this->return->code(200)->return('success')->get()->referer();
    }

   public function ruleUpdate()
    {
        $form = [
            'rule_id',
            'rule_text',
            'rule_created',
        ];

        #array diff keys
        array_different($form, $_POST) ?: 
            $this->return->code(404)->return('error_form')->get()->referer();

        #peel tags of array
        $data = peel_tag_array($_POST);
        old::create($data);

        #check via valitron
        $v = new v($data);

        $v->rule('required', 'rule_text');
        $v->rule('required', 'rule_created');

        $v->rule('lengthMin', 'rule_text', 10);
        $v->rule('lengthMax', 'rule_text', 1000);
        
        $http1 = "panel/rule/update/{$data['rule_id']}";
        error::valitron($v, $http1);

        #if not found rule
        $update = $this->db->update('rule', $data, ['id' => 'rule_id']);

        $update['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->referer();
        
        #unset variables
        unset($http1); unset($data); unset($_POST); unset($v); unset($form);

        $this->return->code(200)->return('success')->get()->referer();
    }

    public function ruleDelete($id)
    {
        $rule = $this->db->t1where('rule', 'rule_id=?', [$id]) ?: 
            $this->return->code(404)->return('not_found')->json();

        $delete = $this->db->delete('rule', [
            'rule_id' => $rule->rule_id
        ], ['id' => 'rule_id']);

        $delete['status'] == TRUE ?:
            $this->return->code(404)->return('error')->json();

        unset($id); unset($delete); unset($rule);

        $this->return->code(200)->return('success')->json();
    }
    
    public function ruleDestroy($id)
    {
        $http1 = 'panel/rule/page/1';
        $rule = $this->db->t1where('rule', 'rule_id=?', [$id]) ?: 
            $this->return->code(404)->return('not_found')->get()->http($http1);

        $delete = $this->db->delete('rule', [
            'rule_id' => $rule->rule_id
        ], ['id' => 'rule_id']);

        $delete['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->http($http1);

        unset($id); unset($delete); unset($rule);

        $this->return->code(200)->return('success')->get()->http($http1);
    }

    public function ruleStatus($rule_id)
    {
        $rule = $this->db->t1where('rule', 'rule_id=?', [$rule_id]) ?:
            $this->return->code(404)->return('not_found')->json();

        $update = $this->db->update('rule', [
            'rule_id' => $rule->rule_id,
            'rule_status' => $rule->rule_status == 1 ? 0 : 1,
        ], ['id' => 'rule_id']);

        $update['status'] == TRUE
            ? $this->return->code(200)->return('success')->json()
            : $this->return->code(200)->return('error')->json();
    }
    /**/

    public function RuleSearchEngine()
    {
        $http1 = 'panel/rule/search/data/';
        $http2 = 'panel/rule/page/1';

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
        $data += ['page_key' => 'panel/rule/search/key/value'];

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

    public function RuleSearchCount($key, $value)
    {
        $http1 = 'panel/rule/page/1';
        return $this->db->t1count('rule', "{$key} LIKE ? ", [
            "%{$value}%"
        ])->count ?: $this->return->code(404)->return('not_found')->get()->http($http1);
    }

    public function RuleSearch($key, $value, $start, $limit)
    {
        return $this->db->t1where('rule', "{$key} LIKE ? 
            ORDER BY rule_id DESC LIMIT {$start}, {$limit}", [
            "%{$value}%"
        ], 2, 2);
    }
}

