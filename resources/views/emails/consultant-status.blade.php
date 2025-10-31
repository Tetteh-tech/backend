<!-- resources/views/emails/consultant-status.blade.php -->
<!DOCTYPE html>
<html>
<head>
    <title>Consultant Application Update</title>
</head>
<body>
    <h1>Hello {{ $consultant->name }},</h1>
    
    <p>Your consultant application status has been updated to: <strong>{{ $consultant->status }}</strong></p>
    
    @if($consultant->status === 'rejected' && isset($rejectionReason))
        <p>Reason: {{ $rejectionReason }}</p>
    @endif
    
    <p>Thank you,<br>
    {{ config('app.name') }}</p>
</body>
</html>