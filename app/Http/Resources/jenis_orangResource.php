<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class jenis_orangResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id_jenis_orang  '=> $this->id_jenis_orang,
            'jenis_orang '=> $this->jenis_orang, 
        ];
    }
}
