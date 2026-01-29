# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#list
    class VirtualCrossConnectListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      #   @return [Telnyx::Models::VirtualCrossConnectListParams::Filter, nil]
      optional :filter, -> { Telnyx::VirtualCrossConnectListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VirtualCrossConnectListParams} for more details.
      #
      #   @param filter [Telnyx::Models::VirtualCrossConnectListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute network_id
        #   The associated network id to filter on.
        #
        #   @return [String, nil]
        optional :network_id, String

        # @!method initialize(network_id: nil)
        #   Consolidated filter parameter (deepObject style). Originally: filter[network_id]
        #
        #   @param network_id [String] The associated network id to filter on.
      end
    end
  end
end
