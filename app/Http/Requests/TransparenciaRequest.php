<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TransparenciaRequest extends FormRequest
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
        return [
            'titulo' => 'required',
            'ano' => 'required|numeric|digits:4',            
        ];
    }

    public function messages()
    {
        return [            
            'titulo.required' => 'O campo título é obrigatório.',
            'ano.required' => 'O campo ano é obrigatório.',
            'ano.digits' => 'Digite um ano válido.'            
        ];
    }
}
