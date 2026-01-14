# typed: strong

module Telnyx
  module Resources
    class IPConnections
      # Creates an IP connection.
      sig do
        params(
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          android_push_credential_id: T.nilable(String),
          call_cost_in_webhooks: T::Boolean,
          connection_name: String,
          default_on_hold_comfort_noise_enabled: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          encode_contact_header_enabled: T::Boolean,
          encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
          inbound: Telnyx::IPConnectionCreateParams::Inbound::OrHash,
          ios_push_credential_id: T.nilable(String),
          noise_suppression:
            Telnyx::IPConnectionCreateParams::NoiseSuppression::OrSymbol,
          noise_suppression_details:
            Telnyx::IPConnectionCreateParams::NoiseSuppressionDetails::OrHash,
          onnet_t38_passthrough_enabled: T::Boolean,
          outbound: Telnyx::OutboundIP::OrHash,
          rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
          tags: T::Array[String],
          transport_protocol:
            Telnyx::IPConnectionCreateParams::TransportProtocol::OrSymbol,
          webhook_api_version:
            Telnyx::IPConnectionCreateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IPConnectionCreateResponse)
      end
      def create(
        # Defaults to true
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # The uuid of the push credential for Android
        android_push_credential_id: nil,
        # Specifies if call cost webhooks should be sent for this connection.
        call_cost_in_webhooks: nil,
        connection_name: nil,
        # When enabled, Telnyx will generate comfort noise when you place the call on
        # hold. If disabled, you will need to generate comfort noise or on hold music to
        # avoid RTP timeout.
        default_on_hold_comfort_noise_enabled: nil,
        # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
        # digits sent to Telnyx will be accepted in all formats.
        dtmf_type: nil,
        # Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG
        # scenarios.
        encode_contact_header_enabled: nil,
        # Enable use of SRTP for encryption. Cannot be set if the transport_portocol is
        # TLS.
        encrypted_media: nil,
        inbound: nil,
        # The uuid of the push credential for Ios
        ios_push_credential_id: nil,
        # Controls when noise suppression is applied to calls. When set to 'inbound',
        # noise suppression is applied to incoming audio. When set to 'outbound', it's
        # applied to outgoing audio. When set to 'both', it's applied in both directions.
        # When set to 'disabled', noise suppression is turned off.
        noise_suppression: nil,
        # Configuration options for noise suppression. These settings are stored
        # regardless of the noise_suppression value, but only take effect when
        # noise_suppression is not 'disabled'. If you disable noise suppression and later
        # re-enable it, the previously configured settings will be used.
        noise_suppression_details: nil,
        # Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
        # if both are on the Telnyx network. If this is disabled, Telnyx will be able to
        # use T38 on just one leg of the call depending on each leg's settings.
        onnet_t38_passthrough_enabled: nil,
        outbound: nil,
        rtcp_settings: nil,
        # Tags associated with the connection.
        tags: nil,
        # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
        # FQDN authentication.
        transport_protocol: nil,
        # Determines which webhook format will be used, Telnyx API v1 or v2.
        webhook_api_version: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing ip connection.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IPConnectionRetrieveResponse)
      end
      def retrieve(
        # IP Connection ID
        id,
        request_options: {}
      )
      end

      # Updates settings of an existing IP connection.
      sig do
        params(
          id: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          android_push_credential_id: T.nilable(String),
          call_cost_in_webhooks: T::Boolean,
          connection_name: String,
          default_on_hold_comfort_noise_enabled: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          encode_contact_header_enabled: T::Boolean,
          encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
          inbound: Telnyx::InboundIP::OrHash,
          ios_push_credential_id: T.nilable(String),
          noise_suppression:
            Telnyx::IPConnectionUpdateParams::NoiseSuppression::OrSymbol,
          noise_suppression_details:
            Telnyx::IPConnectionUpdateParams::NoiseSuppressionDetails::OrHash,
          onnet_t38_passthrough_enabled: T::Boolean,
          outbound: Telnyx::OutboundIP::OrHash,
          rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
          tags: T::Array[String],
          transport_protocol:
            Telnyx::IPConnectionUpdateParams::TransportProtocol::OrSymbol,
          webhook_api_version:
            Telnyx::IPConnectionUpdateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IPConnectionUpdateResponse)
      end
      def update(
        # Identifies the type of resource.
        id,
        # Defaults to true
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # The uuid of the push credential for Android
        android_push_credential_id: nil,
        # Specifies if call cost webhooks should be sent for this connection.
        call_cost_in_webhooks: nil,
        connection_name: nil,
        # When enabled, Telnyx will generate comfort noise when you place the call on
        # hold. If disabled, you will need to generate comfort noise or on hold music to
        # avoid RTP timeout.
        default_on_hold_comfort_noise_enabled: nil,
        # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
        # digits sent to Telnyx will be accepted in all formats.
        dtmf_type: nil,
        # Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG
        # scenarios.
        encode_contact_header_enabled: nil,
        # Enable use of SRTP for encryption. Cannot be set if the transport_portocol is
        # TLS.
        encrypted_media: nil,
        inbound: nil,
        # The uuid of the push credential for Ios
        ios_push_credential_id: nil,
        # Controls when noise suppression is applied to calls. When set to 'inbound',
        # noise suppression is applied to incoming audio. When set to 'outbound', it's
        # applied to outgoing audio. When set to 'both', it's applied in both directions.
        # When set to 'disabled', noise suppression is turned off.
        noise_suppression: nil,
        # Configuration options for noise suppression. These settings are stored
        # regardless of the noise_suppression value, but only take effect when
        # noise_suppression is not 'disabled'. If you disable noise suppression and later
        # re-enable it, the previously configured settings will be used.
        noise_suppression_details: nil,
        # Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
        # if both are on the Telnyx network. If this is disabled, Telnyx will be able to
        # use T38 on just one leg of the call depending on each leg's settings.
        onnet_t38_passthrough_enabled: nil,
        outbound: nil,
        rtcp_settings: nil,
        # Tags associated with the connection.
        tags: nil,
        # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
        # FQDN authentication.
        transport_protocol: nil,
        # Determines which webhook format will be used, Telnyx API v1 or v2.
        webhook_api_version: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      # Returns a list of your IP connections.
      sig do
        params(
          filter: Telnyx::IPConnectionListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          sort: Telnyx::IPConnectionListParams::Sort::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Internal::DefaultFlatPagination[Telnyx::IPConnection])
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[connection_name], filter[fqdn], filter[outbound_voice_profile_id],
        # filter[outbound.outbound_voice_profile_id]
        filter: nil,
        page_number: nil,
        page_size: nil,
        # Specifies the sort order for results. By default sorting direction is ascending.
        # To have the results sorted in descending order add the <code> -</code>
        # prefix.<br/><br/> That is: <ul>
        #
        #   <li>
        #     <code>connection_name</code>: sorts the result by the
        #     <code>connection_name</code> field in ascending order.
        #   </li>
        #
        #   <li>
        #     <code>-connection_name</code>: sorts the result by the
        #     <code>connection_name</code> field in descending order.
        #   </li>
        # </ul> <br/> If not given, results are sorted by <code>created_at</code> in descending order.
        sort: nil,
        request_options: {}
      )
      end

      # Deletes an existing IP connection.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::IPConnectionDeleteResponse)
      end
      def delete(
        # Identifies the type of resource.
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
