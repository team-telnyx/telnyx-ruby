# frozen_string_literal: true

module Telnyx
  module Resources
    class Tunnels
      # Tunnels connect a Network to hosts behind a tunnel process within the user's
      # network.
      class Actions
        # Issues a new `tunnel_token` and invalidates the previous one. Tunnel processes
        # already connected stay connected until they reconnect, and are then refused
        # until they use the new token.
        #
        # @overload rotate_token(id, request_options: {})
        #
        # @param id [String] The id of the tunnel.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Tunnels::ActionRotateTokenResponse]
        #
        # @see Telnyx::Models::Tunnels::ActionRotateTokenParams
        def rotate_token(id, params = {})
          @client.request(
            method: :post,
            path: ["tunnels/%1$s/actions/rotate_token", id],
            model: Telnyx::Models::Tunnels::ActionRotateTokenResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
