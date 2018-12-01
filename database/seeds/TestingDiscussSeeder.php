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
        $discussion = App\Models\Discussion::create([
            'discuss_user' => '測試人員',
            'title' => 'testTitle',
            'content' => 'This is a test content',
        ]);

        $response = App\Models\ResponseDiscuss::create([
            'response_user' => '測試回覆',
            'response_content' => 'This is a test response content',
            'discussion_id' => 1,
        ]);

        DB::transaction(function () use ($discussion, $response){
            $discussion->save();
            $response->save();
        });
    }
}
