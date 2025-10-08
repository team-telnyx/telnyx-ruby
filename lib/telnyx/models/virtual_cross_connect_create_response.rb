# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#create
    class VirtualCrossConnectCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VirtualCrossConnectCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VirtualCrossConnectCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VirtualCrossConnectCreateResponse::Data]

      # @see Telnyx::Models::VirtualCrossConnectCreateResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
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
        #   @return [String, nil]
        optional :region_code, String

        # @!attribute bgp_asn
        #   The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
        #   will be assigned by Telnyx.
        #
        #   @return [Float]
        required :bgp_asn, Float

        # @!attribute cloud_provider
        #   The Virtual Private Cloud with which you would like to establish a cross
        #   connect.
        #
        #   @return [Symbol, Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider]
        required :cloud_provider,
                 enum: -> { Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider }

        # @!attribute cloud_provider_region
        #   The region where your Virtual Private Cloud hosts are located.<br /><br />The
        #   available regions can be found using the /virtual_cross_connect_regions
        #   endpoint.
        #
        #   @return [String]
        required :cloud_provider_region, String

        # @!attribute primary_cloud_account_id
        #   The identifier for your Virtual Private Cloud. The number will be different
        #   based upon your Cloud provider.
        #
        #   @return [String]
        required :primary_cloud_account_id, String

        # @!attribute bandwidth_mbps
        #   The desired throughput in Megabits per Second (Mbps) for your Virtual Cross
        #   Connect.<br /><br />The available bandwidths can be found using the
        #   /virtual_cross_connect_regions endpoint.
        #
        #   @return [Float, nil]
        optional :bandwidth_mbps, Float

        # @!attribute primary_bgp_key
        #   The authentication key for BGP peer configuration.
        #
        #   @return [String, nil]
        optional :primary_bgp_key, String

        # @!attribute primary_cloud_ip
        #   The IP address assigned for your side of the Virtual Cross
        #   Connect.<br /><br />If none is provided, one will be generated for
        #   you.<br /><br />This value can not be patched once the VXC has bene provisioned.
        #
        #   @return [String, nil]
        optional :primary_cloud_ip, String

        # @!attribute primary_enabled
        #   Indicates whether the primary circuit is enabled. Setting this to `false` will
        #   disable the circuit.
        #
        #   @return [Boolean, nil]
        optional :primary_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute primary_routing_announcement
        #   Whether the primary BGP route is being announced.
        #
        #   @return [Boolean, nil]
        optional :primary_routing_announcement, Telnyx::Internal::Type::Boolean

        # @!attribute primary_telnyx_ip
        #   The IP address assigned to the Telnyx side of the Virtual Cross
        #   Connect.<br /><br />If none is provided, one will be generated for
        #   you.<br /><br />This value should be null for GCE as Google will only inform you
        #   of your assigned IP once the connection has been accepted.
        #
        #   @return [String, nil]
        optional :primary_telnyx_ip, String

        # @!attribute region
        #
        #   @return [Telnyx::Models::VirtualCrossConnectCreateResponse::Data::Region, nil]
        optional :region, -> { Telnyx::Models::VirtualCrossConnectCreateResponse::Data::Region }

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
        #   you.<br /><br />This value can not be patched once the VXC has bene provisioned.
        #
        #   @return [String, nil]
        optional :secondary_cloud_ip, String

        # @!attribute secondary_enabled
        #   Indicates whether the secondary circuit is enabled. Setting this to `false` will
        #   disable the circuit.
        #
        #   @return [Boolean, nil]
        optional :secondary_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute secondary_routing_announcement
        #   Whether the secondary BGP route is being announced.
        #
        #   @return [Boolean, nil]
        optional :secondary_routing_announcement, Telnyx::Internal::Type::Boolean

        # @!attribute secondary_telnyx_ip
        #   The IP address assigned to the Telnyx side of the Virtual Cross
        #   Connect.<br /><br />If none is provided, one will be generated for
        #   you.<br /><br />This value should be null for GCE as Google will only inform you
        #   of your assigned IP once the connection has been accepted.
        #
        #   @return [String, nil]
        optional :secondary_telnyx_ip, String

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

          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String

          # @!attribute status
          #   The current status of the interface deployment.
          #
          #   @return [Symbol, Telnyx::Models::InterfaceStatus, nil]
          optional :status, enum: -> { Telnyx::InterfaceStatus }
        end

        # @!method initialize(bgp_asn:, cloud_provider:, cloud_provider_region:, primary_cloud_account_id:, id: nil, created_at: nil, record_type: nil, updated_at: nil, name: nil, network_id: nil, status: nil, region_code: nil, bandwidth_mbps: nil, primary_bgp_key: nil, primary_cloud_ip: nil, primary_enabled: nil, primary_routing_announcement: nil, primary_telnyx_ip: nil, region: nil, secondary_bgp_key: nil, secondary_cloud_account_id: nil, secondary_cloud_ip: nil, secondary_enabled: nil, secondary_routing_announcement: nil, secondary_telnyx_ip: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VirtualCrossConnectCreateResponse::Data} for more details.
        #
        #   @param bgp_asn [Float] The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
        #
        #   @param cloud_provider [Symbol, Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider] The Virtual Private Cloud with which you would like to establish a cross connect
        #
        #   @param cloud_provider_region [String] The region where your Virtual Private Cloud hosts are located.<br /><br />The av
        #
        #   @param primary_cloud_account_id [String] The identifier for your Virtual Private Cloud. The number will be different base
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.
        #
        #   @param name [String] A user specified name for the interface.
        #
        #   @param network_id [String] The id of the network associated with the interface.
        #
        #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
        #
        #   @param region_code [String] The region the interface should be deployed to.
        #
        #   @param bandwidth_mbps [Float] The desired throughput in Megabits per Second (Mbps) for your Virtual Cross Conn
        #
        #   @param primary_bgp_key [String] The authentication key for BGP peer configuration.
        #
        #   @param primary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
        #
        #   @param primary_enabled [Boolean] Indicates whether the primary circuit is enabled. Setting this to `false` will d
        #
        #   @param primary_routing_announcement [Boolean] Whether the primary BGP route is being announced.
        #
        #   @param primary_telnyx_ip [String] The IP address assigned to the Telnyx side of the Virtual Cross Connect.<br /><b
        #
        #   @param region [Telnyx::Models::VirtualCrossConnectCreateResponse::Data::Region]
        #
        #   @param secondary_bgp_key [String] The authentication key for BGP peer configuration.
        #
        #   @param secondary_cloud_account_id [String] The identifier for your Virtual Private Cloud. The number will be different base
        #
        #   @param secondary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.<br /><br />I
        #
        #   @param secondary_enabled [Boolean] Indicates whether the secondary circuit is enabled. Setting this to `false` will
        #
        #   @param secondary_routing_announcement [Boolean] Whether the secondary BGP route is being announced.
        #
        #   @param secondary_telnyx_ip [String] The IP address assigned to the Telnyx side of the Virtual Cross Connect.<br /><b

        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        #
        # @see Telnyx::Models::VirtualCrossConnectCreateResponse::Data#cloud_provider
        module CloudProvider
          extend Telnyx::Internal::Type::Enum

          AWS = :aws
          AZURE = :azure
          GCE = :gce

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::VirtualCrossConnectCreateResponse::Data#region
        class Region < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #   Region code of the interface.
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute name
          #   Region name of the interface.
          #
          #   @return [String, nil]
          optional :name, String

          response_only do
            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(code: nil, name: nil, record_type: nil)
          #   @param code [String] Region code of the interface.
          #
          #   @param name [String] Region name of the interface.
          #
          #   @param record_type [String] Identifies the type of the resource.
        end
      end
    end
  end
end
