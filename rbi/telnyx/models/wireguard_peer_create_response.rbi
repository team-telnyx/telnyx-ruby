# typed: strong

module Telnyx
  module Models
    class WireguardPeerCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WireguardPeerCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::WireguardPeerCreateResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::WireguardPeerCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::WireguardPeerCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::WireguardPeerCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WireguardPeerCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
        # Public and Private key pair will be generated for you.
        sig { returns(T.nilable(String)) }
        attr_reader :public_key

        sig { params(public_key: String).void }
        attr_writer :public_key

        # The id of the wireguard interface associated with the peer.
        sig { returns(T.nilable(String)) }
        attr_reader :wireguard_interface_id

        sig { params(wireguard_interface_id: String).void }
        attr_writer :wireguard_interface_id

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

        # ISO 8601 formatted date-time indicating when peer sent traffic last time.
        sig { returns(T.nilable(String)) }
        attr_reader :last_seen

        sig { params(last_seen: String).void }
        attr_writer :last_seen

        # Your WireGuard `Interface.PrivateKey`.<br /><br />This attribute is only ever
        # utlised if, on POST, you do NOT provide your own `public_key`. In which case, a
        # new Public and Private key pair will be generated for you. When your
        # `private_key` is returned, you must save this immediately as we do not save it
        # within Telnyx. If you lose your Private Key, it can not be recovered.
        sig { returns(T.nilable(String)) }
        attr_reader :private_key

        sig { params(private_key: String).void }
        attr_writer :private_key

        sig do
          params(
            id: String,
            created_at: String,
            record_type: String,
            updated_at: String,
            public_key: String,
            last_seen: String,
            private_key: String,
            wireguard_interface_id: String
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
          # The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
          # Public and Private key pair will be generated for you.
          public_key: nil,
          # ISO 8601 formatted date-time indicating when peer sent traffic last time.
          last_seen: nil,
          # Your WireGuard `Interface.PrivateKey`.<br /><br />This attribute is only ever
          # utlised if, on POST, you do NOT provide your own `public_key`. In which case, a
          # new Public and Private key pair will be generated for you. When your
          # `private_key` is returned, you must save this immediately as we do not save it
          # within Telnyx. If you lose your Private Key, it can not be recovered.
          private_key: nil,
          # The id of the wireguard interface associated with the peer.
          wireguard_interface_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: String,
              record_type: String,
              updated_at: String,
              public_key: String,
              last_seen: String,
              private_key: String,
              wireguard_interface_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
