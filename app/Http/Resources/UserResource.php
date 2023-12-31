<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    // public function toArray(Request $request): array
    // {
    //     return parent::toArray($request);
    // }

    public function toArray(Request $request): array
    {
        return [
            'idUser' => $this->id_user,
            'namaDepan' => $this->nama_depan,
            'namaBelakang' => $this->nama_belakang,
            'alamat' => $this->alamat,
            'email' => $this->email,
            'noTelp' => $this->no_telp,
            'gender' => $this->gender,
            'umur' => $this->umur,
            'creds' => new CredResource($this->whenLoaded('cred')) // for single HasOne relation
            // 'creds' => CredResource::collection($this->whenLoaded('cred')) // for  HasMany relationship
        ];
    }
}


