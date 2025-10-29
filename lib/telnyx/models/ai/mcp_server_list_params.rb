# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::McpServers#list
      class McpServerListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute type
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(page_number: nil, page_size: nil, type: nil, url: nil, request_options: {})
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param type [String]
        #   @param url [String]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
