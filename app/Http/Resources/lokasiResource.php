<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class lokasiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id_lokasi'=> $this->id_lokasi,
            'nama_lokasi '=> $this->nama_lokasi, 
            'alamat '=> $this->alamat, 
            'keterangan '=> $this->keterangan, 
            'map_link '=> $this->map_link, 
            'jenis_lokasi  '=> new lokasiCollection($this->whenLoaded('lokasi')), 
        ];
    }
}
