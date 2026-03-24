# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Tools#list
      class ToolListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter_name
        #
        #   @return [String, nil]
        optional :filter_name, String

        # @!attribute filter_type
        #
        #   @return [String, nil]
        optional :filter_type, String

        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!method initialize(filter_name: nil, filter_type: nil, page_number: nil, page_size: nil, request_options: {})
        #   @param filter_name [String]
        #   @param filter_type [String]
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
