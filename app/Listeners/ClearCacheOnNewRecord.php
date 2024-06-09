<?php

namespace App\Listeners;

use App\Events\NewRecordCreated;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Cache;

class ClearCacheOnNewRecord
{
    /**
     * Create the event listener.
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     */
    public function handle(NewRecordCreated $event): void
    {
        // Limpiar el caché aquí
        Cache::flush();
    }
}
