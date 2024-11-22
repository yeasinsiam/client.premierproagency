<?php

namespace App\Filament\Widgets;

use App\Models\ClientReview;
use App\Models\Post;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class SiteVisitorsOverview extends BaseWidget
{


    // protected int | string | array $columnSpan = 2;

    // protected function getColumns(): int
    // {
    //     return 2;
    // }


    protected function getStats(): array
    {
        return [
            Stat::make('Posts', Post::count()),
            Stat::make('Client Reviews', ClientReview::count()),
        ];
    }
}
