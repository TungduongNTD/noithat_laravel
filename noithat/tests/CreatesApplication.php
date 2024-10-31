<?php

namespace Tests;

use Illuminate\Contracts\Console\Kernel;
use Illuminate\Foundation\Application;

trait CreatesApplication
{
    /**
     * Creates the application.
     *
     * @return Application
     */
    public function createApplication(): Application
    {
        // Load the application instance
        $application = require __DIR__ . '/../bootstrap/app.php';

        // Bootstrap the application
        $application->make(Kernel::class)->bootstrap();

        return $application;
    }
}
