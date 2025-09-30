# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PrivateWirelessGateways#list
    class PrivateWirelessGatewayListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter_created_at
      #   Private Wireless Gateway resource creation date.
      #
      #   @return [String, nil]
      optional :filter_created_at, String

      # @!attribute filter_ip_range
      #   The IP address range of the Private Wireless Gateway.
      #
      #   @return [String, nil]
      optional :filter_ip_range, String

      # @!attribute filter_name
      #   The name of the Private Wireless Gateway.
      #
      #   @return [String, nil]
      optional :filter_name, String

      # @!attribute filter_region_code
      #   The name of the region where the Private Wireless Gateway is deployed.
      #
      #   @return [String, nil]
      optional :filter_region_code, String

      # @!attribute filter_updated_at
      #   When the Private Wireless Gateway was last updated.
      #
      #   @return [String, nil]
      optional :filter_updated_at, String

      # @!attribute page_number
      #   The page number to load.
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #   The size of the page.
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter_created_at: nil, filter_ip_range: nil, filter_name: nil, filter_region_code: nil, filter_updated_at: nil, page_number: nil, page_size: nil, request_options: {})
      #   @param filter_created_at [String] Private Wireless Gateway resource creation date.
      #
      #   @param filter_ip_range [String] The IP address range of the Private Wireless Gateway.
      #
      #   @param filter_name [String] The name of the Private Wireless Gateway.
      #
      #   @param filter_region_code [String] The name of the region where the Private Wireless Gateway is deployed.
      #
      #   @param filter_updated_at [String] When the Private Wireless Gateway was last updated.
      #
      #   @param page_number [Integer] The page number to load.
      #
      #   @param page_size [Integer] The size of the page.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
