# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::VirtualCrossConnectCreateParams,
            Telnyx::Internal::AnyHash
          )
        end

      # The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
      # will be assigned by Telnyx.
      sig { returns(Float) }
      attr_accessor :bgp_asn

      # The Virtual Private Cloud with which you would like to establish a cross
      # connect.
      sig do
        returns(
          Telnyx::VirtualCrossConnectCreateParams::CloudProvider::OrSymbol
        )
      end
      attr_accessor :cloud_provider

      # The region where your Virtual Private Cloud hosts are located.<br /><br />The
      # available regions can be found using the /virtual_cross_connect_regions
      # endpoint.
      sig { returns(String) }
      attr_accessor :cloud_provider_region

      # The id of the network associated with the interface.
      sig { returns(String) }
      attr_accessor :network_id

      # The identifier for your Virtual Private Cloud. The number will be different
      # based upon your Cloud provider.
      sig { returns(String) }
      attr_accessor :primary_cloud_account_id

      # The region the interface should be deployed to.
      sig { returns(String) }
      attr_accessor :region_code

      # The desired throughput in Megabits per Second (Mbps) for your Virtual Cross
      # Connect.<br /><br />The available bandwidths can be found using the
      # /virtual_cross_connect_regions endpoint.
      sig { returns(T.nilable(Float)) }
      attr_reader :bandwidth_mbps

      sig { params(bandwidth_mbps: Float).void }
      attr_writer :bandwidth_mbps

      # A user specified name for the interface.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The authentication key for BGP peer configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :primary_bgp_key

      sig { params(primary_bgp_key: String).void }
      attr_writer :primary_bgp_key

      # The IP address assigned for your side of the Virtual Cross
      # Connect.<br /><br />If none is provided, one will be generated for
      # you.<br /><br />This value should be null for GCE as Google will only inform you
      # of your assigned IP once the connection has been accepted.
      sig { returns(T.nilable(String)) }
      attr_reader :primary_cloud_ip

      sig { params(primary_cloud_ip: String).void }
      attr_writer :primary_cloud_ip

      # The IP address assigned to the Telnyx side of the Virtual Cross
      # Connect.<br /><br />If none is provided, one will be generated for
      # you.<br /><br />This value should be null for GCE as Google will only inform you
      # of your assigned IP once the connection has been accepted.
      sig { returns(T.nilable(String)) }
      attr_reader :primary_telnyx_ip

      sig { params(primary_telnyx_ip: String).void }
      attr_writer :primary_telnyx_ip

      # The authentication key for BGP peer configuration.
      sig { returns(T.nilable(String)) }
      attr_reader :secondary_bgp_key

      sig { params(secondary_bgp_key: String).void }
      attr_writer :secondary_bgp_key

      # The identifier for your Virtual Private Cloud. The number will be different
      # based upon your Cloud provider.<br /><br />This attribute is only necessary for
      # GCE.
      sig { returns(T.nilable(String)) }
      attr_reader :secondary_cloud_account_id

      sig { params(secondary_cloud_account_id: String).void }
      attr_writer :secondary_cloud_account_id

      # The IP address assigned for your side of the Virtual Cross
      # Connect.<br /><br />If none is provided, one will be generated for
      # you.<br /><br />This value should be null for GCE as Google will only inform you
      # of your assigned IP once the connection has been accepted.
      sig { returns(T.nilable(String)) }
      attr_reader :secondary_cloud_ip

      sig { params(secondary_cloud_ip: String).void }
      attr_writer :secondary_cloud_ip

      # The IP address assigned to the Telnyx side of the Virtual Cross
      # Connect.<br /><br />If none is provided, one will be generated for
      # you.<br /><br />This value should be null for GCE as Google will only inform you
      # of your assigned IP once the connection has been accepted.
      sig { returns(T.nilable(String)) }
      attr_reader :secondary_telnyx_ip

      sig { params(secondary_telnyx_ip: String).void }
      attr_writer :secondary_telnyx_ip

      sig do
        params(
          bgp_asn: Float,
          cloud_provider:
            Telnyx::VirtualCrossConnectCreateParams::CloudProvider::OrSymbol,
          cloud_provider_region: String,
          network_id: String,
          primary_cloud_account_id: String,
          region_code: String,
          bandwidth_mbps: Float,
          name: String,
          primary_bgp_key: String,
          primary_cloud_ip: String,
          primary_telnyx_ip: String,
          secondary_bgp_key: String,
          secondary_cloud_account_id: String,
          secondary_cloud_ip: String,
          secondary_telnyx_ip: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
        # will be assigned by Telnyx.
        bgp_asn:,
        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        cloud_provider:,
        # The region where your Virtual Private Cloud hosts are located.<br /><br />The
        # available regions can be found using the /virtual_cross_connect_regions
        # endpoint.
        cloud_provider_region:,
        # The id of the network associated with the interface.
        network_id:,
        # The identifier for your Virtual Private Cloud. The number will be different
        # based upon your Cloud provider.
        primary_cloud_account_id:,
        # The region the interface should be deployed to.
        region_code:,
        # The desired throughput in Megabits per Second (Mbps) for your Virtual Cross
        # Connect.<br /><br />The available bandwidths can be found using the
        # /virtual_cross_connect_regions endpoint.
        bandwidth_mbps: nil,
        # A user specified name for the interface.
        name: nil,
        # The authentication key for BGP peer configuration.
        primary_bgp_key: nil,
        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        primary_cloud_ip: nil,
        # The IP address assigned to the Telnyx side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        primary_telnyx_ip: nil,
        # The authentication key for BGP peer configuration.
        secondary_bgp_key: nil,
        # The identifier for your Virtual Private Cloud. The number will be different
        # based upon your Cloud provider.<br /><br />This attribute is only necessary for
        # GCE.
        secondary_cloud_account_id: nil,
        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        secondary_cloud_ip: nil,
        # The IP address assigned to the Telnyx side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        secondary_telnyx_ip: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            bgp_asn: Float,
            cloud_provider:
              Telnyx::VirtualCrossConnectCreateParams::CloudProvider::OrSymbol,
            cloud_provider_region: String,
            network_id: String,
            primary_cloud_account_id: String,
            region_code: String,
            bandwidth_mbps: Float,
            name: String,
            primary_bgp_key: String,
            primary_cloud_ip: String,
            primary_telnyx_ip: String,
            secondary_bgp_key: String,
            secondary_cloud_account_id: String,
            secondary_cloud_ip: String,
            secondary_telnyx_ip: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The Virtual Private Cloud with which you would like to establish a cross
      # connect.
      module CloudProvider
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::VirtualCrossConnectCreateParams::CloudProvider
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        AWS =
          T.let(
            :aws,
            Telnyx::VirtualCrossConnectCreateParams::CloudProvider::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::VirtualCrossConnectCreateParams::CloudProvider::TaggedSymbol
          )
        GCE =
          T.let(
            :gce,
            Telnyx::VirtualCrossConnectCreateParams::CloudProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::VirtualCrossConnectCreateParams::CloudProvider::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
