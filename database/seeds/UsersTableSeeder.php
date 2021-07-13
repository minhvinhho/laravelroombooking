<?php

use App\User;
use Illuminate\Database\Seeder;

class UsersTableSeeder extends Seeder
{
    public function run()
    {
        $users = [
            [
                'id'             => 1,
                'name'           => 'MinhAdmin',
                'email'          => 'Mrbright4078@gmail.com',
                'password'       => '$2y$10$CB25SyoBYxlQaTMdluFfieApXrT1wfUoB/02ivR2fm4muaUE2HqQ.',
                'remember_token' => null,
            ],
            [
                'id'             => 2,
                'name'           => 'MinhUser',
                'email'          => 'minh1999gay@gmail.com',
                'password'       => '$2y$10$CB25SyoBYxlQaTMdluFfieApXrT1wfUoB/02ivR2fm4muaUE2HqQ.',
                'remember_token' => null,
            ],
        ];

        User::insert($users);

    }
}
