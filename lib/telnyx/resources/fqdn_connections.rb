# frozen_string_literal: true

module Telnyx
  module Resources
    class FqdnConnections
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FqdnConnectionCreateParams} for more details.
      #
      # Creates a FQDN connection.
      #
      # @overload create(connection_name:, active: nil, anchorsite_override: nil, android_push_credential_id: nil, call_cost_in_webhooks: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, inbound: nil, ios_push_credential_id: nil, microsoft_teams_sbc: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, rtcp_settings: nil, tags: nil, transport_protocol: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param connection_name [String] A user-assigned name to help manage the connection.
      #
      # @param active [Boolean] Defaults to true
      #
      # @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      # @param android_push_credential_id [String, nil] The uuid of the push credential for Android
      #
      # @param call_cost_in_webhooks [Boolean] Specifies if call cost webhooks should be sent for this connection.
      #
      # @param default_on_hold_comfort_noise_enabled [Boolean] When enabled, Telnyx will generate comfort noise when you place the call on hold
      #
      # @param dtmf_type [Symbol, Telnyx::Models::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      # @param encode_contact_header_enabled [Boolean] Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG scen
      #
      # @param encrypted_media [Symbol, Telnyx::Models::EncryptedMedia, nil] Enable use of SRTP for encryption. Cannot be set if the transport_portocol is TL
      #
      # @param inbound [Telnyx::Models::InboundFqdn]
      #
      # @param ios_push_credential_id [String, nil] The uuid of the push credential for Ios
      #
      # @param microsoft_teams_sbc [Boolean] When enabled, the connection will be created for Microsoft Teams Direct Routing.
      #
      # @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #
      # @param outbound [Telnyx::Models::OutboundFqdn]
      #
      # @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      # @param tags [Array<String>] Tags associated with the connection.
      #
      # @param transport_protocol [Symbol, Telnyx::Models::TransportProtocol] One of UDP, TLS, or TCP. Applies only to connections with IP authentication or F
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnConnectionCreateResponse]
      #
      # @see Telnyx::Models::FqdnConnectionCreateParams
      def create(params)
        parsed, options = Telnyx::FqdnConnectionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "fqdn_connections",
          body: parsed,
          model: Telnyx::Models::FqdnConnectionCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing FQDN connection.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnConnectionRetrieveResponse]
      #
      # @see Telnyx::Models::FqdnConnectionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["fqdn_connections/%1$s", id],
          model: Telnyx::Models::FqdnConnectionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FqdnConnectionUpdateParams} for more details.
      #
      # Updates settings of an existing FQDN connection.
      #
      # @overload update(id, active: nil, anchorsite_override: nil, android_push_credential_id: nil, call_cost_in_webhooks: nil, connection_name: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, inbound: nil, ios_push_credential_id: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, rtcp_settings: nil, tags: nil, transport_protocol: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param active [Boolean] Defaults to true
      #
      # @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      # @param android_push_credential_id [String, nil] The uuid of the push credential for Android
      #
      # @param call_cost_in_webhooks [Boolean] Specifies if call cost webhooks should be sent for this connection.
      #
      # @param connection_name [String] A user-assigned name to help manage the connection.
      #
      # @param default_on_hold_comfort_noise_enabled [Boolean] When enabled, Telnyx will generate comfort noise when you place the call on hold
      #
      # @param dtmf_type [Symbol, Telnyx::Models::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      # @param encode_contact_header_enabled [Boolean] Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG scen
      #
      # @param encrypted_media [Symbol, Telnyx::Models::EncryptedMedia, nil] Enable use of SRTP for encryption. Cannot be set if the transport_portocol is TL
      #
      # @param inbound [Telnyx::Models::InboundFqdn]
      #
      # @param ios_push_credential_id [String, nil] The uuid of the push credential for Ios
      #
      # @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer that the sender and receiver negotiate T38 direc
      #
      # @param outbound [Telnyx::Models::OutboundFqdn]
      #
      # @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      # @param tags [Array<String>] Tags associated with the connection.
      #
      # @param transport_protocol [Symbol, Telnyx::Models::TransportProtocol] One of UDP, TLS, or TCP. Applies only to connections with IP authentication or F
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnConnectionUpdateResponse]
      #
      # @see Telnyx::Models::FqdnConnectionUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::FqdnConnectionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["fqdn_connections/%1$s", id],
          body: parsed,
          model: Telnyx::Models::FqdnConnectionUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FqdnConnectionListParams} for more details.
      #
      # Returns a list of your FQDN connections.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::FqdnConnectionListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[connection\_
      #
      # @param page [Telnyx::Models::FqdnConnectionListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param sort [Symbol, Telnyx::Models::FqdnConnectionListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnConnectionListResponse]
      #
      # @see Telnyx::Models::FqdnConnectionListParams
      def list(params = {})
        parsed, options = Telnyx::FqdnConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "fqdn_connections",
          query: parsed,
          model: Telnyx::Models::FqdnConnectionListResponse,
          options: options
        )
      end

      # Deletes an FQDN connection.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FqdnConnectionDeleteResponse]
      #
      # @see Telnyx::Models::FqdnConnectionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["fqdn_connections/%1$s", id],
          model: Telnyx::Models::FqdnConnectionDeleteResponse,
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
