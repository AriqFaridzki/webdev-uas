<?php

namespace App\Http\Requests\V1\pesanan;

use Illuminate\Foundation\Http\FormRequest;

class pesanan_update extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        if ($this->method() == 'PUT') {
            return [
                'idUser'=> ['required'],
                'tglPesan'=> ['required'],
                'tglSelesai '=> ['sometimes'],
                'statusPesanan '=>['required'],
                'totalHarga '=> ['required'],
                'fotoBuktiPembayaran '=>['sometimes'],
            ];
        } else {
            return [
                'idUser'=> ['sometimes','required'],
                'tglPesan'=> ['sometimes','required'],
                'tglSelesai '=> ['sometimes','required'],
                'statusPesanan '=>['sometimes','required'],
                'totalHarga '=> ['sometimes','required'],
                'fotoBuktiPembayaran '=>['sometimes','required'],
            ];
        }
    }

    protected function prepareForValidation() // convert api column to db column
    {
        $this->merge([
            'id_user' => $this->idUser,
            'tgl_pesan' => $this->tglPesan,
            'tgl_selesai'=>  $this->tglSelesai,
            'status_pesanan'=>  $this->statusPesanan,
            'total_harga'=>  $this->totalHarga,
            'foto_bukti_pembayaran'=>  $this->fotoBuktiPembayaran,
        ]);

        if($this->idUser){
            $this->merge([
                'id_user' => $this->idUser,
                
            ]);
        }

        if($this->tglPesan){
            $this->merge([
                'tgl_pesan' => $this->tglPesan,
            ]);
        }

        if($this->tglSelesai){
            $this->merge([
                'tgl_selesai'=>  $this->tglSelesai,
            ]);
        }

        if($this->statusPesanan){
            $this->merge([
                'status_pesanan' => $this->statusPesanan,
                
            ]);
        }

        if($this->totalHarga){
            $this->merge([
                'total_harga' => $this->totalHarga,
            ]);
        }

        if($this->fotoBuktiPembayaran){
            $this->merge([
                'foto_bukti_pembayaran'=>  $this->fotoBuktiPembayaran,
            ]);
        }
    }
}
