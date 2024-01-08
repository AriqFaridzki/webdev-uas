<?php

namespace App\Http\Requests\V1\detail_pesanan;

use Illuminate\Foundation\Http\FormRequest;

class detail_pesanan_store extends FormRequest
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
            // 'idDetailPesanan'=> ['required'],
            'idPesanan'=> ['required'],
            'idHargaWisata '=> ['required'],
            'qty '=>['required']
        ];
    }

    protected function prepareForValidation() // convert api column to db column
    {
        $this->merge([
            // 'id_detail_pesanan' => $this->idDetailPesanan,
            'id_pesanan' => $this->idPesanan,
            'id_harga_wisata'=>  $this->idHargaWisata,
        ]);
    }
}
