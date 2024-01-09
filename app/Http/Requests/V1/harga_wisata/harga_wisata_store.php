<?php

namespace App\Http\Requests\V1\harga_wisata;

use Illuminate\Foundation\Http\FormRequest;

class harga_wisata_store extends FormRequest
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
            // 'idHargaWisata'=> ['required'],
            'harga'=> ['required'],
            'idLokasi'=> ['required'],
            'idJenisOrang'=>['required']
        ];
    }

    protected function prepareForValidation() // convert api column to db column
    {
        $this->merge([
            // 'id_harga_wisata' => $this->idHargaWisata,
            'id_lokasi' => $this->idLokasi,
            'id_jenis_orang'=>  $this->idJenisOrang,
        ]);
    }
}
