<?php

namespace App\Filament\Resources\Sections;

use App\Filament\Resources\Sections\ClientReviewResource\Pages;
use App\Filament\Resources\Sections\ClientReviewResource\RelationManagers;
use App\Models\ClientReview;
use Filament\Forms;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class ClientReviewResource extends Resource
{
    protected static ?string $model = ClientReview::class;

    protected static ?string $navigationIcon = 'heroicon-o-academic-cap';

    protected static ?string $navigationGroup = 'Sections';

    protected static ?int $navigationSort = 0;


    public static function getEloquentQuery(): Builder
    {
        return parent::getEloquentQuery()->ordered();
    }


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make()->schema([

                    Forms\Components\TextInput::make('name')
                        ->columnSpanFull()
                        ->required(),

                    Forms\Components\Textarea::make('comment')
                        ->columnSpanFull()
                        ->required(),
                ])->columnSpan(2),

                Forms\Components\Section::make()->schema([

                    SpatieMediaLibraryFileUpload::make('avatar')
                        ->collection('avatar')
                        ->disk('media')
                        ->image()
                        ->imageEditor()
                        ->preserveFilenames()
                        ->required(),
                ])->columnSpan(1),



            ])->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([

                SpatieMediaLibraryImageColumn::make('avatar')
                    ->collection('avatar'),
                Tables\Columns\TextColumn::make('name')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('comment')
                    ->limit(50)
                    ->searchable()
                    ->sortable(),
            ])->reorderable('order_column')
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ])
            ->emptyStateActions([
                Tables\Actions\CreateAction::make(),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListClientReviews::route('/'),
            'create' => Pages\CreateClientReview::route('/create'),
            'edit' => Pages\EditClientReview::route('/{record}/edit'),
        ];
    }
}
