<?php

namespace App\Http\Requests\V1\user;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true; // activate if the user need to be authorized
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array // the rules if you want the process to success
    {
        return [
            'namaDepan' => ['required', 'string'],
            'namaBelakang' => ['required', 'string'],
            'alamat' => ['required', 'string'],
            'email' => ['required', 'email'],
            'noTelp'  => ['required'],
            'gender' => ['required', Rule::in(['laki', 'perempuan'])],
            'umur' => ['required','numeric'],
        ];
    }

    protected function prepareForValidation() // convert api column to db column
    {
        $this->merge([
            'nama_depan' => $this->namaDepan,
            'nama_belakang' => $this->namaBelakang,
            'no_telp'=>  $this->noTelp,
        ]);
    }
}
