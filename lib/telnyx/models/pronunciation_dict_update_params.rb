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
      #   @return [Array<Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem>, nil]
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
      #   @param items [Array<Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem>] Updated list of pronunciation items (alias or phoneme type).
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
        variant :alias, -> { Telnyx::PronunciationDictAliasItem }

        # A phoneme pronunciation item. When the `text` value is found in input, it is pronounced using the specified IPA phoneme notation.
        variant :phoneme, -> { Telnyx::PronunciationDictPhonemeItem }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem)]
      end
    end
  end
end
