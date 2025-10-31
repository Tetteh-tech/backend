<?php
// artisan.php
require __DIR__.'/vendor/autoload.php';

$app = require_once __DIR__.'/bootstrap/app.php';

$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);

echo "<pre>";
$response = $kernel->call('storage:link');
echo "Output: " . $response . "\n";
echo $kernel->output();
echo "</pre>";
