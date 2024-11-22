<?php

namespace App\Filament\Pages;

use App\Filament\Widgets;
use Filament\Widgets\AccountWidget;

class Dashboard extends \Filament\Pages\Dashboard
{
    /**
     * @return array<class-string<Widget> | WidgetConfiguration>
     */
    public function getWidgets(): array
    {
        return [];
    }
    public function getHeaderWidgets(): array
    {
        return [
            Widgets\SiteVisitorsOverview::class,
            // AccountWidget::class,
        ];
    }
    public function getHeaderWidgetsColumns(): int | array
    {
        return 2;
    }
}
