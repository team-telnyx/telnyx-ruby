# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Connections#list_active_calls
    class ConnectionListActiveCallsParams < Telnyx::Internal::Type::BaseModel
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

      # @!method initialize(page_number: nil, page_size: nil, request_options: {})
      #   @param page_number [Integer]
      #   @param page_size [Integer]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
