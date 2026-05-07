# typed: strong

module Telnyx
  module Models
    class WireguardInterfaceDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WireguardInterfaceDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.nilable(Telnyx::Models::WireguardInterfaceDeleteResponse::Data)
        )
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::WireguardInterfaceDeleteResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::WireguardInterfaceDeleteResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::WireguardInterfaceDeleteResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WireguardInterfaceDeleteResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Enable SIP traffic forwarding over VPN interface.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable_sip_trunking

        sig { params(enable_sip_trunking: T::Boolean).void }
        attr_writer :enable_sip_trunking

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

        sig do
          returns(
            T.nilable(
              Telnyx::Models::WireguardInterfaceDeleteResponse::Data::Region
            )
          )
        end
        attr_reader :region

        sig do
          params(
            region:
              Telnyx::Models::WireguardInterfaceDeleteResponse::Data::Region::OrHash
          ).void
        end
        attr_writer :region

        # The region interface is deployed to.
        sig { returns(T.nilable(String)) }
        attr_reader :region_code

        sig { params(region_code: String).void }
        attr_writer :region_code

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

        # The Telnyx WireGuard peers `Peer.endpoint` value.
        sig { returns(T.nilable(String)) }
        attr_reader :endpoint

        sig { params(endpoint: String).void }
        attr_writer :endpoint

        # The Telnyx WireGuard peers `Peer.PublicKey`.
        sig { returns(T.nilable(String)) }
        attr_reader :public_key

        sig { params(public_key: String).void }
        attr_writer :public_key

        # Identifies the type of the resource.
        sig { returns(T.nilable(String)) }
        attr_reader :record_type

        sig { params(record_type: String).void }
        attr_writer :record_type

        # The current status of the interface deployment.
        sig { returns(T.nilable(Telnyx::InterfaceStatus::TaggedSymbol)) }
        attr_reader :status

        sig { params(status: Telnyx::InterfaceStatus::OrSymbol).void }
        attr_writer :status

        # ISO 8601 formatted date-time indicating when the resource was updated.
        sig { returns(T.nilable(String)) }
        attr_reader :updated_at

        sig { params(updated_at: String).void }
        attr_writer :updated_at

        sig do
          params(
            id: String,
            created_at: String,
            enable_sip_trunking: T::Boolean,
            endpoint: String,
            name: String,
            network_id: String,
            public_key: String,
            record_type: String,
            region:
              Telnyx::Models::WireguardInterfaceDeleteResponse::Data::Region::OrHash,
            region_code: String,
            status: Telnyx::InterfaceStatus::OrSymbol,
            updated_at: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the resource.
          id: nil,
          # ISO 8601 formatted date-time indicating when the resource was created.
          created_at: nil,
          # Enable SIP traffic forwarding over VPN interface.
          enable_sip_trunking: nil,
          # The Telnyx WireGuard peers `Peer.endpoint` value.
          endpoint: nil,
          # A user specified name for the interface.
          name: nil,
          # The id of the network associated with the interface.
          network_id: nil,
          # The Telnyx WireGuard peers `Peer.PublicKey`.
          public_key: nil,
          # Identifies the type of the resource.
          record_type: nil,
          region: nil,
          # The region interface is deployed to.
          region_code: nil,
          # The current status of the interface deployment.
          status: nil,
          # ISO 8601 formatted date-time indicating when the resource was updated.
          updated_at: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              enable_sip_trunking: T::Boolean,
              endpoint: String,
              name: String,
              network_id: String,
              public_key: String,
              record_type: String,
              region:
                Telnyx::Models::WireguardInterfaceDeleteResponse::Data::Region,
              region_code: String,
              status: Telnyx::InterfaceStatus::TaggedSymbol,
              updated_at: String
            }
          )
        end
        def to_hash
        end

        class Region < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::WireguardInterfaceDeleteResponse::Data::Region,
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
