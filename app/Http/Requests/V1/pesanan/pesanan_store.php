<?php

namespace App\Http\Requests\V1\pesanan;

use Illuminate\Foundation\Http\FormRequest;

class pesanan_store extends FormRequest
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
        return [
            'idUser'=> ['required'],
            'tglPesan'=> ['required'],
            'tglSelesai'=> ['required'],
            'statusPesanan'=>['required'],
            'totalHarga'=> ['required'],
            'fotoBuktiPembayaran'=>['sometimes'],
        ];
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
    }
}
