# frozen_string_literal: true

module Telnyx
  module Models
    module ExternalConnections
      # @see Telnyx::Resources::ExternalConnections::CivicAddresses#list
      class CivicAddressListParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute filter
        #   Filter parameter for civic addresses (deepObject style). Supports filtering by
        #   country.
        #
        #   @return [Telnyx::Models::ExternalConnections::CivicAddressListParams::Filter, nil]
        optional :filter, -> { Telnyx::ExternalConnections::CivicAddressListParams::Filter }

        # @!method initialize(filter: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::ExternalConnections::CivicAddressListParams} for more details.
        #
        #   @param filter [Telnyx::Models::ExternalConnections::CivicAddressListParams::Filter] Filter parameter for civic addresses (deepObject style). Supports filtering by c
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Filter < Telnyx::Internal::Type::BaseModel
          # @!attribute country
          #   The country (or countries) to filter addresses by.
          #
          #   @return [Array<String>, nil]
          optional :country, Telnyx::Internal::Type::ArrayOf[String]

          # @!method initialize(country: nil)
          #   Filter parameter for civic addresses (deepObject style). Supports filtering by
          #   country.
          #
          #   @param country [Array<String>] The country (or countries) to filter addresses by.
        end
      end
    end
  end
end
