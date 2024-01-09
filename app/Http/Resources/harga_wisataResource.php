<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;
use App\Http\Resources\lkasiCollection;
use App\Http\Resources\jenis_lokasiCollection;

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
            'lokasi '=> $this->relationLoaded('lokasis') ? new lokasiResource($this->lokasis) : null,
            'id_jenis_orang '=> $this->relationLoaded('relatedJenisOrang') ? new jenis_orangResource($this->relatedJenisOrang) : null , 
        ];
    }
}
