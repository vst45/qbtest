<?php

namespace App\Http\Requests;

use App\Services\ServiceHttp;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Contracts\Validation\Validator;

class AuthSigninRequest extends FormRequest
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
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'email' => ['required', 'string', 'email'],
            'password' => ['required', 'string', 'min:6']
        ];
    }

    public function failedValidation(Validator $validator)
    {
        throw new HttpResponseException(
            ServiceHttp::sendError('Validation Error.', $validator->errors(), 400)
        );
    }

    public function messages() //OPTIONAL
    {
        return [

            'email.required' => 'E-mail не указан',
            'email.string' => 'E-mail не корректен',
            'email.email' => 'E-mail не корректен',

            'password.required' => 'Пароль не указан',
            'password.string' => 'Пароль не корректен',
            'password.min:6' => 'Пароль не корректен',
        ];
    }

}
