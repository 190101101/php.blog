<?php 

namespace modulus\main\Home\model;
use core\model;
use library\cookie;

class HomeModel extends model
{
    public function ArticleCount()
    {
        return $this->db->t1count('article', 'article_status=1')->count;
    }

    public function ArticleList($start, $limit)
    {
        return $this->db->t1where('article', "article_status=1
            ORDER BY article.article_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    public function mode($mode)
    {
        $mode == 1
            ? cookie::create('css_mode', 2)
            : cookie::create('css_mode', 1);
        $this->return->referer();
    }

    public function lang($lang)
    {
        $langs = [1, 2, 3, 4];

        in_array($lang, $langs) == TRUE ?: $this->return->referer();

        cookie::create('lang', (int) $lang);
        $this->return->referer();
    }
}

