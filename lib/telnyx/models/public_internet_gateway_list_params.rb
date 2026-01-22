# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PublicInternetGateways#list
    class PublicInternetGatewayListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      #   @return [Telnyx::Models::PublicInternetGatewayListParams::Filter, nil]
      optional :filter, -> { Telnyx::PublicInternetGatewayListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::PublicInternetGatewayListParams::Page, nil]
      optional :page, -> { Telnyx::PublicInternetGatewayListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PublicInternetGatewayListParams} for more details.
      #
      #   @param filter [Telnyx::Models::PublicInternetGatewayListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[network_id]
      #
      #   @param page [Telnyx::Models::PublicInternetGatewayListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
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

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
