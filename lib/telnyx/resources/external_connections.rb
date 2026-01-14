# frozen_string_literal: true

module Telnyx
  module Resources
    class ExternalConnections
      # @return [Telnyx::Resources::ExternalConnections::LogMessages]
      attr_reader :log_messages

      # @return [Telnyx::Resources::ExternalConnections::CivicAddresses]
      attr_reader :civic_addresses

      # @return [Telnyx::Resources::ExternalConnections::PhoneNumbers]
      attr_reader :phone_numbers

      # @return [Telnyx::Resources::ExternalConnections::Releases]
      attr_reader :releases

      # @return [Telnyx::Resources::ExternalConnections::Uploads]
      attr_reader :uploads

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ExternalConnectionCreateParams} for more details.
      #
      # Creates a new External Connection based on the parameters sent in the request.
      # The external_sip_connection and outbound voice profile id are required. Once
      # created, you can assign phone numbers to your application using the
      # `/phone_numbers` endpoint.
      #
      # @overload create(external_sip_connection:, outbound:, active: nil, inbound: nil, tags: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param external_sip_connection [Symbol, Telnyx::Models::ExternalConnectionCreateParams::ExternalSipConnection] The service that will be consuming this connection.
      #
      # @param outbound [Telnyx::Models::ExternalConnectionCreateParams::Outbound]
      #
      # @param active [Boolean] Specifies whether the connection can be used.
      #
      # @param inbound [Telnyx::Models::ExternalConnectionCreateParams::Inbound]
      #
      # @param tags [Array<String>] Tags associated with the connection.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ExternalConnectionCreateResponse]
      #
      # @see Telnyx::Models::ExternalConnectionCreateParams
      def create(params)
        parsed, options = Telnyx::ExternalConnectionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "external_connections",
          body: parsed,
          model: Telnyx::Models::ExternalConnectionCreateResponse,
          options: options
        )
      end

      # Return the details of an existing External Connection inside the 'data'
      # attribute of the response.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ExternalConnectionRetrieveResponse]
      #
      # @see Telnyx::Models::ExternalConnectionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["external_connections/%1$s", id],
          model: Telnyx::Models::ExternalConnectionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ExternalConnectionUpdateParams} for more details.
      #
      # Updates settings of an existing External Connection based on the parameters of
      # the request.
      #
      # @overload update(id, outbound:, active: nil, inbound: nil, tags: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param outbound [Telnyx::Models::ExternalConnectionUpdateParams::Outbound]
      #
      # @param active [Boolean] Specifies whether the connection can be used.
      #
      # @param inbound [Telnyx::Models::ExternalConnectionUpdateParams::Inbound]
      #
      # @param tags [Array<String>] Tags associated with the connection.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ExternalConnectionUpdateResponse]
      #
      # @see Telnyx::Models::ExternalConnectionUpdateParams
      def update(id, params)
        parsed, options = Telnyx::ExternalConnectionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["external_connections/%1$s", id],
          body: parsed,
          model: Telnyx::Models::ExternalConnectionUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::ExternalConnectionListParams} for more details.
      #
      # This endpoint returns a list of your External Connections inside the 'data'
      # attribute of the response. External Connections are used by Telnyx customers to
      # seamless configure SIP trunking integrations with Telnyx Partners, through
      # External Voice Integrations in Mission Control Portal.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::ExternalConnectionListParams::Filter] Filter parameter for external connections (deepObject style). Supports filtering
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::ExternalConnection>]
      #
      # @see Telnyx::Models::ExternalConnectionListParams
      def list(params = {})
        parsed, options = Telnyx::ExternalConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "external_connections",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::ExternalConnection,
          options: options
        )
      end

      # Permanently deletes an External Connection. Deletion may be prevented if the
      # application is in use by phone numbers, is active, or if it is an Operator
      # Connect connection. To remove an Operator Connect integration please contact
      # Telnyx support.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ExternalConnectionDeleteResponse]
      #
      # @see Telnyx::Models::ExternalConnectionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["external_connections/%1$s", id],
          model: Telnyx::Models::ExternalConnectionDeleteResponse,
          options: params[:request_options]
        )
      end

      # Update a location's static emergency address
      #
      # @overload update_location(location_id, id:, static_emergency_address_id:, request_options: {})
      #
      # @param location_id [String] Path param: The ID of the location to update
      #
      # @param id [String] Path param: The ID of the external connection
      #
      # @param static_emergency_address_id [String] Body param: A new static emergency address ID to update the location with
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ExternalConnectionUpdateLocationResponse]
      #
      # @see Telnyx::Models::ExternalConnectionUpdateLocationParams
      def update_location(location_id, params)
        parsed, options = Telnyx::ExternalConnectionUpdateLocationParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["external_connections/%1$s/locations/%2$s", id, location_id],
          body: parsed,
          model: Telnyx::Models::ExternalConnectionUpdateLocationResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @log_messages = Telnyx::Resources::ExternalConnections::LogMessages.new(client: client)
        @civic_addresses = Telnyx::Resources::ExternalConnections::CivicAddresses.new(client: client)
        @phone_numbers = Telnyx::Resources::ExternalConnections::PhoneNumbers.new(client: client)
        @releases = Telnyx::Resources::ExternalConnections::Releases.new(client: client)
        @uploads = Telnyx::Resources::ExternalConnections::Uploads.new(client: client)
      end
    end
  end
end
