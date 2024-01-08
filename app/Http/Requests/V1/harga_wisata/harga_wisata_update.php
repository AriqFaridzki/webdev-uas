<?php

namespace App\Http\Requests\V1\harga_wisata;

use Illuminate\Foundation\Http\FormRequest;

class harga_wisata_update extends FormRequest
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
                // 'idHargaWisata'=> ['required'],
                'harga'=> ['required'],
                'idLokasi '=> ['required'],
                'idJenisOrang '=>['required']
            ];
        } else {
            return [
                // 'idHargaWisata'=> ['sometimes','required'],
                'harga'=> ['sometimes','required'],
                'idLokasi '=> ['sometimes','required'],
                'idJenisOrang '=>['sometimes','required']
            ];
        }
    }

    protected function prepareForValidation() // convert api column to db column
    {

        if($this->idHargaWisata){
            $this->merge([
                'id_harga_wisata' => $this->idHargaWisata,
                
            ]);
        }

        if($this->idLokasi){
            $this->merge([
                'id_lokasi' => $this->idLokasi,
            ]);
        }

        if($this->idJenisOrang){
            $this->merge([
                'id_jenis_orang'=>  $this->idJenisOrang,
            ]);
        }
    }
}
