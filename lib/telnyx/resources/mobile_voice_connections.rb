# frozen_string_literal: true

module Telnyx
  module Resources
    class MobileVoiceConnections
      # Create a Mobile Voice Connection
      #
      # @overload create(active: nil, connection_name: nil, inbound: nil, outbound: nil, tags: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param active [Boolean]
      # @param connection_name [String]
      # @param inbound [Telnyx::Models::MobileVoiceConnectionCreateParams::Inbound]
      # @param outbound [Telnyx::Models::MobileVoiceConnectionCreateParams::Outbound]
      # @param tags [Array<String>]
      # @param webhook_api_version [Symbol, Telnyx::Models::MobileVoiceConnectionCreateParams::WebhookAPIVersion]
      # @param webhook_event_failover_url [String, nil]
      # @param webhook_event_url [String, nil]
      # @param webhook_timeout_secs [Integer, nil]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MobileVoiceConnectionCreateResponse]
      #
      # @see Telnyx::Models::MobileVoiceConnectionCreateParams
      def create(params = {})
        parsed, options = Telnyx::MobileVoiceConnectionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "v2/mobile_voice_connections",
          body: parsed,
          model: Telnyx::Models::MobileVoiceConnectionCreateResponse,
          options: options
        )
      end

      # Retrieve a Mobile Voice Connection
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the mobile voice connection
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MobileVoiceConnectionRetrieveResponse]
      #
      # @see Telnyx::Models::MobileVoiceConnectionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["v2/mobile_voice_connections/%1$s", id],
          model: Telnyx::Models::MobileVoiceConnectionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Mobile Voice Connection
      #
      # @overload update(id, active: nil, connection_name: nil, inbound: nil, outbound: nil, tags: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param id [String] The ID of the mobile voice connection
      #
      # @param active [Boolean]
      #
      # @param connection_name [String]
      #
      # @param inbound [Telnyx::Models::MobileVoiceConnectionUpdateParams::Inbound]
      #
      # @param outbound [Telnyx::Models::MobileVoiceConnectionUpdateParams::Outbound]
      #
      # @param tags [Array<String>]
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::MobileVoiceConnectionUpdateParams::WebhookAPIVersion]
      #
      # @param webhook_event_failover_url [String, nil]
      #
      # @param webhook_event_url [String, nil]
      #
      # @param webhook_timeout_secs [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MobileVoiceConnectionUpdateResponse]
      #
      # @see Telnyx::Models::MobileVoiceConnectionUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::MobileVoiceConnectionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["v2/mobile_voice_connections/%1$s", id],
          body: parsed,
          model: Telnyx::Models::MobileVoiceConnectionUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::MobileVoiceConnectionListParams} for more details.
      #
      # List Mobile Voice Connections
      #
      # @overload list(filter_connection_name_contains: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter_connection_name_contains [String] Filter by connection name containing the given string
      #
      # @param page_number [Integer] The page number to load
      #
      # @param page_size [Integer] The size of the page
      #
      # @param sort [String] Sort by field (e.g., created_at, connection_name, active). Prefix with - for des
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MobileVoiceConnectionListResponse]
      #
      # @see Telnyx::Models::MobileVoiceConnectionListParams
      def list(params = {})
        parsed, options = Telnyx::MobileVoiceConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "v2/mobile_voice_connections",
          query: parsed.transform_keys(
            filter_connection_name_contains: "filter[connection_name][contains]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          model: Telnyx::Models::MobileVoiceConnectionListResponse,
          options: options
        )
      end

      # Delete a Mobile Voice Connection
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The ID of the mobile voice connection
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::MobileVoiceConnectionDeleteResponse]
      #
      # @see Telnyx::Models::MobileVoiceConnectionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["v2/mobile_voice_connections/%1$s", id],
          model: Telnyx::Models::MobileVoiceConnectionDeleteResponse,
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
