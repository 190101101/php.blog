<?php 

namespace modulus\main\category\model;
use core\model;

class CategoryModel extends model
{
    public function CategoryCount()
    {
        return $this->db->t2count('category', 'section', 
            'category.category_id!=1 && section.section_id=!1', [])->count;
    }

    public function CategoryList($start, $limit)
    {
        return $this->db->t2where('category', 'section', 
            "category.category_id!=1 && section.section_id!=1 
            ORDER BY category.category_id DESC LIMIT {$start}, {$limit}", [], 2, 2);
    }

    public function category()
    {
        return $this->db->t1where('category', "category.category_id!=1", [], 2, 2);
    }
}

