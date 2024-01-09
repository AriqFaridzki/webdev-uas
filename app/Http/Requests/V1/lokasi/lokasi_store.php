<?php

namespace App\Http\Requests\V1\lokasi;

use Illuminate\Foundation\Http\FormRequest;

class lokasi_store extends FormRequest
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
            // 'idLokasi'=> ['required'],
            'namaLokasi'=> ['required'],
            'alamat'=> ['required'],
            'keterangan'=>['required'],
            'mapLink'=> ['sometimes'],
            'jenisLokasi'=>['required'],
        ];
    }

    protected function prepareForValidation() // convert api column to db column
    {
        $this->merge([
            'id_lokasi' => $this->idLokasi,
            'nama_lokasi' => $this->namaLokasi,
            'map_link'=>  $this->mapLink,
            'jenis_lokasi'=>  $this->jenisLokasi,
        ]);
    }
}
