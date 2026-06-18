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

      sig { returns(T.nilable(Telnyx::WireguardPeer)) }
      attr_reader :data

      sig { params(data: Telnyx::WireguardPeer::OrHash).void }
      attr_writer :data

      sig do
        params(data: Telnyx::WireguardPeer::OrHash).returns(T.attached_class)
      end
      def self.new(data: nil)
      end

      sig { override.returns({ data: Telnyx::WireguardPeer }) }
      def to_hash
      end
    end
  end
end
