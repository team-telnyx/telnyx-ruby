# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PronunciationDicts#list
    class PronunciationDictData < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier for the pronunciation dictionary.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute created_at
      #   ISO 8601 timestamp with millisecond precision.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute items
      #   List of pronunciation items (alias or phoneme type).
      #
      #   @return [Array<Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem>, nil]
      optional :items, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::PronunciationDictData::Item] }

      # @!attribute name
      #   Human-readable name for the dictionary. Must be unique within the organization.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute record_type
      #   Identifies the resource type.
      #
      #   @return [Symbol, Telnyx::Models::PronunciationDictData::RecordType, nil]
      optional :record_type, enum: -> { Telnyx::PronunciationDictData::RecordType }

      # @!attribute updated_at
      #   ISO 8601 timestamp with millisecond precision.
      #
      #   @return [Time, nil]
      optional :updated_at, Time

      # @!attribute version
      #   Auto-incrementing version number. Increases by 1 on each update. Used for
      #   optimistic concurrency control and cache invalidation.
      #
      #   @return [Integer, nil]
      optional :version, Integer

      # @!method initialize(id: nil, created_at: nil, items: nil, name: nil, record_type: nil, updated_at: nil, version: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PronunciationDictData} for more details.
      #
      #   A pronunciation dictionary record.
      #
      #   @param id [String] Unique identifier for the pronunciation dictionary.
      #
      #   @param created_at [Time] ISO 8601 timestamp with millisecond precision.
      #
      #   @param items [Array<Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem>] List of pronunciation items (alias or phoneme type).
      #
      #   @param name [String] Human-readable name for the dictionary. Must be unique within the organization.
      #
      #   @param record_type [Symbol, Telnyx::Models::PronunciationDictData::RecordType] Identifies the resource type.
      #
      #   @param updated_at [Time] ISO 8601 timestamp with millisecond precision.
      #
      #   @param version [Integer] Auto-incrementing version number. Increases by 1 on each update. Used for optimi

      # A single pronunciation dictionary item. Use type 'alias' to replace matched text
      # with a spoken alias, or type 'phoneme' to specify exact pronunciation using IPA
      # notation.
      module Item
        extend Telnyx::Internal::Type::Union

        discriminator :type

        # An alias pronunciation item. When the `text` value is found in input, it is replaced with the `alias` before speech synthesis.
        variant :alias, -> { Telnyx::PronunciationDictAliasItem }

        # A phoneme pronunciation item. When the `text` value is found in input, it is pronounced using the specified IPA phoneme notation.
        variant :phoneme, -> { Telnyx::PronunciationDictPhonemeItem }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem)]
      end

      # Identifies the resource type.
      #
      # @see Telnyx::Models::PronunciationDictData#record_type
      module RecordType
        extend Telnyx::Internal::Type::Enum

        PRONUNCIATION_DICT = :pronunciation_dict

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
