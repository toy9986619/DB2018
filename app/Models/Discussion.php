<?php

namespace App\Models;

use App\Models\BaseModel;

class Discussion extends BaseModel
{
    public $timestamps = true;

    protected $table = 'discussion';

    protected $fillable = [
        'discuss_user', 'title', 'content', 'created_at', 'updated_at' 
    ];

    protected $hidden = [
        'updated_at'
    ];

    /**
     * 取得 回覆 模型
     * 
     * @return App\models\ResponseDiscuss
     */
    public function response_discuss(){
        return $this->hasMany('App\Models\ResponseDiscuss', 'discussion_id', 'id');
    }

}
