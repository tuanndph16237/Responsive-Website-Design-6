<?php

namespace Database\Seeders;

use App\Models\Role;
use Illuminate\Database\Seeder;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class RolePivotSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $permissions = [

            1 => [
                'permissions' => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
            ],
            2 => [
                'permissions' => [1],
            ],

        ];

        foreach ($permissions as $id => $permission) {
            $role = Role::find($id);

            foreach ($permission as $key => $ids) {
                $role->{$key}()->sync($ids);
            }
        }
    }
}
