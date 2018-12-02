<?php

use Illuminate\Database\Seeder;

class TestingDiscussSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $article = App\Models\Discussion::create([
            'user' => '測試人員',
            'title' => 'testTitle',
            'content' => 'This is a test content',
        ]);

        $reply = App\Models\ResponseDiscuss::create([
            'user' => '測試回覆',
            'content' => 'This is a test response content',
            'article_id' => 1,
        ]);

        DB::transaction(function () use ($article, $reply){
            $article->save();
            $reply->save();
        });
    }
}
