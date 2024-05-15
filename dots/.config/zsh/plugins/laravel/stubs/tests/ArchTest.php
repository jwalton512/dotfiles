<?php

declare(strict_types=1);

use App\Http\Controllers\Controller;
use Illuminate\Database\Eloquent\Model;

arch('strict types are used')
    ->expect('App')
    ->toUseStrictTypes();

arch('globals')
    ->expect(['dd', 'ddd', 'die', 'dump', 'ray', 'sleep'])
    ->toBeUsedInNothing();

arch('models extend base model')
    ->expect('App\Models')
    ->toExtend(Model::class);

arch('controllers')
    ->expect('App\Controllers')
    ->toBeClasses()
    ->toExtend(Controller::class);

arch('actions')
    ->expect('App\Actions')
//    ->defer(fn () => test()->arch()->ignore(['App\Actions\Fortify', 'App\Actions\Jetstream']))
    ->toBeClasses()
    ->toHaveMethod('execute');

// arch('enums')
//    ->expect('App\Enums')
//    ->toBeEnums();

