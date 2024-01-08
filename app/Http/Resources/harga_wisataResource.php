<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class harga_wisataResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id_harga_wisata '=> $this->id_harga_wisata,
            'harga'=> $this->harga,
            'id_lokasi '=> new lokasiCollection($this->whenLoaded('lokasi')),
            'id_jenis_orang '=> new jenis_orangCollection($this->whenLoaded('jenis_orang')) , 
        ];
    }
}
