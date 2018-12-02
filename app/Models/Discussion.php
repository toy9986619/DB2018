<?php

namespace App\Models;

use App\Models\BaseModel;

class Discussion extends BaseModel
{
    public $timestamps = true;

    protected $table = 'article';

    protected $fillable = [
        'user', 'title', 'content' 
    ];

    protected $hidden = [
        'updated_at'
    ];

    /**
     * 取得 回覆 模型
     * 
     * @return App\models\ResponseDiscuss
     */
    public function reply_id(){
        return $this->hasMany('App\Models\ResponseDiscuss', 'article_id');
    }

}
