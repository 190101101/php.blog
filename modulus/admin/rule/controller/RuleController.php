<?php 

namespace modulus\admin\rule\controller;
use modulus\admin\rule\model\ruleModel;
use core\controller;
use pagination;

class RuleController extends controller
{
    public $rule;
    
    public function __construct()
    {
        $this->rule = new RuleModel();
        $this->page = new pagination();
    }

    public function rule()
    {
        $this->layout('panel', 'admin', 'rule', 'rule', [
            'page' => $p = $this->page->page($this->rule->ruleCount()),
            'rule' => $this->rule->ruleList($p->start, $p->limit),
            'column' => $this->rule->RuleColumn()
        ]);
    }

    public function show($id)
    {
        $this->layout('panel', 'admin', 'rule', 'show', [
            'rule' => $this->rule->ruleShow($id),
            'column' => $this->rule->RuleColumn()
        ]);
    }

    public function create()
    {
        $this->layout('panel', 'admin', 'rule', 'create', [
            'column' => $this->rule->RuleColumn()
        ]);
    }

    public function ruleCreate()
    {
        $this->rule->ruleCreate();
    }

    public function update($id)
    {
        $this->layout('panel', 'admin', 'rule', 'update', [
            'rule' => $this->rule->ruleShow($id),
            'column' => $this->rule->RuleColumn()
        ]);
    }

    public function ruleUpdate()
    {
        $this->rule->ruleUpdate();
    }

    public function ruleDelete($id)
    {
        $this->rule->ruleDelete($id);
    }

    public function ruleDestroy($id)
    {
        $this->rule->ruleDestroy($id);
    }

    public function ruleStatus($id)
    {
        $this->rule->ruleStatus($id);
    }

    public function RuleSearchEngine()
    {
        $this->rule->RuleSearchEngine();
    }

    public function RuleSearch($key, $value)
    {
        $this->layout('panel', 'admin', 'rule', 'search', [
            'page' => $p = $this->page->page($this->rule->RuleSearchCount($key, $value)),
            'rule' => $this->rule->RuleSearch($key, $value, $p->start, $p->limit),
            'column' => $this->rule->RuleColumn(),
            'search' => (object) ['key' => $key, 'value' => $value],
        ]);
    }
}
