<?php

use Illuminate\Database\Seeder;

class TestingArticleSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $article = App\Models\Article::create([
            'user' => '測試人員',
            'title' => 'testTitle',
            'content' => 'This is a test content',
        ]);

        $reply = App\Models\Reply::create([
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
