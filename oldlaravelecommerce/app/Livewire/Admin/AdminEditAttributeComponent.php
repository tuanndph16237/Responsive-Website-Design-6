<?php

namespace App\Livewire\Admin;

use App\Models\ProductAttribute;
use Livewire\Component;

class AdminEditAttributeComponent extends Component
{
    public $name;
    public $attribute_id;

    public function mount($attribute_id)
    {
        $pattributes = ProductAttribute::find($attribute_id);
        $this->attribute_id = $pattributes->id;
    }
    public function render()
    {
        $pattributes = ProductAttribute::paginate(10);
        return view('livewire.admin.admin-edit-attribute-component');
    }
}
