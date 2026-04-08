# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PronunciationDicts#create
    class PronunciationDictCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   A pronunciation dictionary record.
      #
      #   @return [Telnyx::Models::PronunciationDictCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::PronunciationDictCreateResponse::Data }

      # @!method initialize(data: nil)
      #   Response containing a single pronunciation dictionary.
      #
      #   @param data [Telnyx::Models::PronunciationDictCreateResponse::Data] A pronunciation dictionary record.

      # @see Telnyx::Models::PronunciationDictCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
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
        #   @return [Array<Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Alias, Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme>, nil]
        optional :items,
                 -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::PronunciationDictCreateResponse::Data::Item] }

        # @!attribute name
        #   Human-readable name for the dictionary. Must be unique within the organization.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute record_type
        #   Identifies the resource type.
        #
        #   @return [Symbol, Telnyx::Models::PronunciationDictCreateResponse::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::Models::PronunciationDictCreateResponse::Data::RecordType }

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
        #   {Telnyx::Models::PronunciationDictCreateResponse::Data} for more details.
        #
        #   A pronunciation dictionary record.
        #
        #   @param id [String] Unique identifier for the pronunciation dictionary.
        #
        #   @param created_at [Time] ISO 8601 timestamp with millisecond precision.
        #
        #   @param items [Array<Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Alias, Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme>] List of pronunciation items (alias or phoneme type).
        #
        #   @param name [String] Human-readable name for the dictionary. Must be unique within the organization.
        #
        #   @param record_type [Symbol, Telnyx::Models::PronunciationDictCreateResponse::Data::RecordType] Identifies the resource type.
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
          variant :alias, -> { Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Alias }

          # A phoneme pronunciation item. When the `text` value is found in input, it is pronounced using the specified IPA phoneme notation.
          variant :phoneme, -> { Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme }

          class Alias < Telnyx::Internal::Type::BaseModel
            # @!attribute alias_
            #   The replacement text that will be spoken instead.
            #
            #   @return [String]
            required :alias_, String, api_name: :alias

            # @!attribute text
            #   The text to match in the input. Case-insensitive matching is used during
            #   synthesis.
            #
            #   @return [String]
            required :text, String

            # @!attribute type
            #   The item type.
            #
            #   @return [Symbol, :alias]
            required :type, const: :alias

            # @!method initialize(alias_:, text:, type: :alias)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Alias} for more
            #   details.
            #
            #   An alias pronunciation item. When the `text` value is found in input, it is
            #   replaced with the `alias` before speech synthesis.
            #
            #   @param alias_ [String] The replacement text that will be spoken instead.
            #
            #   @param text [String] The text to match in the input. Case-insensitive matching is used during synthes
            #
            #   @param type [Symbol, :alias] The item type.
          end

          class Phoneme < Telnyx::Internal::Type::BaseModel
            # @!attribute alphabet
            #   The phonetic alphabet used for the phoneme notation.
            #
            #   @return [Symbol, Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme::Alphabet]
            required :alphabet,
                     enum: -> { Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme::Alphabet }

            # @!attribute phoneme
            #   The phoneme notation representing the desired pronunciation.
            #
            #   @return [String]
            required :phoneme, String

            # @!attribute text
            #   The text to match in the input. Case-insensitive matching is used during
            #   synthesis.
            #
            #   @return [String]
            required :text, String

            # @!attribute type
            #   The item type.
            #
            #   @return [Symbol, :phoneme]
            required :type, const: :phoneme

            # @!method initialize(alphabet:, phoneme:, text:, type: :phoneme)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme} for more
            #   details.
            #
            #   A phoneme pronunciation item. When the `text` value is found in input, it is
            #   pronounced using the specified IPA phoneme notation.
            #
            #   @param alphabet [Symbol, Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme::Alphabet] The phonetic alphabet used for the phoneme notation.
            #
            #   @param phoneme [String] The phoneme notation representing the desired pronunciation.
            #
            #   @param text [String] The text to match in the input. Case-insensitive matching is used during synthes
            #
            #   @param type [Symbol, :phoneme] The item type.

            # The phonetic alphabet used for the phoneme notation.
            #
            # @see Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme#alphabet
            module Alphabet
              extend Telnyx::Internal::Type::Enum

              IPA = :ipa

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Alias, Telnyx::Models::PronunciationDictCreateResponse::Data::Item::Phoneme)]
        end

        # Identifies the resource type.
        #
        # @see Telnyx::Models::PronunciationDictCreateResponse::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          PRONUNCIATION_DICT = :pronunciation_dict

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
