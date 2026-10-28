# frozen_string_literal: true

module Telnyx
  module Resources
    class BrowserSessions
      # Execute browser actions: navigate, observe, click, fill, select, press, scroll,
      # wait_for, screenshot, batch.
      class Actions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::BrowserSessions::ActionCreateParams} for more details.
        #
        # Executes a browser action on the session. Returns 200 if completed within
        # wait_seconds, 202 if still in-flight.
        #
        # Action types: navigate, observe, click, fill, select, press, scroll, wait_for,
        # screenshot, batch.
        #
        # @overload create(id, body:, wait_seconds: nil, request_options: {})
        #
        # @param id [String] Path param
        #
        # @param body [Telnyx::Models::BrowserSessions::NavigateAction, Telnyx::Models::BrowserSessions::ObserveAction, Telnyx::Models::BrowserSessions::ClickAction, Telnyx::Models::BrowserSessions::FillAction, Telnyx::Models::BrowserSessions::SelectAction, Telnyx::Models::BrowserSessions::PressAction, Telnyx::Models::BrowserSessions::ScrollAction, Telnyx::Models::BrowserSessions::ScreenshotAction, Telnyx::Models::BrowserSessions::WaitForAction, Telnyx::Models::BrowserSessions::ActionCreateParams::Body::BatchAction] Body param: Discriminated union on type. Variants are strict: unknown fields are
        #
        # @param wait_seconds [Integer] Query param: Maximum seconds the submission request waits for completion, not an
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BrowserSessions::ActionCreateResponse]
        #
        # @see Telnyx::Models::BrowserSessions::ActionCreateParams
        def create(id, params)
          parsed, options = Telnyx::BrowserSessions::ActionCreateParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed.except(:body))
          @client.request(
            method: :post,
            path: ["browser_sessions/%1$s/actions", id],
            query: query,
            body: parsed[:body],
            model: Telnyx::Models::BrowserSessions::ActionCreateResponse,
            options: options
          )
        end

        # Returns the stored status and result of an action. Use this to poll actions that
        # returned 202; HTTP 200 can contain any action status. Stored observations
        # contain metadata with empty tree and refs, not the full snapshot; submit a fresh
        # observe action to obtain current refs.
        #
        # @overload retrieve(action_id, id:, request_options: {})
        #
        # @param action_id [String]
        # @param id [String]
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::BrowserSessions::ActionRetrieveResponse]
        #
        # @see Telnyx::Models::BrowserSessions::ActionRetrieveParams
        def retrieve(action_id, params)
          parsed, options = Telnyx::BrowserSessions::ActionRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["browser_sessions/%1$s/actions/%2$s", id, action_id],
            model: Telnyx::Models::BrowserSessions::ActionRetrieveResponse,
            options: options
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
