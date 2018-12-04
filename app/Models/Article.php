<?php

namespace App\Models;

use App\Models\BaseModel;

class Article extends BaseModel
{
    public $timestamps = true;

    protected $table = 'article';

    protected $fillable = [
        'user_id', 'title', 'content', 'card_id' 
    ];

    protected $hidden = [
        'card_id', 'user_id'
    ];

    /**
     * 取得 回覆 模型
     * 
     * @return App\Models\Reply
     */
    public function reply(){
        return $this->hasMany('App\Models\Reply', 'article_id');
    }

    /**
     * 取得 使用者 模型 一對一關聯
     *
     * @return App\Models\User
     */
    public function user(){
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }

}
