<?php

namespace App\Helpers\Filament\Tables\Columns;

use  Filament\Tables\Columns\SpatieMediaLibraryImageColumn as SpatieMediaLibraryImageColumnMain;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Throwable;


class SpatieMediaLibraryImageColumn extends SpatieMediaLibraryImageColumnMain
{

    public function getImageUrl(?string $state = null): ?string
    {
        $record = $this->getRecord();


        if ($this->queriesRelationships($record)) {
            $record = $record->getRelationValue($this->getRelationshipName());
            /** @var ?Media $media */
            $media = $record->map(fn (Model $singleRecored) => $singleRecored->getRelationValue('media'))
                ->collapse()->first(fn (Media $media): bool => $media->uuid === $state);
        } else {

            /** @var ?Media $media */
            $media = $record->media->first(fn (Media $media): bool => $media->uuid === $state);
        }

        if (!$media) {
            return null;
        }

        if ($this->getVisibility() === 'private') {
            try {
                return $media->getTemporaryUrl(
                    now()->addMinutes(5),
                    $this->getConversion(),
                );
            } catch (Throwable $exception) {
                // This driver does not support creating temporary URLs.
            }
        }

        return $media->getUrl($this->getConversion());
    }

    /**
     * @return array<string>
     */
    public function getState(): array
    {
        $collection = $this->getCollection();

        $record = $this->getRecord();

        if ($this->queriesRelationships($record)) {
            $records = $record->getRelationValue($this->getRelationshipName());

            return $records->map(fn (Model $singleRecored) => $singleRecored->getRelationValue('media'))
                ->collapse()
                ->filter(fn (Media $media): bool => blank($collection) || ($media->getAttributeValue('collection_name') === $collection))
                ->map(fn (Media $media): string => $media->uuid)
                ->all();
        }



        return $record->getRelationValue('media')
            ->filter(fn (Media $media): bool => blank($collection) || ($media->getAttributeValue('collection_name') === $collection))
            ->map(fn (Media $media): string => $media->uuid)
            ->all();
    }
}
