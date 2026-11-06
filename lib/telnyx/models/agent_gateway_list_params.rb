# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::AgentGateways#list
    class AgentGatewayListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute page_number
      #   The page to return, counting from 1.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   Results per page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(page_number: nil, page_size: nil, request_options: {})
      #   @param page_number [Integer] The page to return, counting from 1.
      #
      #   @param page_size [Integer] Results per page.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
