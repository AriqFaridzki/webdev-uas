<?php

namespace App\Http\Requests\V1\cred;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class UpdateCredRequest extends FormRequest
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
                'idUser' => ['required', 'int'],
                'username' => ['required', 'string'],
                'password' => ['required'],
                'roles' => ['required', Rule::in(['admin', 'pelanggan'])],
            ];
        } else {
            return [
                'idUser' => ['sometimes','required', 'int'],
                'username' => ['sometimes','required', 'string'],
                'password' => ['sometimes','required'],
                'roles' => ['sometimes','required', Rule::in(['admin', 'pelanggan'])],
            ];
        }
        
    }

    protected function prepareForValidation() // convert api column to db column
    {


        if($this->idUser){
            $this->merge([
                'id_user' => $this->idUser,
            ]);
        }
        
    }
}

// return [
//     'idUser' => ['required', 'int'],
//     'username' => ['required', 'string'],
//     'password' => ['required'],
//     'roles' => ['required', 'string'],
// ];