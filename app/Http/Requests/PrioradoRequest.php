<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PrioradoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
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
            'numero' => 'required|numeric|min:3|max:100',
            'nome' => 'required|min:3|max:100',
        ];
    }

    public function messages()
    {
        return [];
    }
}
