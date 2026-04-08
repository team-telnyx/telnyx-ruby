# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PronunciationDicts#create
    class PronunciationDictCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute items
      #   List of pronunciation items (alias or phoneme type). At least one item is
      #   required.
      #
      #   @return [Array<Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem>]
      required :items,
               -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::PronunciationDictCreateParams::Item] }

      # @!attribute name
      #   Human-readable name. Must be unique within the organization.
      #
      #   @return [String]
      required :name, String

      # @!method initialize(items:, name:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PronunciationDictCreateParams} for more details.
      #
      #   @param items [Array<Telnyx::Models::PronunciationDictAliasItem, Telnyx::Models::PronunciationDictPhonemeItem>] List of pronunciation items (alias or phoneme type). At least one item is requir
      #
      #   @param name [String] Human-readable name. Must be unique within the organization.
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
