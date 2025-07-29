<?php
// app/Mail/ConsultantStatusNotification.php
namespace App\Mail;

use App\Models\Consultant;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;

class ConsultantStatusNotification extends Mailable
{
    use Queueable, SerializesModels;

    public $consultant;
    public $status;

    public function __construct(Consultant $consultant, $status)
    {
        $this->consultant = $consultant;
        $this->status = $status;
    }

    public function build()
    {
        return $this->subject('Your Consultant Application Status')
                    ->markdown('emails.consultant-status')
                    ->with([
                        'consultant' => $this->consultant,
                        'status' => $this->status,
                    ]);
    }
}