# frozen_string_literal: true

module Telnyx
  module Resources
    class BrowserSessions
      # Execute browser actions: navigate, observe, click, fill, select, press, scroll,
      # wait_for, screenshot, batch.
      # @return [Telnyx::Resources::BrowserSessions::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::BrowserSessionCreateParams} for more details.
      #
      # Creates an isolated browser session with network access restricted to the
      # domains you allow.
      #
      # @overload create(policy:, idempotency_key: nil, limits: nil, metadata: nil, request_options: {})
      #
      # @param policy [Telnyx::Models::BrowserSessionCreateParams::Policy]
      #
      # @param idempotency_key [String] Scoped to the organization. The same key and identical normalized policy, limits
      #
      # @param limits [Telnyx::Models::BrowserSessionCreateParams::Limits]
      #
      # @param metadata [Hash{Symbol=>Object}] Arbitrary key-value metadata.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BrowserSessionCreateResponse]
      #
      # @see Telnyx::Models::BrowserSessionCreateParams
      def create(params)
        parsed, options = Telnyx::BrowserSessionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "browser_sessions",
          body: parsed,
          model: Telnyx::Models::BrowserSessionCreateResponse,
          options: options
        )
      end

      # Returns the current status of a browser session.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BrowserSessionRetrieveResponse]
      #
      # @see Telnyx::Models::BrowserSessionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["browser_sessions/%1$s", id],
          model: Telnyx::Models::BrowserSessionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Lists sessions for the authenticated org. Optional status filter.
      #
      # @overload list(status: nil, request_options: {})
      #
      # @param status [Symbol, Telnyx::Models::BrowserSessionListParams::Status]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BrowserSessionListResponse]
      #
      # @see Telnyx::Models::BrowserSessionListParams
      def list(params = {})
        parsed, options = Telnyx::BrowserSessionListParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "browser_sessions",
          query: query,
          model: Telnyx::Models::BrowserSessionListResponse,
          options: options
        )
      end

      # Closes a ready session and releases its resources. An already closed, failed, or
      # expired session is returned unchanged; a provisioning session returns 409
      # session_not_ready.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BrowserSessionDeleteResponse]
      #
      # @see Telnyx::Models::BrowserSessionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["browser_sessions/%1$s", id],
          model: Telnyx::Models::BrowserSessionDeleteResponse,
          options: params[:request_options]
        )
      end

      # Returns artifact metadata and a signed download URL. The download URL requires
      # Bearer auth.
      #
      # @overload retrieve_artifact(artifact_id, id:, request_options: {})
      #
      # @param artifact_id [String]
      # @param id [String]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::BrowserSessionRetrieveArtifactResponse]
      #
      # @see Telnyx::Models::BrowserSessionRetrieveArtifactParams
      def retrieve_artifact(artifact_id, params)
        parsed, options = Telnyx::BrowserSessionRetrieveArtifactParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["browser_sessions/%1$s/artifacts/%2$s", id, artifact_id],
          model: Telnyx::Models::BrowserSessionRetrieveArtifactResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::BrowserSessions::Actions.new(client: client)
      end
    end
  end
end
