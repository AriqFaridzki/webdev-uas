<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class pesananResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            'id_pesanan'=> $this->id_pesanan,
            'id_user'=> $this->id_user, 
            'tgl_pesan'=> $this->tgl_pesan, 
            'tgl_selesai'=> $this->tgl_selesai, 
            'status_pesanan'=> $this->status_pesanan, 
            'foto_bukti_pembayaran'=> $this->foto_bukti_pembayaran, 
            'total_harga'=> $this->total_harga,
            'detail_pesanan' => detail_pesananCollection::collection($this->whenLoaded('pesanan'))
        ];
    }
}
