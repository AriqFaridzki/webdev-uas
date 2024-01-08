<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class jenis_lokasiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id_jenis_lokasi '=> $this->id_jenis_lokasi,
            'jenis_lokasi '=> $this->jenis_lokasi, 
        ];
    }
}
