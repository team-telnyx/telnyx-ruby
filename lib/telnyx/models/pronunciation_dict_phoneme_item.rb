# frozen_string_literal: true

module Telnyx
  module Models
    class PronunciationDictPhonemeItem < Telnyx::Internal::Type::BaseModel
      # @!attribute alphabet
      #   The phonetic alphabet used for the phoneme notation.
      #
      #   @return [Symbol, Telnyx::Models::PronunciationDictPhonemeItem::Alphabet]
      required :alphabet, enum: -> { Telnyx::PronunciationDictPhonemeItem::Alphabet }

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
      #   @return [Symbol, Telnyx::Models::PronunciationDictPhonemeItem::Type]
      required :type, enum: -> { Telnyx::PronunciationDictPhonemeItem::Type }

      # @!method initialize(alphabet:, phoneme:, text:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PronunciationDictPhonemeItem} for more details.
      #
      #   A phoneme pronunciation item. When the `text` value is found in input, it is
      #   pronounced using the specified IPA phoneme notation.
      #
      #   @param alphabet [Symbol, Telnyx::Models::PronunciationDictPhonemeItem::Alphabet] The phonetic alphabet used for the phoneme notation.
      #
      #   @param phoneme [String] The phoneme notation representing the desired pronunciation.
      #
      #   @param text [String] The text to match in the input. Case-insensitive matching is used during synthes
      #
      #   @param type [Symbol, Telnyx::Models::PronunciationDictPhonemeItem::Type] The item type.

      # The phonetic alphabet used for the phoneme notation.
      #
      # @see Telnyx::Models::PronunciationDictPhonemeItem#alphabet
      module Alphabet
        extend Telnyx::Internal::Type::Enum

        IPA = :ipa

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The item type.
      #
      # @see Telnyx::Models::PronunciationDictPhonemeItem#type
      module Type
        extend Telnyx::Internal::Type::Enum

        PHONEME = :phoneme

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
