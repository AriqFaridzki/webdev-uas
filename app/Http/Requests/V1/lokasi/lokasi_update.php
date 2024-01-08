<?php

namespace App\Http\Requests\V1\lokasi;

use Illuminate\Foundation\Http\FormRequest;

class lokasi_update extends FormRequest
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
                // 'idLokasi'=> ['required'],
                'namaLokasi'=> ['required'],
                'alamat '=> ['required'],
                'keterangan '=>['required'],
                'mapLink '=> ['required',],
                'jenisLokasi '=>['required'],
            ];
        } else {
            return [
                // 'idLokasi'=> ['sometimes','required'],
                'namaLokasi'=> ['sometimes','required'],
                'alamat '=> ['sometimes','required'],
                'keterangan '=>['sometimes','required'],
                'mapLink '=> ['sometimes'],
                'jenisLokasi '=>['sometimes','required'],
            ];
        }
    }

    protected function prepareForValidation() // convert api column to db column
    {
      
        // if($this->idLokasi){
        //     $this->merge([
        //         'id_lokasi' => $this->idLokasi,
                
        //     ]);
        // }

        if($this->namaLokasi){
            $this->merge([
                'nama_lokasi' => $this->namaLokasi,
            ]);
        }

        if($this->mapLink){
            $this->merge([
                'map_link'=>  $this->mapLink,
            ]);
        }

        if($this->jenisLokasi){
            $this->merge([
                'jenis_lokasi'=>  $this->jenisLokasi,
            ]);
        }
    }
}
