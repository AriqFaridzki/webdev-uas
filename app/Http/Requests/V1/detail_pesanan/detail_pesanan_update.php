<?php

namespace App\Http\Requests\V1\detail_pesanan;

use Illuminate\Foundation\Http\FormRequest;

class detail_pesanan_update extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return false;
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
                // 'idDetailPesanan'=> ['required'],
                'idPesanan'=> ['required'],
                'idHargaWisata '=> ['required'],
                'qty '=>['required']
            ];
        } else {
            return [
                // 'idDetailPesanan'=> ['sometimes','required'],
                'idPesanan'=> ['sometimes','required'],
                'idHargaWisata '=> ['sometimes','required'],
                'qty '=>['sometimes','required']
            ];
        }
    }

    protected function prepareForValidation() // convert api column to db column
    {

        if($this->idDetailPesanan){
            $this->merge([
                'id_detail_pesanan' => $this->idDetailPesanan,
                
            ]);
        }

        if($this->idPesanan){
            $this->merge([
                'id_pesanan' => $this->idPesanan,
            ]);
        }

        if($this->idHargaWisata){
            $this->merge([
                'id_harga_wisata'=>  $this->idHargaWisata,
            ]);
        }
    }
}
