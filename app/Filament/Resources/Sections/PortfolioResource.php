<?php

namespace App\Filament\Resources\Sections;

use App\Filament\Resources\Sections\PortfolioResource\Pages;
use App\Filament\Resources\Sections\PortfolioResource\RelationManagers;
use App\Helpers\Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use App\Models\Portfolio;
use App\Models\PortfolioItem;
use Filament\Forms;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Spatie\MediaLibrary\MediaCollections\Models\Media;

class PortfolioResource extends Resource
{
    protected static ?string $model = Portfolio::class;

    protected static ?string $navigationIcon = 'heroicon-o-briefcase';

    protected static ?string $navigationGroup = 'Sections';

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Section::make()->schema([
                    Forms\Components\TextInput::make('title')
                        ->required(),
                    Forms\Components\Repeater::make('portfolioItems')
                        ->relationship()
                        ->defaultItems(1)
                        ->reorderable()
                        ->reorderableWithButtons()
                        ->orderColumn('order_column')
                        ->grid(3)
                        ->reorderableWithDragAndDrop()
                        ->columnSpanFull()
                        ->schema([
                            SpatieMediaLibraryFileUpload::make('thumbnail')
                                ->collection('thumbnail')
                                ->disk('media')
                                ->imageEditor()
                                ->responsiveImages()
                                ->preserveFilenames()
                                ->image()
                                ->required(),
                            Forms\Components\TextInput::make('title')
                                ->required()
                        ])
                        ->minItems(1)

                ])->columns(2),

            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')->sortable(),
                SpatieMediaLibraryImageColumn::make('portfolioItems.thumbnail')
                    ->collection('thumbnail')
                    ->circular()
                    ->stacked()
                    ->limit(3)
                    ->limitedRemainingText()

            ])->reorderable('order_column')
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
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
            'index' => Pages\ListPortfolios::route('/'),
            'create' => Pages\CreatePortfolio::route('/create'),
            'edit' => Pages\EditPortfolio::route('/{record}/edit'),
        ];
    }
}
