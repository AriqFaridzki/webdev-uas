<?php

namespace App\Http\Requests\V1\user;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateUserRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array // the rules if you want the process to success
    {
        if ($this->method() == 'PUT') {
            return [
                'namaDepan' => ['required', 'string'],
            'namaBelakang' => ['required', 'string'],
            'alamat' => ['required', 'string'],
            'email' => ['required', 'email'],
            'noTelp'  => ['required'],
            'gender' => ['required', Rule::in(['laki', 'perempuan'])],
            'umur' => ['required','numeric'],
            ];
        } else {
            return [
                'namaDepan' => ['sometimes','required', 'string'],
                'namaBelakang' => ['sometimes','required', 'string'],
                'alamat' => ['sometimes','required', 'string'],
                'email' => ['sometimes','required', 'email'],
                'noTelp'  => ['sometimes','required'],
                'gender' => ['sometimes','required', Rule::in(['laki', 'perempuan'])],
                'umur' => ['sometimes','required', 'numeric'],
            ];
        }
        
    }

    protected function prepareForValidation() // convert api column to db column
    {


        if($this->namaDepan){
            $this->merge([
                'nama_depan' => $this->namaDepan,
                
            ]);
        }

        if($this->namaBelakang){
            $this->merge([
                'nama_belakang' => $this->namaBelakang,
            ]);
        }

        if($this->noTelp){
            $this->merge([
                'no_telp'=>  $this->noTelp,
            ]);
        }
        
    }
}
