<?php

namespace App\Http\Requests\V1\user;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class BulkStoreUserRequest extends FormRequest

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

    public function rules(): array // the rules if you want the process to success
    {
        return [
            '*.namaDepan' => ['required', 'string'],
            '*.namaBelakang' => ['required', 'string'],
            '*.alamat' => ['required', 'string'],
            '*.email' => ['required', 'email'],
            '*.noTelp'  => ['required'],
            '*.gender' => ['required', Rule::in(['laki', 'perempuan'])],
            '*.umur' => ['required','numeric'],
        ];
    }

    protected function prepareForValidation() // convert api column to db column
    {

        $data = [];

        foreach ($this->toArray() as $obj) {
            $obj['nama_depan'] = $obj['namaDepan'] ?? null;
            $obj['nama_belakang'] = $obj['namaBelakang'] ?? null;
            $obj['no_telp'] = $obj['noTelp'] ?? null;

            $data[] = $obj;
        }

        $this->merge([$data]);
    }
}
