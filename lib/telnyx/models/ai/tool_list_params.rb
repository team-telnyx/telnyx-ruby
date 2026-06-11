# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Tools#list
      class ToolListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_name
        #   Filter results by filter name.
        #
        #   @return [String, nil]
        optional :filter_name, String

        # @!attribute filter_type
        #   Filter results by filter type.
        #
        #   @return [String, nil]
        optional :filter_type, String

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

        # @!method initialize(filter_name: nil, filter_type: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param filter_name [String] Filter results by filter name.
        #
        #   @param filter_type [String] Filter results by filter type.
        #
        #   @param page_number [Integer] Page number to retrieve (1-based).
        #
        #   @param page_size [Integer] Number of items to return per page.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
