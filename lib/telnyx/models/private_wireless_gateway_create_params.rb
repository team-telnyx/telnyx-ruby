# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PrivateWirelessGateways#create
    class PrivateWirelessGatewayCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute name
      #   The private wireless gateway name.
      #
      #   @return [String]
      required :name, String

      # @!attribute network_id
      #   The identification of the related network resource.
      #
      #   @return [String]
      required :network_id, String

      # @!attribute address_mode
      #   Determines how IP addresses are assigned to SIM cards using this gateway. With
      #   static, each SIM card gets a fixed IP address from the gateway's IP range that
      #   is preserved across sessions. With dynamic, an IP address is assigned by the
      #   network at attach time and may change between sessions. If omitted, the gateway
      #   is created with the default address mode, dynamic.
      #
      #   @return [Symbol, Telnyx::Models::PrivateWirelessGatewayCreateParams::AddressMode, nil]
      optional :address_mode, enum: -> { Telnyx::PrivateWirelessGatewayCreateParams::AddressMode }

      # @!attribute region_code
      #   The code of the region where the private wireless gateway will be assigned. A
      #   list of available regions can be found at the regions endpoint
      #
      #   @return [String, nil]
      optional :region_code, String

      # @!method initialize(name:, network_id:, address_mode: nil, region_code: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PrivateWirelessGatewayCreateParams} for more details.
      #
      #   @param name [String] The private wireless gateway name.
      #
      #   @param network_id [String] The identification of the related network resource.
      #
      #   @param address_mode [Symbol, Telnyx::Models::PrivateWirelessGatewayCreateParams::AddressMode] Determines how IP addresses are assigned to SIM cards using this gateway. With s
      #
      #   @param region_code [String] The code of the region where the private wireless gateway will be assigned. A li
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Determines how IP addresses are assigned to SIM cards using this gateway. With
      # static, each SIM card gets a fixed IP address from the gateway's IP range that
      # is preserved across sessions. With dynamic, an IP address is assigned by the
      # network at attach time and may change between sessions. If omitted, the gateway
      # is created with the default address mode, dynamic.
      module AddressMode
        extend Telnyx::Internal::Type::Enum

        STATIC = :static
        DYNAMIC = :dynamic

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
