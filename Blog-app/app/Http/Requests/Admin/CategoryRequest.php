<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class CategoryRequest extends FormRequest
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
     * @return array<string, \Illuminate\Contracts\Validation\Rule|array|string>
     */
    public function rules(): array
    {
        switch ($this->method()) {
            case 'POST': {
                    return [
                        'title'     => ['required'],
                        'image'  => ['required', 'image', 'mimes:jpeg,png,jpg,gif', 'max:4096'],
                    ];
                }
            case 'PUT':
            case 'PATCH': {
                    return [
                        'title'     => ['required'],
                        'image'  => ['image', 'mimes:jpeg,png,jpg,gif', 'max:4096'],
                    ];
                }
            default:
                break;
        }
    }
}
