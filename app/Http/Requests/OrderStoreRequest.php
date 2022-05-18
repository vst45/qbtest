<?php

namespace App\Http\Requests;

use App\Services\ServiceHttp;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Http\Exceptions\HttpResponseException;
use Illuminate\Contracts\Validation\Validator;

class OrderStoreRequest extends FormRequest
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
            'location_id' => 'required|integer',
            'volume' => 'required|numeric',
            'temperature' => 'required|numeric|between:-100,0',
            'start_date' => 'required|date_format:Y-m-d',
            'period' => 'required|integer|between:1,24'
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

            'location_id.required' => 'Локация не указана',
            'location_id.integer' => 'Локация не корректна',

            'volume.required' => 'Объем не указан',
            'volume.numeric' => 'Объем не корректен',

            'temperature.required' => 'Температура не указана',
            'temperature.numeric' => 'Температура не корректна',
            'temperature.between' => 'Температура должна быть минусовой',

            'start_date.required' => 'Начальная дата не указана',
            'start_date.date_format' => 'Начальная дата не корректна. Формат Y-m-d',

            'period.required' => 'Срок не указан',
            'period.integer' => 'Срок не корректен',
            'period.between' => 'Срок не корректен. Минимум 1 и максимум 24 дней',
        ];
    }

}
