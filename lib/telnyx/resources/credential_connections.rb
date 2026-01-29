# frozen_string_literal: true

module Telnyx
  module Resources
    class CredentialConnections
      # @return [Telnyx::Resources::CredentialConnections::Actions]
      attr_reader :actions

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CredentialConnectionCreateParams} for more details.
      #
      # Creates a credential connection.
      #
      # @overload create(connection_name:, password:, user_name:, active: nil, anchorsite_override: nil, android_push_credential_id: nil, call_cost_in_webhooks: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, inbound: nil, ios_push_credential_id: nil, jitter_buffer: nil, noise_suppression: nil, noise_suppression_details: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, rtcp_settings: nil, sip_uri_calling_preference: nil, tags: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param connection_name [String] A user-assigned name to help manage the connection.
      #
      # @param password [String] The password to be used as part of the credentials. Must be 8 to 128 characters
      #
      # @param user_name [String] The user name to be used as part of the credentials. Must be 4-32 characters lon
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
      # @param inbound [Telnyx::Models::CredentialInbound]
      #
      # @param ios_push_credential_id [String, nil] The uuid of the push credential for Ios
      #
      # @param jitter_buffer [Telnyx::Models::CredentialConnectionCreateParams::JitterBuffer] Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams o
      #
      # @param noise_suppression [Symbol, Telnyx::Models::CredentialConnectionCreateParams::NoiseSuppression] Controls when noise suppression is applied to calls. When set to 'inbound', nois
      #
      # @param noise_suppression_details [Telnyx::Models::ConnectionNoiseSuppressionDetails] Configuration options for noise suppression. These settings are stored regardles
      #
      # @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #
      # @param outbound [Telnyx::Models::CredentialOutbound]
      #
      # @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      # @param sip_uri_calling_preference [Symbol, Telnyx::Models::CredentialConnectionCreateParams::SipUriCallingPreference] This feature enables inbound SIP URI calls to your Credential Auth Connection. I
      #
      # @param tags [Array<String>] Tags associated with the connection.
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::CredentialConnectionCreateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1, v2 or texml. Note -
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CredentialConnectionCreateResponse]
      #
      # @see Telnyx::Models::CredentialConnectionCreateParams
      def create(params)
        parsed, options = Telnyx::CredentialConnectionCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "credential_connections",
          body: parsed,
          model: Telnyx::Models::CredentialConnectionCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing credential connection.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CredentialConnectionRetrieveResponse]
      #
      # @see Telnyx::Models::CredentialConnectionRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["credential_connections/%1$s", id],
          model: Telnyx::Models::CredentialConnectionRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CredentialConnectionUpdateParams} for more details.
      #
      # Updates settings of an existing credential connection.
      #
      # @overload update(id, active: nil, anchorsite_override: nil, android_push_credential_id: nil, call_cost_in_webhooks: nil, connection_name: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, inbound: nil, ios_push_credential_id: nil, jitter_buffer: nil, noise_suppression: nil, noise_suppression_details: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, password: nil, rtcp_settings: nil, sip_uri_calling_preference: nil, tags: nil, user_name: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
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
      # @param inbound [Telnyx::Models::CredentialInbound]
      #
      # @param ios_push_credential_id [String, nil] The uuid of the push credential for Ios
      #
      # @param jitter_buffer [Telnyx::Models::CredentialConnectionUpdateParams::JitterBuffer] Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams o
      #
      # @param noise_suppression [Symbol, Telnyx::Models::CredentialConnectionUpdateParams::NoiseSuppression] Controls when noise suppression is applied to calls. When set to 'inbound', nois
      #
      # @param noise_suppression_details [Telnyx::Models::ConnectionNoiseSuppressionDetails] Configuration options for noise suppression. These settings are stored regardles
      #
      # @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #
      # @param outbound [Telnyx::Models::CredentialOutbound]
      #
      # @param password [String] The password to be used as part of the credentials. Must be 8 to 128 characters
      #
      # @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      # @param sip_uri_calling_preference [Symbol, Telnyx::Models::CredentialConnectionUpdateParams::SipUriCallingPreference] This feature enables inbound SIP URI calls to your Credential Auth Connection. I
      #
      # @param tags [Array<String>] Tags associated with the connection.
      #
      # @param user_name [String] The user name to be used as part of the credentials. Must be 4-32 characters lon
      #
      # @param webhook_api_version [Symbol, Telnyx::Models::CredentialConnectionUpdateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CredentialConnectionUpdateResponse]
      #
      # @see Telnyx::Models::CredentialConnectionUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::CredentialConnectionUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["credential_connections/%1$s", id],
          body: parsed,
          model: Telnyx::Models::CredentialConnectionUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::CredentialConnectionListParams} for more details.
      #
      # Returns a list of your credential connections.
      #
      # @overload list(filter: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::CredentialConnectionListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[connection\_
      #
      # @param page_number [Integer]
      #
      # @param page_size [Integer]
      #
      # @param sort [Symbol, Telnyx::Models::CredentialConnectionListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::CredentialConnection>]
      #
      # @see Telnyx::Models::CredentialConnectionListParams
      def list(params = {})
        parsed, options = Telnyx::CredentialConnectionListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "credential_connections",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::CredentialConnection,
          options: options
        )
      end

      # Deletes an existing credential connection.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CredentialConnectionDeleteResponse]
      #
      # @see Telnyx::Models::CredentialConnectionDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["credential_connections/%1$s", id],
          model: Telnyx::Models::CredentialConnectionDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::CredentialConnections::Actions.new(client: client)
      end
    end
  end
end
