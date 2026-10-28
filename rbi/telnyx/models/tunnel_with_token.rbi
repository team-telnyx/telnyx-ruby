# typed: strong

module Telnyx
  module Models
    class TunnelWithToken < Telnyx::Models::Tunnel
      OrHash =
        T.type_alias do
          T.any(Telnyx::TunnelWithToken, Telnyx::Internal::AnyHash)
        end

      # The credential that a tunnel process presents with
      # `telnyx-edge tunnel run --token`. Returned only by create and rotate_token.
      # Telnyx stores only a hash of it.
      sig { returns(T.nilable(String)) }
      attr_reader :tunnel_token

      sig { params(tunnel_token: String).void }
      attr_writer :tunnel_token

      sig { params(tunnel_token: String).returns(T.attached_class) }
      def self.new(
        # The credential that a tunnel process presents with
        # `telnyx-edge tunnel run --token`. Returned only by create and rotate_token.
        # Telnyx stores only a hash of it.
        tunnel_token: nil
      )
      end

      sig { override.returns({ tunnel_token: String }) }
      def to_hash
      end
    end
  end
end
