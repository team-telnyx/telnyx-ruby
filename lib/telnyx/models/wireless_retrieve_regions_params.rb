# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Wireless#retrieve_regions
    class WirelessRetrieveRegionsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute product
      #   The product for which to list regions (e.g., 'public_ips',
      #   'private_wireless_gateways').
      #
      #   @return [String]
      required :product, String

      # @!method initialize(product:, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WirelessRetrieveRegionsParams} for more details.
      #
      #   @param product [String] The product for which to list regions (e.g., 'public_ips', 'private_wireless_gat
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
