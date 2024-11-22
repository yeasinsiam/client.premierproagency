<?php

namespace App\Filament\Resources\Sections\ClientReviewResource\Pages;

use App\Filament\Resources\Sections\ClientReviewResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListClientReviews extends ListRecords
{
    protected static string $resource = ClientReviewResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
