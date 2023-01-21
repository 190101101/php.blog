<?php 

namespace modulus\admin\panel\model;
use core\model;
use limit;

class PanelModel extends model
{
    public function limit($limit)
    {
        $limits = [5, 10, 25, 50, 100];

        in_array($limit, $limits) == TRUE ?: $this->return->referer();

        limit::set($limit);
        $this->return->referer();
    }

	public function GuestCount()
	{
		return $this->db->t1count('guest', 'guest_id > 0', [])->count;
	}

	public function ArticleCount()
	{
		return $this->db->t1count('article', 'article_id > 0', [])->count;
	}

	public function SettingCount()
	{
		return $this->db->t1count('setting', 'setting_id > 0', [])->count;
	}

	public function SectionCount()
	{
		return $this->db->t1count('section', 'section_id > 0', [])->count;
	}

	public function CategoryCount()
	{
		return $this->db->t1count('category', 'category_id > 0', [])->count;
	}
}

