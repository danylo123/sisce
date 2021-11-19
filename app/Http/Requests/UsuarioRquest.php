<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UsuarioRquest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        $id = $this->request->get("id");

        return [
            'name' => 'required|min:3|max:100',
            'email' => 'required|email|unique:users,email',
            'id_sisdm' => 'required|numeric|unique:users,id_sisdm',
            'password' => 'required',
            'nivel' => 'required'
        ];
    }

    public function messages()
    {
        return [
            'id_sisdm.unique' => 'Esse ID já está cadastrado.',
            'email.unique' => 'Esse e-mail já está sendo utilizado.'
        ];
    }
}
