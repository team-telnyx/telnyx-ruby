# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PronunciationDicts#list
    class PronunciationDictListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_number
      #   Page number (1-based). Defaults to 1.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Number of results per page. Defaults to 20, maximum 250.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(page_number: nil, page_size: nil, request_options: {})
      #   @param page_number [Integer] Page number (1-based). Defaults to 1.
      #
      #   @param page_size [Integer] Number of results per page. Defaults to 20, maximum 250.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
