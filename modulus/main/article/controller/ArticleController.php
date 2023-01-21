<?php 

namespace modulus\main\article\controller;
use modulus\main\article\model\ArticleModel;
use core\controller;
use pagination;

class ArticleController extends controller
{
    public $article;
    
    public function __construct()
    {
        $this->article = new ArticleModel();
        $this->page = new pagination();
    }

    public function articleById($id)
    {
        $this->layout('main', 'main', 'article', 'read', [
            'article' => $this->article->articleById($id),
            'similar' => $this->article->ArticleSimilar(),
            'keyword' => $this->article->keyword(),
        ]);
    }

    public function ByCategory($id)
    {
        $this->layout('main', 'main', 'article', 'ByCategory', [
            'page' => $p = $this->page->page($this->article->ByCategoryCount($id), 12),
            'article' => $this->article->ByCategory($id, $p->start, $p->limit),
            'category' => $this->article->CategoryById($id),
        ]);
    }

    public function ArticleSearchEngine()
    {
        $this->article->ArticleSearchEngine();
    }

    public function ArticleSearch($value)
    {        
        $this->layout('main', 'main', 'article', 'search', [
            'page' => $p = $this->page->page($this->article->articleSearchCount($value), 12),
            'article' => $this->article->ArticleSearch($value, $p->start, $p->limit),
            'search' => (object) ['value' => $value],
        ]);
    }

}
