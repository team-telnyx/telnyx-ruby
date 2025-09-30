# typed: strong

module Telnyx
  module Models
    class WireguardPeerCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::WireguardPeerCreateParams, Telnyx::Internal::AnyHash)
        end

      # The id of the wireguard interface associated with the peer.
      sig { returns(String) }
      attr_accessor :wireguard_interface_id

      # The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
      # Public and Private key pair will be generated for you.
      sig { returns(T.nilable(String)) }
      attr_reader :public_key

      sig { params(public_key: String).void }
      attr_writer :public_key

      sig do
        params(
          wireguard_interface_id: String,
          public_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The id of the wireguard interface associated with the peer.
        wireguard_interface_id:,
        # The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
        # Public and Private key pair will be generated for you.
        public_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            wireguard_interface_id: String,
            public_key: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
