# frozen_string_literal: true

module Telnyx
  module Resources
    # Tunnels connect a Network to hosts behind a tunnel process within the user's
    # network.
    class Tunnels
      # Tunnels connect a Network to hosts behind a tunnel process within the user's
      # network.
      # @return [Telnyx::Resources::Tunnels::Actions]
      attr_reader :actions

      # Creates a tunnel and returns its `tunnel_token`. The token is the only
      # credential the tunnel process needs, and this response and
      # `POST /tunnels/{id}/actions/rotate_token` are the only ones that return it. A
      # new tunnel is `inactive` until a tunnel process connects with the token.
      #
      # @overload create(name:, request_options: {})
      #
      # @param name [String] A user specified name for the tunnel.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TunnelCreateResponse]
      #
      # @see Telnyx::Models::TunnelCreateParams
      def create(params)
        parsed, options = Telnyx::TunnelCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "tunnels",
          body: parsed,
          model: Telnyx::Models::TunnelCreateResponse,
          options: options
        )
      end

      # Retrieves a tunnel with its status and the tunnel processes connected to it. The
      # response never includes `tunnel_token`.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the tunnel.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TunnelRetrieveResponse]
      #
      # @see Telnyx::Models::TunnelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["tunnels/%1$s", id],
          model: Telnyx::Models::TunnelRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TunnelListParams} for more details.
      #
      # Lists the tunnels on the account with their status and connected tunnel
      # processes. Responses never include `tunnel_token`.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::TunnelListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[name], filt
      #
      # @param page [Telnyx::Models::TunnelListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[li
      #
      # @param sort [Symbol, Telnyx::Models::TunnelListParams::Sort] Sorts the results by a field, ascending, or descending with a leading `-`. The d
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TunnelListResponse]
      #
      # @see Telnyx::Models::TunnelListParams
      def list(params = {})
        parsed, options = Telnyx::TunnelListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "tunnels",
          query: query,
          model: Telnyx::Models::TunnelListResponse,
          options: options
        )
      end

      # Deletes a tunnel. A tunnel that a route names as its next hop cannot be deleted;
      # delete those routes first. Connected tunnel processes are disconnected and
      # cannot reconnect with the tunnel's token.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of the tunnel.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Telnyx::Models::TunnelDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["tunnels/%1$s", id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::Tunnels::Actions.new(client: client)
      end
    end
  end
end
