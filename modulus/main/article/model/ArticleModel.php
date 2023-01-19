<?php 

namespace modulus\main\article\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;
use old;
use User;
use Article;

class ArticleModel extends model
{
    public function keyword()
    {
        return $this->db->t1where('article', 'category_id != 1 ORDER BY article_view DESC LIMIT 144', [], 2);
    }    

    public function articleById($id)
    {
        return $this->db->t1where('article', 'article.article_status=1 && article.article_id=?', [$id]) ?: $this->return->code(404)->return('not_found')->get()->http();
    }    

    #
    public function CategoryById($id)
    {
        return $this->db->t1where('category', "category_status=1 && category_id=?", [$id]);
    }

    #
    public function CategoryBySlug($slug)
    {
        return $this->db->t1where('category', "category_status=1 && category_slug=?", [$slug]);
    }

    #
    public function category()
    {
        return $this->db->t1where('category', "category_status=1", [], 2);
    }

    public function ArticleSearchEngine()
    {        
        $http1 = 'article/search/data/';

        $form = [
            'page',
            'field_value',
        ];

        #array diff keys
        array_different($form, $_GET) ?: 
            $this->return->code(404)->return('error_form')->get()->http();

        #peel tags of array
        $data = peel_tag_array($_GET);
        $data += ['page_key' => 'article/search/key/value'];
        $data += ['field_key' => 'article.article_slug'];

        #valitron
        $v = new v($data);

        $v->rule('required', 'page');
        $v->rule('required', 'page_key');
        $v->rule('required', 'field_key');
        $v->rule('required', 'field_value');

        $v->rule('lengthMin', 'field_value', 3);
        $v->rule('lengthMin', 'field_key', 3);

        $v->rule('lengthMax', 'field_value', 20);
        $v->rule('lengthMax', 'field_key', 100);

        $v->rule('equals', 'page', 'page_key');

        error::valitron($v);
        $seo = seo($data['field_value']);
        
        $this->return->http("{$http1}{$seo}/page/1");
    }

    public function articleSearchCount($value)
    {
        return $this->db->t3count('article', 'category', 'section', "article.article_status=1 && category.category_status=1 && section.section_status=1 && article.article_slug LIKE ? ORDER BY article.article_id DESC", ["%{$value}%"])->count
        ?: $this->return->code(404)->return('not_found')->get()->http();
    }

    public function ArticleSearch($value, $start, $limit)
    {
        return $this->db->t3where('article', 'category', 'section', "article.article_status=1 && category.category_status=1 && section.section_status=1 && article_slug LIKE ? 
            ORDER BY article.article_id DESC LIMIT {$start}, {$limit}", ["%{$value}%"], 2, 2);
    }

    public function ArticleSimilar()
    {
        return Array_chunk($this->db->t1where('article', "article.article_status=1 
            ORDER BY article.article_view ASC LIMIT 6", [
        ], 2), 3);
    }

    public function ByCategoryCount($id)
    {
        return $this->db->t1count('article', 'article.article_status=1 && article.category_id=?', [
            $id])->count
        ?: $this->return->code(404)->return('empty', 'bu kategoriyada')->get()->http();
    }

    public function ByCategory($id, $start, $limit)
    {
        return $this->db->t1where('article', "article.article_status=1 && article.category_id=? 
            ORDER BY article.article_id DESC LIMIT {$start}, {$limit}", [$id], 2, 2);
    }    
}

