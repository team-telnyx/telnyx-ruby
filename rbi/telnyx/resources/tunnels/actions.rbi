# typed: strong

module Telnyx
  module Resources
    class Tunnels
      # Tunnels connect a Network to hosts behind a tunnel process within the user's
      # network.
      class Actions
        # Issues a new `tunnel_token` and invalidates the previous one. Tunnel processes
        # already connected stay connected until they reconnect, and are then refused
        # until they use the new token.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Tunnels::ActionRotateTokenResponse)
        end
        def rotate_token(
          # The id of the tunnel.
          id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
