# frozen_string_literal: true

module Telnyx
  module Resources
    class CallControlApplications
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CallControlApplicationCreateParams} for more details.
      #
      # Create a call control application.
      #
      # @overload create(application_name:, webhook_event_url:, active: nil, anchorsite_override: nil, dtmf_type: nil, first_command_timeout: nil, first_command_timeout_secs: nil, inbound: nil, outbound: nil, redact_dtmf_debug_logging: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param application_name [String] A user-assigned name to help manage the application.
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param active [Boolean] Specifies whether the connection can be used.
      #
      # @param anchorsite_override [Symbol, Telnyx::Models::CallControlApplicationCreateParams::AnchorsiteOverride] <code>Latency</code> directs Telnyx to route media through the site with the low
      #
      # @param dtmf_type [Symbol, Telnyx::Models::CallControlApplicationCreateParams::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      # @param first_command_timeout [Boolean] Specifies whether calls to phone numbers associated with this connection should
      #
      # @param first_command_timeout_secs [Integer] Specifies how many seconds to wait before timing out a dial command.
      #
      # @param inbound [Telnyx::Models::CallControlApplicationInbound]
      #
      # @param outbound [Telnyx::Models::CallControlApplicationOutbound]
      #
      # @param redact_dtmf_debug_logging [Boolean] When enabled, DTMF digits entered by users will be redacted in debug logs to pro
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::CallControlApplicationCreateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CallControlApplicationCreateResponse]
      #
      # @see Telnyx::Models::CallControlApplicationCreateParams
      def create(params)
        parsed, options = Telnyx::CallControlApplicationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "call_control_applications",
          body: parsed,
          model: Telnyx::Models::CallControlApplicationCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing call control application.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CallControlApplicationRetrieveResponse]
      #
      # @see Telnyx::Models::CallControlApplicationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["call_control_applications/%1$s", id],
          model: Telnyx::Models::CallControlApplicationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CallControlApplicationUpdateParams} for more details.
      #
      # Updates settings of an existing call control application.
      #
      # @overload update(id, application_name:, webhook_event_url:, active: nil, anchorsite_override: nil, dtmf_type: nil, first_command_timeout: nil, first_command_timeout_secs: nil, inbound: nil, outbound: nil, redact_dtmf_debug_logging: nil, tags: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param application_name [String] A user-assigned name to help manage the application.
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param active [Boolean] Specifies whether the connection can be used.
      #
      # @param anchorsite_override [Symbol, Telnyx::Models::CallControlApplicationUpdateParams::AnchorsiteOverride] <code>Latency</code> directs Telnyx to route media through the site with the low
      #
      # @param dtmf_type [Symbol, Telnyx::Models::CallControlApplicationUpdateParams::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      # @param first_command_timeout [Boolean] Specifies whether calls to phone numbers associated with this connection should
      #
      # @param first_command_timeout_secs [Integer] Specifies how many seconds to wait before timing out a dial command.
      #
      # @param inbound [Telnyx::Models::CallControlApplicationInbound]
      #
      # @param outbound [Telnyx::Models::CallControlApplicationOutbound]
      #
      # @param redact_dtmf_debug_logging [Boolean] When enabled, DTMF digits entered by users will be redacted in debug logs to pro
      #
      # @param tags [Array<String>] Tags assigned to the Call Control Application.
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::CallControlApplicationUpdateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CallControlApplicationUpdateResponse]
      #
      # @see Telnyx::Models::CallControlApplicationUpdateParams
      def update(id, params)
        parsed, options = Telnyx::CallControlApplicationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["call_control_applications/%1$s", id],
          body: parsed,
          model: Telnyx::Models::CallControlApplicationUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CallControlApplicationListParams} for more details.
      #
      # Return a list of call control applications.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::CallControlApplicationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[application
      #
      # @param page [Telnyx::Models::CallControlApplicationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[after], page[be
      #
      # @param sort [Symbol, Telnyx::Models::CallControlApplicationListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CallControlApplicationListResponse]
      #
      # @see Telnyx::Models::CallControlApplicationListParams
      def list(params = {})
        parsed, options = Telnyx::CallControlApplicationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "call_control_applications",
          query: parsed,
          model: Telnyx::Models::CallControlApplicationListResponse,
          options: options
        )
      end

      # Deletes a call control application.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CallControlApplicationDeleteResponse]
      #
      # @see Telnyx::Models::CallControlApplicationDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["call_control_applications/%1$s", id],
          model: Telnyx::Models::CallControlApplicationDeleteResponse,
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
