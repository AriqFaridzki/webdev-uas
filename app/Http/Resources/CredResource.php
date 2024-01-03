<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class CredResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            // 'id'=> $this->id,
            'idUser'=> $this->id_user,
            'username'=> $this->username,
            'password'=> $this->password,
            'roles'=> $this->roles,
            
        ];
    }
}


            // $table->id();

            // $table->foreignId('id_user')->constrained(
            //     table: 'users', column:'id_user' ,indexName: 'id_user'
            // );
            
            // $table->string('username');
            // $table->string('password');
            // $table->enum('roles',['admin', 'pelanggan']);
            // $table->timestamps();