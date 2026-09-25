# typed: strong

module Telnyx
  module Models
    class WirelessPrivateWirelessGateway < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::WirelessPrivateWirelessGateway,
            Telnyx::Internal::AnyHash
          )
        end

      # The address mode of the private wireless gateway. With static, each SIM card
      # gets a fixed IP address from the gateway's IP range that is preserved across
      # sessions. With dynamic, IP addresses are assigned by the network at attach time
      # and may change between sessions.
      sig do
        returns(
          T.nilable(
            Telnyx::WirelessPrivateWirelessGateway::AddressMode::TaggedSymbol
          )
        )
      end
      attr_reader :address_mode

      sig do
        params(
          address_mode:
            Telnyx::WirelessPrivateWirelessGateway::AddressMode::OrSymbol
        ).void
      end
      attr_writer :address_mode

      # A list of the resources that have been assigned to the Private Wireless Gateway.
      sig { returns(T.nilable(T::Array[Telnyx::PwgAssignedResourcesSummary])) }
      attr_reader :assigned_resources

      sig do
        params(
          assigned_resources:
            T::Array[Telnyx::PwgAssignedResourcesSummary::OrHash]
        ).void
      end
      attr_writer :assigned_resources

      # The private wireless gateway name.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The identification of the related network resource.
      sig { returns(T.nilable(String)) }
      attr_reader :network_id

      sig { params(network_id: String).void }
      attr_writer :network_id

      # The name of the region where the Private Wireless Gateway is deployed.
      sig { returns(T.nilable(String)) }
      attr_reader :region_code

      sig { params(region_code: String).void }
      attr_writer :region_code

      # The current status or failure details of the Private Wireless Gateway.
      sig { returns(T.nilable(Telnyx::PrivateWirelessGatewayStatus)) }
      attr_reader :status

      sig { params(status: Telnyx::PrivateWirelessGatewayStatus::OrHash).void }
      attr_writer :status

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

      # IP block used to assign IPs to the SIM cards in the Private Wireless Gateway.
      sig { returns(T.nilable(String)) }
      attr_reader :ip_range

      sig { params(ip_range: String).void }
      attr_writer :ip_range

      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          address_mode:
            Telnyx::WirelessPrivateWirelessGateway::AddressMode::OrSymbol,
          assigned_resources:
            T::Array[Telnyx::PwgAssignedResourcesSummary::OrHash],
          created_at: String,
          ip_range: String,
          name: String,
          network_id: String,
          record_type: String,
          region_code: String,
          status: Telnyx::PrivateWirelessGatewayStatus::OrHash,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # The address mode of the private wireless gateway. With static, each SIM card
        # gets a fixed IP address from the gateway's IP range that is preserved across
        # sessions. With dynamic, IP addresses are assigned by the network at attach time
        # and may change between sessions.
        address_mode: nil,
        # A list of the resources that have been assigned to the Private Wireless Gateway.
        assigned_resources: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # IP block used to assign IPs to the SIM cards in the Private Wireless Gateway.
        ip_range: nil,
        # The private wireless gateway name.
        name: nil,
        # The identification of the related network resource.
        network_id: nil,
        record_type: nil,
        # The name of the region where the Private Wireless Gateway is deployed.
        region_code: nil,
        # The current status or failure details of the Private Wireless Gateway.
        status: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            address_mode:
              Telnyx::WirelessPrivateWirelessGateway::AddressMode::TaggedSymbol,
            assigned_resources: T::Array[Telnyx::PwgAssignedResourcesSummary],
            created_at: String,
            ip_range: String,
            name: String,
            network_id: String,
            record_type: String,
            region_code: String,
            status: Telnyx::PrivateWirelessGatewayStatus,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      # The address mode of the private wireless gateway. With static, each SIM card
      # gets a fixed IP address from the gateway's IP range that is preserved across
      # sessions. With dynamic, IP addresses are assigned by the network at attach time
      # and may change between sessions.
      module AddressMode
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::WirelessPrivateWirelessGateway::AddressMode)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        STATIC =
          T.let(
            :static,
            Telnyx::WirelessPrivateWirelessGateway::AddressMode::TaggedSymbol
          )
        DYNAMIC =
          T.let(
            :dynamic,
            Telnyx::WirelessPrivateWirelessGateway::AddressMode::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::WirelessPrivateWirelessGateway::AddressMode::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
