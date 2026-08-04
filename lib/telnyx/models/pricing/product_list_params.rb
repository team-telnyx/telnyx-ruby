# frozen_string_literal: true

module Telnyx
  module Models
    module Pricing
      # @see Telnyx::Resources::Pricing::Products#list
      class ProductListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page_number
        #   Page number (1-based).
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   Number of items per page (max 100).
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(page_number: nil, page_size: nil, request_options: {})
        #   @param page_number [Integer] Page number (1-based).
        #
        #   @param page_size [Integer] Number of items per page (max 100).
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
