# typed: strong

module Telnyx
  module Models
    class VirtualCrossConnectCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::VirtualCrossConnectCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::VirtualCrossConnectCreateResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::VirtualCrossConnectCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::VirtualCrossConnectCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::VirtualCrossConnectCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # A user specified name for the interface.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The id of the network associated with the interface.
        sig { returns(T.nilable(String)) }
        attr_reader :network_id

        sig { params(network_id: String).void }
        attr_writer :network_id

        # The region the interface should be deployed to.
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

        # The desired throughput in Megabits per Second (Mbps) for your Virtual Cross
        # Connect.<br /><br />The available bandwidths can be found using the
        # /virtual_cross_connect_regions endpoint.
        sig { returns(T.nilable(Float)) }
        attr_reader :bandwidth_mbps

        sig { params(bandwidth_mbps: Float).void }
        attr_writer :bandwidth_mbps

        # The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
        # will be assigned by Telnyx.
        sig { returns(T.nilable(Float)) }
        attr_reader :bgp_asn

        sig { params(bgp_asn: Float).void }
        attr_writer :bgp_asn

        # The Virtual Private Cloud with which you would like to establish a cross
        # connect.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider::TaggedSymbol
            )
          )
        end
        attr_reader :cloud_provider

        sig do
          params(
            cloud_provider:
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider::OrSymbol
          ).void
        end
        attr_writer :cloud_provider

        # The region where your Virtual Private Cloud hosts are located.<br /><br />The
        # available regions can be found using the /virtual_cross_connect_regions
        # endpoint.
        sig { returns(T.nilable(String)) }
        attr_reader :cloud_provider_region

        sig { params(cloud_provider_region: String).void }
        attr_writer :cloud_provider_region

        # The authentication key for BGP peer configuration.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_bgp_key

        sig { params(primary_bgp_key: String).void }
        attr_writer :primary_bgp_key

        # The identifier for your Virtual Private Cloud. The number will be different
        # based upon your Cloud provider.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_cloud_account_id

        sig { params(primary_cloud_account_id: String).void }
        attr_writer :primary_cloud_account_id

        # The IP address assigned for your side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_cloud_ip

        sig { params(primary_cloud_ip: String).void }
        attr_writer :primary_cloud_ip

        # Indicates whether the primary circuit is enabled. Setting this to `false` will
        # disable the circuit.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :primary_enabled

        sig { params(primary_enabled: T::Boolean).void }
        attr_writer :primary_enabled

        # Whether the primary BGP route is being announced.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :primary_routing_announcement

        sig { params(primary_routing_announcement: T::Boolean).void }
        attr_writer :primary_routing_announcement

        # The IP address assigned to the Telnyx side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        sig { returns(T.nilable(String)) }
        attr_reader :primary_telnyx_ip

        sig { params(primary_telnyx_ip: String).void }
        attr_writer :primary_telnyx_ip

        sig do
          returns(
            T.nilable(
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::Region
            )
          )
        end
        attr_reader :region

        sig do
          params(
            region:
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::Region::OrHash
          ).void
        end
        attr_writer :region

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
        # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
        sig { returns(T.nilable(String)) }
        attr_reader :secondary_cloud_ip

        sig { params(secondary_cloud_ip: String).void }
        attr_writer :secondary_cloud_ip

        # Indicates whether the secondary circuit is enabled. Setting this to `false` will
        # disable the circuit.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :secondary_enabled

        sig { params(secondary_enabled: T::Boolean).void }
        attr_writer :secondary_enabled

        # Whether the secondary BGP route is being announced.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :secondary_routing_announcement

        sig { params(secondary_routing_announcement: T::Boolean).void }
        attr_writer :secondary_routing_announcement

        # The IP address assigned to the Telnyx side of the Virtual Cross
        # Connect.<br /><br />If none is provided, one will be generated for
        # you.<br /><br />This value should be null for GCE as Google will only inform you
        # of your assigned IP once the connection has been accepted.
        sig { returns(T.nilable(String)) }
        attr_reader :secondary_telnyx_ip

        sig { params(secondary_telnyx_ip: String).void }
        attr_writer :secondary_telnyx_ip

        # Identifies the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # ISO 8601 formatted date-time indicating when the resource was created.
        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        # The current status of the interface deployment.
        sig { returns(T.nilable(Telnyx::InterfaceStatus::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: Telnyx::InterfaceStatus::OrSymbol).void }
        attr_writer :status

        sig do
          params(
            id: String,
            created_at: String,
            record_type: String,
            updated_at: String,
            name: String,
            network_id: String,
            status: Telnyx::InterfaceStatus::OrSymbol,
            region_code: String,
            bandwidth_mbps: Float,
            bgp_asn: Float,
            cloud_provider:
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider::OrSymbol,
            cloud_provider_region: String,
            primary_bgp_key: String,
            primary_cloud_account_id: String,
            primary_cloud_ip: String,
            primary_enabled: T::Boolean,
            primary_routing_announcement: T::Boolean,
            primary_telnyx_ip: String,
            region:
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::Region::OrHash,
            secondary_bgp_key: String,
            secondary_cloud_account_id: String,
            secondary_cloud_ip: String,
            secondary_enabled: T::Boolean,
            secondary_routing_announcement: T::Boolean,
            secondary_telnyx_ip: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          # Identifies the type of the resource.
          record_type: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil,
          # A user specified name for the interface.
          name: nil,
          # The id of the network associated with the interface.
          network_id: nil,
          # The current status of the interface deployment.
          status: nil,
          # The region the interface should be deployed to.
          region_code: nil,
          # The desired throughput in Megabits per Second (Mbps) for your Virtual Cross
          # Connect.<br /><br />The available bandwidths can be found using the
          # /virtual_cross_connect_regions endpoint.
          bandwidth_mbps: nil,
          # The Border Gateway Protocol (BGP) Autonomous System Number (ASN). If null, value
          # will be assigned by Telnyx.
          bgp_asn: nil,
          # The Virtual Private Cloud with which you would like to establish a cross
          # connect.
          cloud_provider: nil,
          # The region where your Virtual Private Cloud hosts are located.<br /><br />The
          # available regions can be found using the /virtual_cross_connect_regions
          # endpoint.
          cloud_provider_region: nil,
          # The authentication key for BGP peer configuration.
          primary_bgp_key: nil,
          # The identifier for your Virtual Private Cloud. The number will be different
          # based upon your Cloud provider.
          primary_cloud_account_id: nil,
          # The IP address assigned for your side of the Virtual Cross
          # Connect.<br /><br />If none is provided, one will be generated for
          # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
          primary_cloud_ip: nil,
          # Indicates whether the primary circuit is enabled. Setting this to `false` will
          # disable the circuit.
          primary_enabled: nil,
          # Whether the primary BGP route is being announced.
          primary_routing_announcement: nil,
          # The IP address assigned to the Telnyx side of the Virtual Cross
          # Connect.<br /><br />If none is provided, one will be generated for
          # you.<br /><br />This value should be null for GCE as Google will only inform you
          # of your assigned IP once the connection has been accepted.
          primary_telnyx_ip: nil,
          region: nil,
          # The authentication key for BGP peer configuration.
          secondary_bgp_key: nil,
          # The identifier for your Virtual Private Cloud. The number will be different
          # based upon your Cloud provider.<br /><br />This attribute is only necessary for
          # GCE.
          secondary_cloud_account_id: nil,
          # The IP address assigned for your side of the Virtual Cross
          # Connect.<br /><br />If none is provided, one will be generated for
          # you.<br /><br />This value can not be patched once the VXC has bene provisioned.
          secondary_cloud_ip: nil,
          # Indicates whether the secondary circuit is enabled. Setting this to `false` will
          # disable the circuit.
          secondary_enabled: nil,
          # Whether the secondary BGP route is being announced.
          secondary_routing_announcement: nil,
          # The IP address assigned to the Telnyx side of the Virtual Cross
          # Connect.<br /><br />If none is provided, one will be generated for
          # you.<br /><br />This value should be null for GCE as Google will only inform you
          # of your assigned IP once the connection has been accepted.
          secondary_telnyx_ip: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              record_type: String,
              updated_at: String,
              name: String,
              network_id: String,
              status: Telnyx::InterfaceStatus::TaggedSymbol,
              region_code: String,
              bandwidth_mbps: Float,
              bgp_asn: Float,
              cloud_provider:
                Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider::TaggedSymbol,
              cloud_provider_region: String,
              primary_bgp_key: String,
              primary_cloud_account_id: String,
              primary_cloud_ip: String,
              primary_enabled: T::Boolean,
              primary_routing_announcement: T::Boolean,
              primary_telnyx_ip: String,
              region:
                Telnyx::Models::VirtualCrossConnectCreateResponse::Data::Region,
              secondary_bgp_key: String,
              secondary_cloud_account_id: String,
              secondary_cloud_ip: String,
              secondary_enabled: T::Boolean,
              secondary_routing_announcement: T::Boolean,
              secondary_telnyx_ip: String
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
                Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AWS =
            T.let(
              :aws,
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider::TaggedSymbol
            )
          AZURE =
            T.let(
              :azure,
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider::TaggedSymbol
            )
          GCE =
            T.let(
              :gce,
              Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::VirtualCrossConnectCreateResponse::Data::CloudProvider::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Region < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::VirtualCrossConnectCreateResponse::Data::Region,
                Telnyx::Internal::AnyHash
              )
            end

          # Region code of the interface.
          sig { returns(T.nilable(String)) }
          attr_reader :code

          sig { params(code: String).void }
          attr_writer :code

          # Region name of the interface.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Identifies the type of the resource.
          sig { returns(T.nilable(String)) }
          attr_reader :record_type

          sig { params(record_type: String).void }
          attr_writer :record_type

          sig do
            params(code: String, name: String, record_type: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # Region code of the interface.
            code: nil,
            # Region name of the interface.
            name: nil,
            # Identifies the type of the resource.
            record_type: nil
          )
          end

          sig do
            override.returns(
              { code: String, name: String, record_type: String }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
