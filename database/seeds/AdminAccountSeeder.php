<?php

use Illuminate\Database\Seeder;

class AdminAccountSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

        $admin = new App\Models\User();
        $admin->type = "admin";
        $admin->name = "SuperUser";
        $admin->email = "test@mail.com";
        $admin->password = Hash::make("password");

        $admin->save();
    }
}
