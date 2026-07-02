# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Kvs#list
      class KvListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute page_number
        #   The page number to load.
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #   The size of the page. Values above 250 are treated as 250.
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(page_number: nil, page_size: nil, request_options: {})
        #   @param page_number [Integer] The page number to load.
        #
        #   @param page_size [Integer] The size of the page. Values above 250 are treated as 250.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
