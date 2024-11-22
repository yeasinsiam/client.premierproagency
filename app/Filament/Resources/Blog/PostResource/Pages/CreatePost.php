<?php

namespace App\Filament\Resources\Blog\PostResource\Pages;

use App\Filament\Resources\Blog\PostResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Resources\Pages\CreateRecord;

class CreatePost extends CreateRecord
{
    protected static string $resource = PostResource::class;

    /**
     * @return array<Action | ActionGroup>
     */
    // protected function getFormActions(): array
    // {
    //     return [];
    // }

    protected function getHeaderActions(): array
    {
        return [
            // Action::make('create')
            //     ->label(__('filament-panels::resources/pages/create-record.form.actions.create.label'))
            //     ->action('create')
            //     ->keyBindings(['mod+s']),
            // ...(static::canCreateAnother() ? [$this->getCreateAnotherFormAction()] : []),
            // $this->getCancelFormAction(),
        ];
    }
}
