# typed: strong

module Telnyx
  module Models
    class WireguardPeerDeleteResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WireguardPeerDeleteResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig do
        returns(T.nilable(Telnyx::Models::WireguardPeerDeleteResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::WireguardPeerDeleteResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::WireguardPeerDeleteResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig do
        override.returns(
          { data: Telnyx::Models::WireguardPeerDeleteResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Models::Record
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::WireguardPeerDeleteResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # The id of the wireguard interface associated with the peer.
        sig { returns(T.nilable(String)) }
        attr_reader :wireguard_interface_id

        sig { params(wireguard_interface_id: String).void }
        attr_writer :wireguard_interface_id

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
            last_seen: String,
            private_key: String,
            wireguard_interface_id: String
          ).returns(T.attached_class)
        end
        def self.new(
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
