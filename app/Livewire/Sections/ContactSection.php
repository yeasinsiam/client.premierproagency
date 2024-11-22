<?php

namespace App\Livewire\Sections;

use App\Mail\GuestContactMail;
use Illuminate\Support\Facades\Mail;
use Livewire\Component;

class ContactSection extends Component
{



    public $name;
    public $email = "";
    public $phone;
    public $service = "";
    public $message;

    protected $rules = [
        'name' => 'required|min:6',
        'email' => 'nullable|email',
        'phone' => 'required|numeric',
        'service' => 'required|string',
        'message' => 'required',
    ];


    public function updated($propertyName)
    {
        $this->validateOnly($propertyName);
    }

    public function handleSubmit()
    {

        $this->validate();


        Mail::to(env('MAIL_FROM_ADDRESS'))
            ->queue(new GuestContactMail(
                $this->name,
                $this->email,
                $this->phone,
                $this->service,
                $this->message
            ));

        $this->reset();

        session()->flash('success-message', '<strong>Thank you for contacting with us!</strong> We will reach you as soon as possible.');
    }
    public function render()
    {
        return view('livewire.sections.contact-section');
    }
}
