# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPConnections#update
    class IPConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute active
      #   Defaults to true
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute anchorsite_override
      #   `Latency` directs Telnyx to route media through the site with the lowest
      #   round-trip time to the user's connection. Telnyx calculates this time using ICMP
      #   ping messages. This can be disabled by specifying a site to handle all media.
      #
      #   @return [Symbol, Telnyx::Models::AnchorsiteOverride, nil]
      optional :anchorsite_override, enum: -> { Telnyx::AnchorsiteOverride }

      # @!attribute android_push_credential_id
      #   The uuid of the push credential for Android
      #
      #   @return [String, nil]
      optional :android_push_credential_id, String, nil?: true

      # @!attribute call_cost_in_webhooks
      #   Specifies if call cost webhooks should be sent for this connection.
      #
      #   @return [Boolean, nil]
      optional :call_cost_in_webhooks, Telnyx::Internal::Type::Boolean

      # @!attribute connection_name
      #
      #   @return [String, nil]
      optional :connection_name, String

      # @!attribute default_on_hold_comfort_noise_enabled
      #   When enabled, Telnyx will generate comfort noise when you place the call on
      #   hold. If disabled, you will need to generate comfort noise or on hold music to
      #   avoid RTP timeout.
      #
      #   @return [Boolean, nil]
      optional :default_on_hold_comfort_noise_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute dtmf_type
      #   Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #   digits sent to Telnyx will be accepted in all formats.
      #
      #   @return [Symbol, Telnyx::Models::DtmfType, nil]
      optional :dtmf_type, enum: -> { Telnyx::DtmfType }

      # @!attribute encode_contact_header_enabled
      #   Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG
      #   scenarios.
      #
      #   @return [Boolean, nil]
      optional :encode_contact_header_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute encrypted_media
      #   Enable use of SRTP for encryption. Cannot be set if the transport_portocol is
      #   TLS.
      #
      #   @return [Symbol, Telnyx::Models::EncryptedMedia, nil]
      optional :encrypted_media, enum: -> { Telnyx::EncryptedMedia }, nil?: true

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::InboundIP, nil]
      optional :inbound, -> { Telnyx::InboundIP }

      # @!attribute ios_push_credential_id
      #   The uuid of the push credential for Ios
      #
      #   @return [String, nil]
      optional :ios_push_credential_id, String, nil?: true

      # @!attribute jitter_buffer
      #   Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams
      #   of SIP Trunking calls. The feature is off unless enabled. You may define min and
      #   max values in msec for customized buffering behaviors. Larger values add latency
      #   but tolerate more jitter, while smaller values reduce latency but are more
      #   sensitive to jitter and reordering.
      #
      #   @return [Telnyx::Models::ConnectionJitterBuffer, nil]
      optional :jitter_buffer, -> { Telnyx::ConnectionJitterBuffer }

      # @!attribute noise_suppression
      #   Controls when noise suppression is applied to calls. When set to 'inbound',
      #   noise suppression is applied to incoming audio. When set to 'outbound', it's
      #   applied to outgoing audio. When set to 'both', it's applied in both directions.
      #   When set to 'disabled', noise suppression is turned off.
      #
      #   @return [Symbol, Telnyx::Models::IPConnectionUpdateParams::NoiseSuppression, nil]
      optional :noise_suppression, enum: -> { Telnyx::IPConnectionUpdateParams::NoiseSuppression }

      # @!attribute noise_suppression_details
      #   Configuration options for noise suppression. These settings are stored
      #   regardless of the noise_suppression value, but only take effect when
      #   noise_suppression is not 'disabled'. If you disable noise suppression and later
      #   re-enable it, the previously configured settings will be used.
      #
      #   @return [Telnyx::Models::ConnectionNoiseSuppressionDetails, nil]
      optional :noise_suppression_details, -> { Telnyx::ConnectionNoiseSuppressionDetails }

      # @!attribute onnet_t38_passthrough_enabled
      #   Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #   if both are on the Telnyx network. If this is disabled, Telnyx will be able to
      #   use T38 on just one leg of the call depending on each leg's settings.
      #
      #   @return [Boolean, nil]
      optional :onnet_t38_passthrough_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::OutboundIP, nil]
      optional :outbound, -> { Telnyx::OutboundIP }

      # @!attribute rtcp_settings
      #
      #   @return [Telnyx::Models::ConnectionRtcpSettings, nil]
      optional :rtcp_settings, -> { Telnyx::ConnectionRtcpSettings }

      # @!attribute tags
      #   Tags associated with the connection.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute transport_protocol
      #   One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      #   FQDN authentication.
      #
      #   @return [Symbol, Telnyx::Models::IPConnectionUpdateParams::TransportProtocol, nil]
      optional :transport_protocol, enum: -> { Telnyx::IPConnectionUpdateParams::TransportProtocol }

      # @!attribute webhook_api_version
      #   Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @return [Symbol, Telnyx::Models::IPConnectionUpdateParams::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::IPConnectionUpdateParams::WebhookAPIVersion }

      # @!attribute webhook_event_failover_url
      #   The failover URL where webhooks related to this connection will be sent if
      #   sending to the primary URL fails. Must include a scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_failover_url, String, nil?: true

      # @!attribute webhook_event_url
      #   The URL where webhooks related to this connection will be sent. Must include a
      #   scheme, such as 'https'.
      #
      #   @return [String, nil]
      optional :webhook_event_url, String

      # @!attribute webhook_timeout_secs
      #   Specifies how many seconds to wait before timing out a webhook.
      #
      #   @return [Integer, nil]
      optional :webhook_timeout_secs, Integer, nil?: true

      # @!method initialize(active: nil, anchorsite_override: nil, android_push_credential_id: nil, call_cost_in_webhooks: nil, connection_name: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, inbound: nil, ios_push_credential_id: nil, jitter_buffer: nil, noise_suppression: nil, noise_suppression_details: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, rtcp_settings: nil, tags: nil, transport_protocol: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::IPConnectionUpdateParams} for more details.
      #
      #   @param active [Boolean] Defaults to true
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      #   @param android_push_credential_id [String, nil] The uuid of the push credential for Android
      #
      #   @param call_cost_in_webhooks [Boolean] Specifies if call cost webhooks should be sent for this connection.
      #
      #   @param connection_name [String]
      #
      #   @param default_on_hold_comfort_noise_enabled [Boolean] When enabled, Telnyx will generate comfort noise when you place the call on hold
      #
      #   @param dtmf_type [Symbol, Telnyx::Models::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      #   @param encode_contact_header_enabled [Boolean] Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG scen
      #
      #   @param encrypted_media [Symbol, Telnyx::Models::EncryptedMedia, nil] Enable use of SRTP for encryption. Cannot be set if the transport_portocol is TL
      #
      #   @param inbound [Telnyx::Models::InboundIP]
      #
      #   @param ios_push_credential_id [String, nil] The uuid of the push credential for Ios
      #
      #   @param jitter_buffer [Telnyx::Models::ConnectionJitterBuffer] Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams o
      #
      #   @param noise_suppression [Symbol, Telnyx::Models::IPConnectionUpdateParams::NoiseSuppression] Controls when noise suppression is applied to calls. When set to 'inbound', nois
      #
      #   @param noise_suppression_details [Telnyx::Models::ConnectionNoiseSuppressionDetails] Configuration options for noise suppression. These settings are stored regardles
      #
      #   @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #
      #   @param outbound [Telnyx::Models::OutboundIP]
      #
      #   @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      #   @param tags [Array<String>] Tags associated with the connection.
      #
      #   @param transport_protocol [Symbol, Telnyx::Models::IPConnectionUpdateParams::TransportProtocol] One of UDP, TLS, or TCP. Applies only to connections with IP authentication or F
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::IPConnectionUpdateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Controls when noise suppression is applied to calls. When set to 'inbound',
      # noise suppression is applied to incoming audio. When set to 'outbound', it's
      # applied to outgoing audio. When set to 'both', it's applied in both directions.
      # When set to 'disabled', noise suppression is turned off.
      module NoiseSuppression
        extend Telnyx::Internal::Type::Enum

        INBOUND = :inbound
        OUTBOUND = :outbound
        BOTH = :both
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      # FQDN authentication.
      module TransportProtocol
        extend Telnyx::Internal::Type::Enum

        UDP = :UDP
        TCP = :TCP
        TLS = :TLS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        V1 = :"1"
        V2 = :"2"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
