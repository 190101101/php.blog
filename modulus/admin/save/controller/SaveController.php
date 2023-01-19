<?php 

namespace modulus\admin\save\controller;
use modulus\admin\save\model\SaveModel;
use core\controller;
use pagination;

class SaveController extends controller
{
    public $save;
    
    public function __construct()
    {
        $this->save = new SaveModel();
        $this->page = new pagination();
    }

    public function save()
    {
        $this->layout('panel', 'admin', 'save', 'save', [
            'page' => $p = $this->page->page($this->save->saveCount()),
            'save' => $this->save->saveList($p->start, $p->limit),
            'column' => $this->save->saveColumn()
        ]);
    }

    public function ByUser($user)
    {
        $this->layout('panel', 'admin', 'save', 'byUser', [
            'page' => $p = $this->page->page($this->save->SaveByUserCount($user)),
            'save' => $this->save->SaveByUser($user, $p->start, $p->limit),
            'column' => $this->save->saveColumn(),
        ]);
    }

    public function show($id)
    {
        $this->layout('panel', 'admin', 'save', 'show', [
            'save' => $this->save->SaveShow($id),
            'column' => $this->save->SaveColumn()
        ]);
    }

    public function create()
    {
        $this->layout('panel', 'admin', 'save', 'create', [
            'column' => $this->save->SaveColumn()
        ]);
    }

    public function SaveCreate()
    {
        $this->save->SaveCreate();
    }

    public function update($id)
    {
        $this->layout('panel', 'admin', 'save', 'update', [
            'save' => $this->save->SaveShow($id),
            'column' => $this->save->SaveColumn()
        ]);
    }

    public function SaveUpdate()
    {
        $this->save->SaveUpdate();
    }

    public function saveDelete($id)
    {
        $this->save->saveDelete($id);
    }

    public function SaveDestroy($id)
    {
        $this->save->SaveDestroy($id);
    }

    public function saveSearchEngine()
    {
        $this->save->saveSearchEngine();
    }

    public function saveSearch($key, $value)
    {
        $this->layout('panel', 'admin', 'save', 'search', [
            'page' => $p = $this->page->page($this->save->saveSearchCount($key, $value)),
            'save' => $this->save->saveSearch($key, $value, $p->start, $p->limit),
            'column' => $this->save->saveColumn(),
            'search' => (object) ['key' => $key, 'value' => $value],
        ]);
    }
}
