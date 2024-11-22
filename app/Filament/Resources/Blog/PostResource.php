<?php

namespace App\Filament\Resources\Blog;

use App\Filament\Resources\Blog\PostResource\Pages;
use App\Filament\Resources\Blog\PostResource\RelationManagers;
use App\Helpers\ModelHelper;
use App\Models\Post;
use App\Models\PostCategory;
use App\Models\PostTag;
use Filament\Forms;
use Filament\Forms\Components\SpatieMediaLibraryFileUpload;
use Filament\Forms\Form;
use Filament\Forms\Get;
use Filament\Forms\Set;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Columns\SpatieMediaLibraryImageColumn;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Support\HtmlString;

class PostResource extends Resource
{
    protected static ?string $model = Post::class;

    protected static ?string $navigationIcon = 'heroicon-o-document-text';

    protected static ?string $navigationGroup = 'Blog';

    protected static ?int $navigationSort = 0;


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Forms\Components\Group::make()
                    ->schema([
                        Forms\Components\Section::make()->schema([

                            Forms\Components\TextInput::make('title')
                                ->columnSpanFull()
                                ->live(debounce: 1000)
                                ->afterStateUpdated(
                                    function (Set $set, ?string $state) {
                                        // $set('seo_meta_title', $state);
                                        $set('seo_slug',  ModelHelper::generateUniqueSlugFromModel($state, PostCategory::class, 'seo_slug'));
                                    }
                                )

                                ->required(),

                            Forms\Components\RichEditor::make('content')
                                ->columnSpanFull()
                                ->disableToolbarButtons([
                                    'attachFiles',
                                ])
                                // ->fileAttachmentsDisk('other-media')
                                // ->fileAttachmentsDirectory('post-content-attachments')
                                // ->fileAttachmentsVisibility('public')
                                ->required(),
                        ]),
                        Forms\Components\Section::make('SEO')->schema([
                            Forms\Components\TextInput::make('seo_slug')
                                ->label('Slug')
                                ->columnSpanFull()
                                ->live(debounce: 500)
                                ->unique(column: 'seo_slug', ignoreRecord: true)
                                ->helperText(function (Get $get) {

                                    if (!$get('seo_slug'))
                                        return '';

                                    $url = sprintf('%s/blogs/categories/%s', env('APP_URL'), $get('seo_slug'));

                                    return  new HtmlString('Permalink: <a class="text-primary-500" href="' . $url . '" target="_blank">' . $url . '</a>');
                                })
                                ->required(),
                            Forms\Components\TextInput::make('seo_meta_title')
                                ->label('Meta Title'),
                            Forms\Components\TextInput::make('seo_meta_keywords')
                                ->label('Meta Keywords'),
                            Forms\Components\Textarea::make('seo_meta_description')
                                ->label('Meta Description')->columnSpanFull(),
                        ])->columns(2),
                    ])->columnSpan(2),

                Forms\Components\Group::make()
                    ->schema([
                        Forms\Components\Section::make('Thumbnail')->schema([
                            SpatieMediaLibraryFileUpload::make('mini')
                                ->collection('thumbnail-mini')
                                ->disk('media')
                                ->image()
                                // ->minCropBoxWidth('508')
                                // ->minCanvasHeight('650')

                                ->imageEditor()
                                ->helperText('Try uploading image withing (508x650)px or use image editor to resize.')
                                ->responsiveImages()
                                ->preserveFilenames()
                                ->required(),

                            SpatieMediaLibraryFileUpload::make('Large')
                                ->collection('thumbnail-large')
                                ->disk('media')
                                ->image()
                                // ->minCropBoxWidth('508')
                                // ->minCanvasHeight('650')
                                ->imageEditor()
                                ->responsiveImages()
                                ->preserveFilenames()
                                ->required(),


                        ])->collapsible(),

                        Forms\Components\Section::make('Associations')->schema([
                            Forms\Components\Select::make('categories')
                                ->relationship('categories', 'title')
                                ->createOptionForm([
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

                                            $url = sprintf('%s/blog/categories/%s', env('APP_URL'), $get('seo_slug'));

                                            return  new HtmlString('Permalink: <a class="text-primary-500" href="' . $url . '" target="_blank">' . $url . '</a>');
                                        })
                                        ->required()
                                ])
                                ->preload()
                                ->searchable()
                                ->multiple()
                                ->minItems(1)
                                ->required(),
                            Forms\Components\Select::make('tags')
                                ->relationship('tags', 'title')
                                ->createOptionForm([
                                    Forms\Components\TextInput::make('title')
                                        ->columnSpanFull()
                                        ->live(debounce: 500)
                                        ->afterStateUpdated(fn (Set $set, ?string $state) => $set('seo_slug',  ModelHelper::generateUniqueSlugFromModel($state, PostTag::class, 'seo_slug'))),
                                    Forms\Components\TextInput::make('seo_slug')
                                        ->label('Slug')
                                        ->columnSpanFull()
                                        ->live(debounce: 500)
                                        ->unique(PostTag::class, 'seo_slug', ignoreRecord: false)
                                        ->helperText(function (Get $get) {

                                            if (!$get('seo_slug'))
                                                return '';

                                            $url = sprintf('%s/blog/categories/%s', env('APP_URL'), $get('seo_slug'));

                                            return  new HtmlString('Permalink: <a class="text-primary-500" href="' . $url . '" target="_blank">' . $url . '</a>');
                                        })
                                        ->required()
                                ])
                                ->preload()
                                ->searchable()
                                ->multiple(),
                            // Forms\Components\TagsInput::make('tags')
                            //     ->suggestions(PostTag::query()->pluck('title')->toArray())
                        ])->collapsible()
                    ])

            ])->columns(3);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                SpatieMediaLibraryImageColumn::make('thumbnail')
                    ->collection('thumbnail-mini'),
                Tables\Columns\TextColumn::make('title')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('seo_slug')
                    ->label('Slug')
                    ->searchable()
                    ->sortable(),
                Tables\Columns\TextColumn::make('categories.title')
                    ->badge(),



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


    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPosts::route('/'),
            'create' => Pages\CreatePost::route('/create'),
            'edit' => Pages\EditPost::route('/{record}/edit'),
        ];
    }
}
