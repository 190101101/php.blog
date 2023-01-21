<?php 

namespace modulus\main\requires\model;
use core\model;

class requireModel extends model
{
	public function sections()
    {
        return $this->db->t1where('section', 'section_id!=1', [], 2);
    }
    
    public function categories()
    {
        return $this->db->t1where('category', 'category_id!=1', [], 2);
    }    
}
