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
      optional :items, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::PronunciationDictItem] }

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
    end
  end
end
