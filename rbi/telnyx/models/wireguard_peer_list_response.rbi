# typed: strong

module Telnyx
  module Models
    class WireguardPeerListResponse < Telnyx::Models::WireguardPeerPatch
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::WireguardPeerListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      sig { returns(T.attached_class) }
      def self.new
      end

      sig { override.returns({}) }
      def to_hash
      end
    end
  end
end
