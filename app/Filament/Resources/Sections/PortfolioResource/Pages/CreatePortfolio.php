<?php

namespace App\Filament\Resources\Sections\PortfolioResource\Pages;

use App\Filament\Resources\Sections\PortfolioResource;
use App\Helpers\ModelHelper;
use App\Models\Portfolio;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreatePortfolio extends CreateRecord
{
    protected static string $resource = PortfolioResource::class;

    protected  function mutateFormDataBeforeCreate(array $data): array
    {

        // seo_slug
        $data['seo_slug'] = ModelHelper::generateUniqueSlugFromModel($data['title'], Portfolio::class);

        return $data;
    }
}
