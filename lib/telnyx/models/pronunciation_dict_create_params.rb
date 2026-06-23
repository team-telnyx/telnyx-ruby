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
      required :items, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::PronunciationDictItem] }

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
    end
  end
end
