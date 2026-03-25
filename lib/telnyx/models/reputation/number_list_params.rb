# frozen_string_literal: true

module Telnyx
  module Models
    module Reputation
      # @see Telnyx::Resources::Reputation::Numbers#list
      class NumberListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page_number
        #   Page number (1-indexed)
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of items per page
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute phone_number
        #   Filter by specific phone number (E.164 format)
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(page_number: nil, page_size: nil, phone_number: nil, request_options: {})
        #   @param page_number [Integer] Page number (1-indexed)
        #
        #   @param page_size [Integer] Number of items per page
        #
        #   @param phone_number [String] Filter by specific phone number (E.164 format)
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
