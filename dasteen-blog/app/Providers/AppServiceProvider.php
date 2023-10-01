<?php

namespace App\Providers;

use App\Repositories\BaseRepository;
use App\Repositories\BaseRepositoryInterface;
use App\Services\BaseService;
use App\Services\BaseServiceInterface;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        $this->registerRepositories();
        $this->registerServices();
    }

    /**
     * registerRepositories
     *
     * @return void
     */
    private function registerRepositories(): void
    {
        $this->app->singleton(BaseRepositoryInterface::class, BaseRepository::class);
    }

    /**
     * registerServices
     *
     * @return void
     */
    private function registerServices(): void
    {
        $this->app->singleton(BaseServiceInterface::class, BaseService::class);
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Schema::defaultStringLength(191);
    }
}
