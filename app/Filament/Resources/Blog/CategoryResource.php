<?php

namespace App\Filament\Resources\Blog;

use App\Filament\Resources\Blog\CategoryResource\Pages;
use App\Filament\Resources\Blog\CategoryResource\RelationManagers;
use App\Helpers\ModelHelper;
use App\Models\PostCategory;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Forms\Set;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\HtmlString;

class CategoryResource extends Resource
{
    protected static ?string $model = PostCategory::class;

    protected static ?string $navigationIcon = 'heroicon-o-rectangle-stack';

    protected static ?string $navigationGroup = 'Blog';

    protected static ?string $label = "Category";

    protected static ?int $navigationSort = 1;

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\TextInput::make('title')
                    ->columnSpanFull()
                    ->live(debounce: 500)
                    ->afterStateUpdated(fn (Set $set, ?string $state) => $set('seo_slug',  ModelHelper::generateUniqueSlugFromModel($state, PostCategory::class, 'seo_slug')))
                    ->required(),
                Forms\Components\TextInput::make('seo_slug')
                    ->label('Slug')
                    ->columnSpanFull()
                    ->live(debounce: 500)
                    ->unique(PostCategory::class, 'seo_slug', ignoreRecord: false)
                    ->helperText(function (Get $get) {

                        if (!$get('seo_slug'))
                            return '';

                        $url = sprintf('%s/blogs/categories/%s', env('APP_URL'), $get('seo_slug'));

                        return  new HtmlString('Permalink: <a class="text-primary-500" href="' . $url . '" target="_blank">' . $url . '</a>');
                    })
                    ->required()
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                Tables\Columns\TextColumn::make('title')->sortable()->searchable(),
                Tables\Columns\TextColumn::make('seo_slug')
                    ->label('Slug')


            ])
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


    public static function getPages(): array
    {
        return [
            'index' => Pages\ManageCategories::route('/'),
        ];
    }
}
