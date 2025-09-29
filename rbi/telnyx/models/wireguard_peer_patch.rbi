# typed: strong

module Telnyx
  module Models
    class WireguardPeerPatch < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::WireguardPeerPatch, Telnyx::Internal::AnyHash)
        end

      # The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
      # Public and Private key pair will be generated for you.
      sig { returns(T.nilable(String)) }
      attr_reader :public_key

      sig { params(public_key: String).void }
      attr_writer :public_key

      sig { params(public_key: String).returns(T.attached_class) }
      def self.new(
        # The WireGuard `PublicKey`.<br /><br />If you do not provide a Public Key, a new
        # Public and Private key pair will be generated for you.
        public_key: nil
      )
      end

      sig { override.returns({ public_key: String }) }
      def to_hash
      end
    end
  end
end
