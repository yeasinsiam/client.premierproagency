<?php

namespace App\Filament\Resources\Blog\PostResource\Pages;

use App\Filament\Resources\Blog\PostResource;
use Filament\Actions;
use Filament\Actions\Action;
use Filament\Resources\Pages\EditRecord;

class EditPost extends EditRecord
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
            // Action::make('save')
            //     ->label(__('filament-panels::resources/pages/edit-record.form.actions.save.label'))
            //     ->action('save')
            //     ->keyBindings(['mod+s']),
            Actions\DeleteAction::make(),
            // $this->getCancelFormAction(),
        ];
    }
}
