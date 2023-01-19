<?php 

namespace modulus\admin\faq\controller;
use modulus\admin\faq\model\FaqModel;
use core\controller;
use pagination;

class FaqController extends controller
{
    public $faq;
    
    public function __construct()
    {
        $this->faq = new FaqModel();
        $this->page = new pagination();
    }

    public function faq()
    {
        $this->layout('panel', 'admin', 'faq', 'faq', [
            'page' => $p = $this->page->page($this->faq->faqCount()),
            'faq' => $this->faq->faqList($p->start, $p->limit),
            'column' => $this->faq->FaqColumn(),
        ]);
    }

    public function show($id)
    {
        $this->layout('panel', 'admin', 'faq', 'show', [
            'faq' => $this->faq->faqShow($id),
            'column' => $this->faq->FaqColumn(),
        ]);
    }

    public function create()
    {
        $this->layout('panel', 'admin', 'faq', 'create', []);
    }

    public function faqCreate()
    {
        $this->faq->faqCreate();
    }

    public function update($id)
    {
        $this->layout('panel', 'admin', 'faq', 'update', [
            'faq' => $this->faq->faqShow($id),
            'column' => $this->faq->FaqColumn(),
        ]);
    }

    public function faqUpdate()
    {
        $this->faq->faqUpdate();
    }

    public function faqDelete($id)
    {
        $this->faq->faqDelete($id);
    }

    public function faqDestroy($id)
    {
        $this->faq->faqDestroy($id);
    }

    public function faqStatus($id)
    {
        $this->faq->faqStatus($id);
    }

    public function FaqSearchEngine()
    {
        $this->faq->FaqSearchEngine();
    }

    public function FaqSearch($key, $value)
    {
        $this->layout('panel', 'admin', 'faq', 'search', [
            'page' => $p = $this->page->page($this->faq->faqSearchCount($key, $value)),
            'faq' => $this->faq->faqSearch($key, $value, $p->start, $p->limit),
            'column' => $this->faq->FaqColumn(),
            'search' => (object) ['key' => $key, 'value' => $value],
        ]);
    }
}
