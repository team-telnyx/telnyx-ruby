# typed: strong

module Telnyx
  module Resources
    # Tunnels connect a Network to hosts behind a tunnel process within the user's
    # network.
    class Tunnels
      # Tunnels connect a Network to hosts behind a tunnel process within the user's
      # network.
      sig { returns(Telnyx::Resources::Tunnels::Actions) }
      attr_reader :actions

      # Creates a tunnel and returns its `tunnel_token`. The token is the only
      # credential the tunnel process needs, and this response and
      # `POST /tunnels/{id}/actions/rotate_token` are the only ones that return it. A
      # new tunnel is `inactive` until a tunnel process connects with the token.
      sig do
        params(
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TunnelCreateResponse)
      end
      def create(
        # A user specified name for the tunnel.
        name:,
        request_options: {}
      )
      end

      # Retrieves a tunnel with its status and the tunnel processes connected to it. The
      # response never includes `tunnel_token`.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TunnelRetrieveResponse)
      end
      def retrieve(
        # The id of the tunnel.
        id,
        request_options: {}
      )
      end

      # Lists the tunnels on the account with their status and connected tunnel
      # processes. Responses never include `tunnel_token`.
      sig do
        params(
          filter: Telnyx::TunnelListParams::Filter::OrHash,
          page: Telnyx::TunnelListParams::Page::OrHash,
          sort: Telnyx::TunnelListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::TunnelListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[name],
        # filter[status]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[after],
        # page[limit]
        page: nil,
        # Sorts the results by a field, ascending, or descending with a leading `-`. The
        # default is `-created_at`.
        sort: nil,
        request_options: {}
      )
      end

      # Deletes a tunnel. A tunnel that a route names as its next hop cannot be deleted;
      # delete those routes first. Connected tunnel processes are disconnected and
      # cannot reconnect with the tunnel's token.
      sig do
        params(id: String, request_options: Telnyx::RequestOptions::OrHash).void
      end
      def delete(
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
