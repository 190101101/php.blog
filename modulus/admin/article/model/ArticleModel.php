<?php 

namespace modulus\admin\article\model;
use core\model;
use \library\error;
use \Valitron\Validator as v;
use library\cookie;
use old;

class ArticleModel extends model
{
    public function ArticleColumn()
    {        
        return $this->db->columns('article');
    }    

    #
    public function category()
    {
        return $this->db->t1where('category', "category_id > 0 ORDER BY category_id DESC", [], 2);
    }

	public function ArticleCount()
    {
        return $this->db->t3count('article', 'category', 'section', "article.article_id > 0 ORDER BY article.article_id DESC", [])->count;
    }    

    public function ArticleList($start, $limit)
    {
        return $this->db->t3where('article', 'category', 'section', "article.article_id > 0
            ORDER BY article_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    #
    public function ByCategoryCount($section, $category)
    {
        return $this->db->t3count('article', 'category', 'section', 
            "section.section_slug=? && category.category_slug=?", [$section, $category])->count;
    }    

    public function ByCategoryList($section, $category, $start, $limit)
    {
        return $this->db->t3where('article', 'category', 'section', 
            "section.section_slug=? && category.category_slug=?
            ORDER BY article_id DESC LIMIT {$start}, {$limit}", [$section, $category], 2, 2);
    }

    #
    public function UserById($id)
    {
        return $this->db->t1where('user', "user_id=?", [$id]);
    }

    #
    public function CategoryById($id)
    {
        return $this->db->t1where('category', "category_id=?", [$id]);
    }

    #
    public function ArticleShow($id)
    {
        return $this->db->t3where('article', 'category', 'section', "article.article_id = ?", [$id]) ?:
            $this->return->code(404)->return('not_found')->get()->referer();
    }

    public function ArticleCreate()
    {
        $http1 = 'panel/article/create';

        $form = [
            'article_title',
            'article_text',
            'category_id',
            'article_keyword',
        ];

        #array diff keys
        array_different($form, $_POST) ?: 
            $this->return->code(404)->return('error_form')->get()->referer();

        #peel tags of array
        $article_text = $_POST['article_text'];
        $article_keywords = $_POST['article_keyword'];

        $data = peel_tag_array(except($_POST, ['article_text', 'article_keyword']));
        $data += ['article_text' => $article_text];
        old::create($data);

        $keywords = [];

        for($i = 0; $i < count($article_keywords); $i++){
            if(!empty($article_keywords[$i]) || strlen($article_keywords[$i]) > 20){
                $keywords[] = $article_keywords[$i];
            } continue;
        }

        $data['article_keyword'] = implode(' ', array_map(function($item){
            return '#'.seo(char_map(strtolower(remove_tags($item))));
        }, array_values($keywords)));

        $keyword = explode(' ', $data['article_keyword']);

        foreach($keyword as $key){
            $this->db->t1where('keyword', 'keyword_name=?', [$key])
            ?:
            $this->db->create('keyword', [
                'keyword_name' => $key
            ]);
        }

        #check via valitron
        $v = new v($data);

        $v->rule('required', 'article_title');
        $v->rule('required', 'article_text');
        $v->rule('required', 'category_id');

        $v->rule('lengthMin', 'article_title', 3);
        $v->rule('lengthMin', 'article_keyword', 2);
        $v->rule('lengthMin', 'article_text', 10);

        $v->rule('lengthMax', 'article_title', 100);
        $v->rule('lengthMax', 'article_keyword', 100);
        $v->rule('lengthMax', 'article_text', 60000);

        error::valitron($v, $http1);

        $data += ['article_slug' => seo(char_map($data['article_title']))];

        $category = $this->db->t1where('category', 'category_id=?', [
            $data['category_id']
        ]) ?: $this->return->code(404)->return('not_found', 'category')->get()->referer();

        $create = $this->db->create('article', $data);

        $create['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->referer();
        
        old::delete($data);

        #unset variables
        unset($http1); unset($data); unset($_POST); unset($v); unset($form);

        $this->return->code(200)->return('success')->get()->referer();
    }

    public function ArticleUpdate()
    {
        $form = [
            'article_title',
            'article_keyword',
            'article_text',
            'article_view',
            'category_id',
        ];

        #array diff keys
        array_different($form, $_POST) ?: 
            $this->return->code(404)->return('error_form')->get()->referer();

        #peel tags of array
        $article_text = $_POST['article_text'];
        $article_keywords = $_POST['article_keyword'];

        $data = peel_tag_array(except($_POST, ['article_text', 'article_keyword']));
        $data += ['article_text' => $article_text];
        old::create($data);

        $keywords = [];

        for($i = 0; $i < count($article_keywords); $i++){
            if(!empty($article_keywords[$i]) || strlen($article_keywords[$i]) > 20){
                $keywords[] = $article_keywords[$i];
            } continue;
        }

        $data['article_keyword'] = implode(' ', array_map(function($item){
            return '#'.seo(char_map(strtolower(remove_tags($item))));
        }, array_values($keywords)));

        $keyword = explode(' ', $data['article_keyword']);

        foreach($keyword as $key){
            $this->db->t1where('keyword', 'keyword_name=?', [$key])
            ?:
            $this->db->create('keyword', [
                'keyword_name' => $key
            ]);
        }

        #check via valitron
        $http1 = "panel/article/update/{$data['article_id']}";
        $v = new v($data);

        $v->rule('required', 'article_title');
        $v->rule('required', 'article_keyword');
        $v->rule('required', 'article_text');
        $v->rule('required', 'article_view');
        $v->rule('required', 'category_id');

        $v->rule('lengthMin', 'article_title', 3);
        $v->rule('lengthMin', 'article_keyword', 2);
        $v->rule('lengthMin', 'article_text', 10);

        $v->rule('lengthMax', 'article_title', 100);
        $v->rule('lengthMax', 'article_keyword', 100);
        $v->rule('lengthMax', 'article_text', 60000);

        error::valitron($v, $http1);

        $data += ['article_slug' => seo(char_map($data['article_title']))];
        
        #
        $article = $this->db->t1where('article', 'article_id = ?', [
            $data['article_id'],
        ]) ?: $this->return->code(404)->return('not_found', 'article')->get()->referer();

        $data += ['article_updated' => date('Y-m-d H:i:s')];

        #
        $update = $this->db->update('article', $data, ['id' => 'article_id']);

        $update['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->referer();
        
        old::delete($data);

        #unset variables
        unset($http1); unset($data); unset($_POST); unset($v); unset($form);

        $this->return->code(200)->return('success')->get()->referer();
    }

    public function ArticleDelete($id)
    {
        $article = $this->db->t1where('article', 'article_id=? && article_key=0', [$id]) ?: 
            $this->return->code(404)->return('not_found')->json();

        $delete = $this->db->delete('article', [
            'article_id' => $article->article_id
        ], ['id' => 'article_id']);

        $delete['status'] == TRUE ?:
            $this->return->code(404)->return('error')->json();

        unset($id); unset($delete); unset($article);

        $this->return->code(200)->return('success')->json();
    }

    public function ArticleDestroy($id)
    {
        $http1 = 'panel/article/page/1';
        
        $article = $this->db->t1where('article', 'article_id=? && article_key=0', [$id]) ?: 
            $this->return->code(404)->return('not_found')->get()->http($http1);

        $delete = $this->db->delete('article', [
            'article_id' => $article->article_id
        ], ['id' => 'article_id']);

        $delete['status'] == TRUE ?:
            $this->return->code(404)->return('error')->get()->http($http1);

        unset($id); unset($delete); unset($article);

        $this->return->code(200)->return('success')->get()->http($http1);
    }

    public function ArticleStatus($article_id)
    {
        $article = $this->db->t1where('article', 'article_id=?', [$article_id]) ?:
            $this->return->code(404)->return('not_found')->json();

        $update = $this->db->update('article', [
            'article_id' => $article->article_id,
            'article_status' => $article->article_status == 1 ? 0 : 1,
        ], ['id' => 'article_id']);

        $update['status'] == TRUE
            ? $this->return->code(200)->return('success')->json()
            : $this->return->code(200)->return('error')->json();
    }
    
    public function ArticleKey($article_id)
    {
        $article = $this->db->t1where('article', 'article_id=?', [$article_id]) ?:
            $this->return->code(404)->return('not_found')->json();

        $update = $this->db->update('article', [
            'article_id' => $article->article_id,
            'article_key' => $article->article_key == 1 ? 0 : 1,
        ], ['id' => 'article_id']);

        $update['status'] == TRUE
            ? $this->return->code(200)->return('success')->json()
            : $this->return->code(200)->return('error')->json();
    }

    public function ArticleSearchEngine()
    {
        $http1 = 'panel/article/search/data/';
        $http2 = 'panel/article/page/1';

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
        $data += ['page_key' => 'panel/article/search/key/value'];

        #valitron
        $v = new v($data);

        $v->rule('required', 'page');
        $v->rule('required', 'field_key');
        $v->rule('required', 'field_value');

        $v->rule('lengthMin', 'field_value', 1);
        $v->rule('lengthMin', 'field_key', 2);

        $v->rule('lengthMax', 'field_value', 100);
        $v->rule('lengthMax', 'field_key', 100);

        $v->rule('equals', 'page', 'page_key');

        error::valitron($v, $http2);

        if($data['field_key'] == 'article_slug'){
            $data['field_value'] = seo($data['field_value']);
        }

        $this->return->http("{$http1}{$data['field_key']}/{$data['field_value']}/page/1");
    }

    public function articleSearchCount($key, $value)
    {
        $http1 = 'panel/article/page/1';
        return $this->db->t3count('article', 'category', 'section', "article.{$key} LIKE ? ", [
            "%{$value}%"
        ])->count ?: $this->return->code(404)->return('not_found')->get()->http($http1);
    }

    public function ArticleSearch($key, $value, $start, $limit)
    {
        return $this->db->t3where('article', 'category', 'section', "article.{$key} LIKE ? 
            ORDER BY article.article_id DESC LIMIT {$start}, {$limit}", [
            "%{$value}%"
        ], 2, 2);
    }
}

