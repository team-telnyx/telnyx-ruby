# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PrivateWirelessGateways#list
    class WirelessPrivateWirelessGateway < Telnyx::Internal::Type::BaseModel
      # @!attribute address_mode
      #   The address mode of the private wireless gateway. With static, each SIM card
      #   gets a fixed IP address from the gateway's IP range that is preserved across
      #   sessions. With dynamic, IP addresses are assigned by the network at attach time
      #   and may change between sessions.
      #
      #   @return [Symbol, Telnyx::Models::WirelessPrivateWirelessGateway::AddressMode, nil]
      optional :address_mode, enum: -> { Telnyx::WirelessPrivateWirelessGateway::AddressMode }

      # @!attribute assigned_resources
      #   A list of the resources that have been assigned to the Private Wireless Gateway.
      #
      #   @return [Array<Telnyx::Models::PwgAssignedResourcesSummary>, nil]
      optional :assigned_resources, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PwgAssignedResourcesSummary] }

      # @!attribute name
      #   The private wireless gateway name.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute network_id
      #   The identification of the related network resource.
      #
      #   @return [String, nil]
      optional :network_id, String

      # @!attribute region_code
      #   The name of the region where the Private Wireless Gateway is deployed.
      #
      #   @return [String, nil]
      optional :region_code, String

      # @!attribute status
      #   The current status or failure details of the Private Wireless Gateway.
      #
      #   @return [Telnyx::Models::PrivateWirelessGatewayStatus, nil]
      optional :status, -> { Telnyx::PrivateWirelessGatewayStatus }

      response_only do
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @return [String, nil]
        optional :created_at, String

        # @!attribute ip_range
        #   IP block used to assign IPs to the SIM cards in the Private Wireless Gateway.
        #
        #   @return [String, nil]
        optional :ip_range, String

        # @!attribute record_type
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute updated_at
        #   ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @return [String, nil]
        optional :updated_at, String
      end

      # @!method initialize(id: nil, address_mode: nil, assigned_resources: nil, created_at: nil, ip_range: nil, name: nil, network_id: nil, record_type: nil, region_code: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::WirelessPrivateWirelessGateway} for more details.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param address_mode [Symbol, Telnyx::Models::WirelessPrivateWirelessGateway::AddressMode] The address mode of the private wireless gateway. With static, each SIM card get
      #
      #   @param assigned_resources [Array<Telnyx::Models::PwgAssignedResourcesSummary>] A list of the resources that have been assigned to the Private Wireless Gateway.
      #
      #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
      #
      #   @param ip_range [String] IP block used to assign IPs to the SIM cards in the Private Wireless Gateway.
      #
      #   @param name [String] The private wireless gateway name.
      #
      #   @param network_id [String] The identification of the related network resource.
      #
      #   @param record_type [String]
      #
      #   @param region_code [String] The name of the region where the Private Wireless Gateway is deployed.
      #
      #   @param status [Telnyx::Models::PrivateWirelessGatewayStatus] The current status or failure details of the Private Wireless Gateway.
      #
      #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

      # The address mode of the private wireless gateway. With static, each SIM card
      # gets a fixed IP address from the gateway's IP range that is preserved across
      # sessions. With dynamic, IP addresses are assigned by the network at attach time
      # and may change between sessions.
      #
      # @see Telnyx::Models::WirelessPrivateWirelessGateway#address_mode
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
