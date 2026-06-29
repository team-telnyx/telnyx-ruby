# frozen_string_literal: true

module Telnyx
  module Models
    class VirtualCrossConnectCreate < Telnyx::Models::Record
      # @!attribute name
      #   A user specified name for the interface.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute network_id
      #   The id of the network associated with the interface.
      #
      #   @return [String, nil]
      optional :network_id, String

      # @!attribute region_code
      #   The region the interface should be deployed to.
      #
      #   @return [String]
      required :region_code, String

      # @!attribute bandwidth_mbps
      #   The desired throughput in Megabits per Second (Mbps) for your Virtual Cross
      #   Connect.<br /><br />The available bandwidths can be found using the
      #   /virtual_cross_connect_regions endpoint.
      #
      #   @return [Float, nil]
      optional :bandwidth_mbps, Float

      # @!attribute bgp_asn
      #   The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
      #   will be assigned by Telnyx.
      #
      #   @return [Float, nil]
      optional :bgp_asn, Float

      # @!attribute cloud_provider
      #   The Virtual Private Cloud with which you would like to establish a cross
      #   connect.
      #
      #   @return [Symbol, Telnyx::Models::VirtualCrossConnectCreate::CloudProvider, nil]
      optional :cloud_provider, enum: -> { Telnyx::VirtualCrossConnectCreate::CloudProvider }

      # @!attribute cloud_provider_region
      #   The region where your Virtual Private Cloud hosts are located.<br /><br />The
      #   available regions can be found using the /virtual_cross_connect_regions
      #   endpoint.
      #
      #   @return [String, nil]
      optional :cloud_provider_region, String

      # @!attribute primary_bgp_key
      #   The authentication key for BGP peer configuration.
      #
      #   @return [String, nil]
      optional :primary_bgp_key, String

      # @!attribute primary_cloud_account_id
      #   The identifier for your Virtual Private Cloud. The number will be different
      #   based upon your Cloud provider.
      #
      #   @return [String, nil]
      optional :primary_cloud_account_id, String

      # @!attribute primary_cloud_ip
      #   The IP address assigned for your side of the Virtual Cross
      #   Connect.<br /><br />If none is provided, one will be generated for
      #   you.<br /><br />This value should be null for GCE as Google will only inform you
      #   of your assigned IP once the connection has been accepted.
      #
      #   @return [String, nil]
      optional :primary_cloud_ip, String

      # @!attribute primary_telnyx_ip
      #   The IP address assigned to the Telnyx side of the Virtual Cross
      #   Connect.<br /><br />If none is provided, one will be generated for
      #   you.<br /><br />This value should be null for GCE as Google will only inform you
      #   of your assigned IP once the connection has been accepted.
      #
      #   @return [String, nil]
      optional :primary_telnyx_ip, String

      # @!attribute secondary_bgp_key
      #   The authentication key for BGP peer configuration.
      #
      #   @return [String, nil]
      optional :secondary_bgp_key, String

      # @!attribute secondary_cloud_account_id
      #   The identifier for your Virtual Private Cloud. The number will be different
      #   based upon your Cloud provider.<br /><br />This attribute is only necessary for
      #   GCE.
      #
      #   @return [String, nil]
      optional :secondary_cloud_account_id, String

      # @!attribute secondary_cloud_ip
      #   The IP address assigned for your side of the Virtual Cross
      #   Connect.<br /><br />If none is provided, one will be generated for
      #   you.<br /><br />This value should be null for GCE as Google will only inform you
      #   of your assigned IP once the connection has been accepted.
      #
      #   @return [String, nil]
      optional :secondary_cloud_ip, String

      # @!attribute secondary_telnyx_ip
      #   The IP address assigned to the Telnyx side of the Virtual Cross
      #   Connect.<br /><br />If none is provided, one will be generated for
      #   you.<br /><br />This value should be null for GCE as Google will only inform you
      #   of your assigned IP once the connection has been accepted.
      #
      #   @return [String, nil]
      optional :secondary_telnyx_ip, String

      response_only do
        # @!attribute status
        #   The current status of the interface deployment.
        #
        #   @return [Symbol, Telnyx::Models::InterfaceStatus, nil]
        optional :status, enum: -> { Telnyx::InterfaceStatus }

        # @!attribute primary_enabled
        #   Indicates whether the primary circuit is enabled. Setting this to `false` will
        #   disable the circuit.
        #
        #   @return [Boolean, nil]
        optional :primary_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute secondary_enabled
        #   Indicates whether the secondary circuit is enabled. Setting this to `false` will
        #   disable the circuit.
        #
        #   @return [Boolean, nil]
        optional :secondary_enabled, Telnyx::Internal::Type::Boolean
      end

      # @!method initialize(region_code:, name: nil, network_id: nil, status: nil, bandwidth_mbps: nil, bgp_asn: nil, cloud_provider: nil, cloud_provider_region: nil, primary_bgp_key: nil, primary_cloud_account_id: nil, primary_cloud_ip: nil, primary_enabled: nil, primary_telnyx_ip: nil, secondary_bgp_key: nil, secondary_cloud_account_id: nil, secondary_cloud_ip: nil, secondary_enabled: nil, secondary_telnyx_ip: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::VirtualCrossConnectCreate} for more details.
      #
      #   @param region_code [String] The region the interface should be deployed to.
      #
      #   @param name [String] A user specified name for the interface.
      #
      #   @param network_id [String] The id of the network associated with the interface.
      #
      #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
      #
      #   @param bandwidth_mbps [Float] The desired throughput in Megabits per Second (Mbps) for your Virtual Cross Conn
      #
      #   @param bgp_asn [Float] The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
      #
      #   @param cloud_provider [Symbol, Telnyx::Models::VirtualCrossConnectCreate::CloudProvider] The Virtual Private Cloud with which you would like to establish a cross connect
      #
      #   @param cloud_provider_region [String] The region where your Virtual Private Cloud hosts are located.<br /><br />The av
      #
      #   @param primary_bgp_key [String] The authentication key for BGP peer configuration.
      #
      #   @param primary_cloud_account_id [String] The identifier for your Virtual Private Cloud. The number will be different base
      #
      #   @param primary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
      #
      #   @param primary_enabled [Boolean] Indicates whether the primary circuit is enabled. Setting this to `false` will d
      #
      #   @param primary_telnyx_ip [String] The IP address assigned to the Telnyx side of the Virtual Cross Connect.<br /><b
      #
      #   @param secondary_bgp_key [String] The authentication key for BGP peer configuration.
      #
      #   @param secondary_cloud_account_id [String] The identifier for your Virtual Private Cloud. The number will be different base
      #
      #   @param secondary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
      #
      #   @param secondary_enabled [Boolean] Indicates whether the secondary circuit is enabled. Setting this to `false` will
      #
      #   @param secondary_telnyx_ip [String] The IP address assigned to the Telnyx side of the Virtual Cross Connect.<br /><b

      # The Virtual Private Cloud with which you would like to establish a cross
      # connect.
      #
      # @see Telnyx::Models::VirtualCrossConnectCreate#cloud_provider
      module CloudProvider
        extend Telnyx::Internal::Type::Enum

        AWS = :aws
        AZURE = :azure
        GCE = :gce

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
