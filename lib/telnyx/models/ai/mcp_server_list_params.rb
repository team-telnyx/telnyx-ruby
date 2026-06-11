# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::McpServers#list
      class McpServerListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page_number
        #   Page number to retrieve (1-based).
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of items to return per page.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute type
        #   Filter results by type.
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute url
        #   Filter results by url.
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(page_number: nil, page_size: nil, type: nil, url: nil, request_options: {})
        #   @param page_number [Integer] Page number to retrieve (1-based).
        #
        #   @param page_size [Integer] Number of items to return per page.
        #
        #   @param type [String] Filter results by type.
        #
        #   @param url [String] Filter results by url.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
