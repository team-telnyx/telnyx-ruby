# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Networks#list
    class NetworkListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      #   @return [Telnyx::Models::NetworkListParams::Filter, nil]
      optional :filter, -> { Telnyx::NetworkListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter [Telnyx::Models::NetworkListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name]
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #   The network name to filter on.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(name: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[name]
        #
        #   @param name [String] The network name to filter on.
      end
    end
  end
end
