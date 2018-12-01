<?php

namespace App\Models;

use App\Models\BaseModel;

class ResponseDiscuss extends BaseModel
{
    public $timestamps = true;

    protected $table = 'response';
    
    protected $fillable = [
        'response_user', 'response_content', 'discussion_id'
    ];

    protected $hidden = [
        'updated_at', 'discussion_id'
    ];

    /**
     * 回傳 回覆到討論 模型
     * 
     * @return App\Models\Discussion
     */
    // public function discussion(){
    //     return $this->belongsTo('App\Models\Discussion');
    // }
}
