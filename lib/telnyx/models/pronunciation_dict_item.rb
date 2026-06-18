# frozen_string_literal: true

module Telnyx
  module Models
    # A single pronunciation dictionary item. Use type 'alias' to replace matched text
    # with a spoken alias, or type 'phoneme' to specify exact pronunciation using IPA
    # notation.
    module PronunciationDictItem
      extend Telnyx::Internal::Type::Union

      discriminator :type

      # An alias pronunciation item. When the `text` value is found in input, it is replaced with the `alias` before speech synthesis.
      variant :alias, -> { Telnyx::PronunciationDictAliasItem }

      # A phoneme pronunciation item. When the `text` value is found in input, it is pronounced using the specified IPA phoneme notation.
      variant :phoneme, -> { Telnyx::PronunciationDictPhonemeItem }

      # @!method self.variants
      #   @return [Array(Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem)]
    end
  end
end
