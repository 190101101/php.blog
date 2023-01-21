<?php 

namespace modulus\admin\panel\controller;
use modulus\admin\panel\model\PanelModel;
use core\controller;

class PanelController extends controller
{
    public $panel;
    
    public function __construct()
    {
        $this->panel = new PanelModel();
    }

    public function limit($limit)
    {
        $this->panel->limit($limit);
    }

    public function index()
    {
        $this->layout('panel', 'admin', 'panel', 'panel', [
            'setting' => $this->panel->SettingCount(),
            'section' => $this->panel->SectionCount(),
            'category' => $this->panel->CategoryCount(),
            'article' => $this->panel->ArticleCount(),
            'guest' => $this->panel->GuestCount(),
        ]);
    }
}
