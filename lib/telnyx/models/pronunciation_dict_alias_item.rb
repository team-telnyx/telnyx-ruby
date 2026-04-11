# frozen_string_literal: true

module Telnyx
  module Models
    class PronunciationDictAliasItem < Telnyx::Internal::Type::BaseModel
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
      #   @return [Symbol, Telnyx::Models::PronunciationDictAliasItem::Type]
      required :type, enum: -> { Telnyx::PronunciationDictAliasItem::Type }

      # @!method initialize(alias_:, text:, type:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PronunciationDictAliasItem} for more details.
      #
      #   An alias pronunciation item. When the `text` value is found in input, it is
      #   replaced with the `alias` before speech synthesis.
      #
      #   @param alias_ [String] The replacement text that will be spoken instead.
      #
      #   @param text [String] The text to match in the input. Case-insensitive matching is used during synthes
      #
      #   @param type [Symbol, Telnyx::Models::PronunciationDictAliasItem::Type] The item type.

      # The item type.
      #
      # @see Telnyx::Models::PronunciationDictAliasItem#type
      module Type
        extend Telnyx::Internal::Type::Enum

        ALIAS = :alias

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
