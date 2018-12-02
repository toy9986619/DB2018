<?php

namespace App\Models;

use App\Models\BaseModel;

class Reply extends BaseModel
{
    public $timestamps = true;

    protected $table = 'reply';
    
    protected $fillable = [
        'user', 'content', 'article_id'
    ];

    protected $hidden = [
        'updated_at', 'article_id'
    ];

    /**
     * 回傳 回覆到討論 模型
     * 
     * @return App\Models\Article
     */
    // public function article(){
    //     return $this->belongsTo('App\Models\Article');
    // }
}
