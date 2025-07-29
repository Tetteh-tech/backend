<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CorsMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        $allowedOrigin = config('app.my_api_url');
        $origin = $request->headers->get('Origin');

        $isAllowed = $origin === $allowedOrigin;

        if ($request->isMethod('OPTIONS')) {
            return response('', 200)
                ->header('Access-Control-Allow-Origin', $isAllowed ? $origin : '')
                ->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS')
                ->header('Access-Control-Allow-Headers', 'Content-Type, X-Requested-With, X-CSRF-Token, X-XSRF-TOKEN, Authorization')
                ->header('Access-Control-Allow-Credentials', 'true');
        }

        $response = $next($request);

        return $response
            ->header('Access-Control-Allow-Origin', $isAllowed ? $origin : '')
            ->header('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE, OPTIONS')
            ->header('Access-Control-Allow-Headers', 'Content-Type, X-Requested-With, X-CSRF-Token, X-XSRF-TOKEN, Authorization')
            ->header('Access-Control-Allow-Credentials', 'true');
    }
}
    