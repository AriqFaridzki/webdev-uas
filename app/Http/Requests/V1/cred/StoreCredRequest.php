<?php

namespace App\Http\Requests\V1\cred;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class StoreCredRequest extends FormRequest
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
            'id_user' => ['required', 'int'],
            'username' => ['required', 'string'],
            'password' => ['required'],
            'roles' => ['required', Rule::in(['admin', 'pelanggan'])],
        ];
    }

    protected function prepareForValidation() // convert api column to db column
    {
        $this->merge([
            'id_user' => $this->idUser,
        ]);
    }
}


// return [
//     'id'=> $this->id,
//     'idUser'=> $this->id_user,
//     'username'=> $this->username,
//     'password'=> $this->password,
//     'roles'=> $this->roles,
    
// ];
