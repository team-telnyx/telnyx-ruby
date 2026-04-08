# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PronunciationDicts#update
    class PronunciationDictUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute items
      #   Updated list of pronunciation items (alias or phoneme type).
      #
      #   @return [Array<Telnyx::Models::PronunciationDictUpdateParams::Item::Alias, Telnyx::Models::PronunciationDictUpdateParams::Item::Phoneme>, nil]
      optional :items,
               -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::PronunciationDictUpdateParams::Item] }

      # @!attribute name
      #   Updated dictionary name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!method initialize(id:, items: nil, name: nil, request_options: {})
      #   @param id [String]
      #
      #   @param items [Array<Telnyx::Models::PronunciationDictUpdateParams::Item::Alias, Telnyx::Models::PronunciationDictUpdateParams::Item::Phoneme>] Updated list of pronunciation items (alias or phoneme type).
      #
      #   @param name [String] Updated dictionary name.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # A single pronunciation dictionary item. Use type 'alias' to replace matched text
      # with a spoken alias, or type 'phoneme' to specify exact pronunciation using IPA
      # notation.
      module Item
        extend Telnyx::Internal::Type::Union

        discriminator :type

        # An alias pronunciation item. When the `text` value is found in input, it is replaced with the `alias` before speech synthesis.
        variant :alias, -> { Telnyx::PronunciationDictUpdateParams::Item::Alias }

        # A phoneme pronunciation item. When the `text` value is found in input, it is pronounced using the specified IPA phoneme notation.
        variant :phoneme, -> { Telnyx::PronunciationDictUpdateParams::Item::Phoneme }

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
          #   {Telnyx::Models::PronunciationDictUpdateParams::Item::Alias} for more details.
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
          #   @return [Symbol, Telnyx::Models::PronunciationDictUpdateParams::Item::Phoneme::Alphabet]
          required :alphabet, enum: -> { Telnyx::PronunciationDictUpdateParams::Item::Phoneme::Alphabet }

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
          #   {Telnyx::Models::PronunciationDictUpdateParams::Item::Phoneme} for more details.
          #
          #   A phoneme pronunciation item. When the `text` value is found in input, it is
          #   pronounced using the specified IPA phoneme notation.
          #
          #   @param alphabet [Symbol, Telnyx::Models::PronunciationDictUpdateParams::Item::Phoneme::Alphabet] The phonetic alphabet used for the phoneme notation.
          #
          #   @param phoneme [String] The phoneme notation representing the desired pronunciation.
          #
          #   @param text [String] The text to match in the input. Case-insensitive matching is used during synthes
          #
          #   @param type [Symbol, :phoneme] The item type.

          # The phonetic alphabet used for the phoneme notation.
          #
          # @see Telnyx::Models::PronunciationDictUpdateParams::Item::Phoneme#alphabet
          module Alphabet
            extend Telnyx::Internal::Type::Enum

            IPA = :ipa

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::PronunciationDictUpdateParams::Item::Alias, Telnyx::Models::PronunciationDictUpdateParams::Item::Phoneme)]
      end
    end
  end
end
