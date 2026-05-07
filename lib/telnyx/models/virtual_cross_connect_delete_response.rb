# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#delete
    class VirtualCrossConnectDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VirtualCrossConnectDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VirtualCrossConnectDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VirtualCrossConnectDeleteResponse::Data]

      # @see Telnyx::Models::VirtualCrossConnectDeleteResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute bandwidth_mbps
        #   The desired throughput in Megabits per Second (Mbps) for your Virtual Cross
        #   Connect.
        #
        #   @return [Float, nil]
        optional :bandwidth_mbps, Float

        # @!attribute bgp_asn
        #   The Border Gateway Protocol (BGP) Autonomous System Number (ASN).
        #
        #   @return [Float, nil]
        optional :bgp_asn, Float

        # @!attribute cloud_provider
        #   The Virtual Private Cloud with which you would like to establish a cross
        #   connect.
        #
        #   @return [Symbol, Telnyx::Models::VirtualCrossConnectDeleteResponse::Data::CloudProvider, nil]
        optional :cloud_provider,
                 enum: -> { Telnyx::Models::VirtualCrossConnectDeleteResponse::Data::CloudProvider }

        # @!attribute cloud_provider_region
        #   The region where your Virtual Private Cloud hosts are located.
        #
        #   @return [String, nil]
        optional :cloud_provider_region, String

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

        # @!attribute primary_bgp_key
        #   The authentication key for BGP peer configuration.
        #
        #   @return [String, nil]
        optional :primary_bgp_key, String

        # @!attribute primary_cloud_account_id
        #   The identifier for your Virtual Private Cloud.
        #
        #   @return [String, nil]
        optional :primary_cloud_account_id, String

        # @!attribute primary_cloud_ip
        #   The IP address assigned for your side of the Virtual Cross Connect.
        #
        #   @return [String, nil]
        optional :primary_cloud_ip, String

        # @!attribute primary_enabled
        #   Indicates whether the primary circuit is enabled.
        #
        #   @return [Boolean, nil]
        optional :primary_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute primary_routing_announcement
        #   Whether
        #
        #   @return [Boolean, nil]
        optional :primary_routing_announcement, Telnyx::Internal::Type::Boolean

        # @!attribute primary_telnyx_ip
        #   The IP address assigned to the Telnyx side of the Virtual Cross Connect.
        #
        #   @return [String, nil]
        optional :primary_telnyx_ip, String

        # @!attribute region
        #
        #   @return [Telnyx::Models::VirtualCrossConnectDeleteResponse::Data::Region, nil]
        optional :region, -> { Telnyx::Models::VirtualCrossConnectDeleteResponse::Data::Region }

        # @!attribute region_code
        #   The region interface is deployed to.
        #
        #   @return [String, nil]
        optional :region_code, String

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

          # @!attribute status
          #   The current status of the interface deployment.
          #
          #   @return [Symbol, Telnyx::Models::InterfaceStatus, nil]
          optional :status, enum: -> { Telnyx::InterfaceStatus }

          # @!attribute updated_at
          #   ISO 8601 formatted date-time indicating when the resource was updated.
          #
          #   @return [String, nil]
          optional :updated_at, String
        end

        # @!method initialize(id: nil, bandwidth_mbps: nil, bgp_asn: nil, cloud_provider: nil, cloud_provider_region: nil, created_at: nil, name: nil, network_id: nil, primary_bgp_key: nil, primary_cloud_account_id: nil, primary_cloud_ip: nil, primary_enabled: nil, primary_routing_announcement: nil, primary_telnyx_ip: nil, record_type: nil, region: nil, region_code: nil, status: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::VirtualCrossConnectDeleteResponse::Data} for more details.
        #
        #   @param id [String] Identifies the resource.
        #
        #   @param bandwidth_mbps [Float] The desired throughput in Megabits per Second (Mbps) for your Virtual Cross Conn
        #
        #   @param bgp_asn [Float] The Border Gateway Protocol (BGP) Autonomous System Number (ASN).
        #
        #   @param cloud_provider [Symbol, Telnyx::Models::VirtualCrossConnectDeleteResponse::Data::CloudProvider] The Virtual Private Cloud with which you would like to establish a cross connect
        #
        #   @param cloud_provider_region [String] The region where your Virtual Private Cloud hosts are located.
        #
        #   @param created_at [String] ISO 8601 formatted date-time indicating when the resource was created.
        #
        #   @param name [String] A user specified name for the interface.
        #
        #   @param network_id [String] The id of the network associated with the interface.
        #
        #   @param primary_bgp_key [String] The authentication key for BGP peer configuration.
        #
        #   @param primary_cloud_account_id [String] The identifier for your Virtual Private Cloud.
        #
        #   @param primary_cloud_ip [String] The IP address assigned for your side of the Virtual Cross Connect.
        #
        #   @param primary_enabled [Boolean] Indicates whether the primary circuit is enabled.
        #
        #   @param primary_routing_announcement [Boolean] Whether
        #
        #   @param primary_telnyx_ip [String] The IP address assigned to the Telnyx side of the Virtual Cross Connect.
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param region [Telnyx::Models::VirtualCrossConnectDeleteResponse::Data::Region]
        #
        #   @param region_code [String] The region interface is deployed to.
        #
        #   @param status [Symbol, Telnyx::Models::InterfaceStatus] The current status of the interface deployment.
        #
        #   @param updated_at [String] ISO 8601 formatted date-time indicating when the resource was updated.

        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        #
        # @see Telnyx::Models::VirtualCrossConnectDeleteResponse::Data#cloud_provider
        module CloudProvider
          extend Telnyx::Internal::Type::Enum

          AWS = :aws
          AZURE = :azure
          GCE = :gce

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::VirtualCrossConnectDeleteResponse::Data#region
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
