# frozen_string_literal: true

module Telnyx
  module Models
    class FqdnConnection < Telnyx::Internal::Type::BaseModel
      # @!attribute connection_name
      #   A user-assigned name to help manage the connection.
      #
      #   @return [String]
      required :connection_name, String

      # @!attribute id
      #   Identifies the resource.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute active
      #   Defaults to true
      #
      #   @return [Boolean, nil]
      optional :active, Telnyx::Internal::Type::Boolean

      # @!attribute adjust_dtmf_timestamp
      #   Indicates whether DTMF timestamp adjustment is enabled.
      #
      #   @return [Boolean, nil]
      optional :adjust_dtmf_timestamp, Telnyx::Internal::Type::Boolean

      # @!attribute anchorsite_override
      #   `Latency` directs Telnyx to route media through the site with the lowest
      #   round-trip time to the user's connection. Telnyx calculates this time using ICMP
      #   ping messages. This can be disabled by specifying a site to handle all media.
      #
      #   @return [Symbol, Telnyx::Models::AnchorsiteOverride, nil]
      optional :anchorsite_override, enum: -> { Telnyx::AnchorsiteOverride }

      # @!attribute call_cost_enabled
      #   Indicates whether call cost calculation is enabled.
      #
      #   @return [Boolean, nil]
      optional :call_cost_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute call_cost_in_webhooks
      #   Specifies if call cost webhooks should be sent for this connection.
      #
      #   @return [Boolean, nil]
      optional :call_cost_in_webhooks, Telnyx::Internal::Type::Boolean

      # @!attribute created_at
      #   ISO 8601 formatted date indicating when the resource was created.
      #
      #   @return [String, nil]
      optional :created_at, String

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

      # @!attribute ignore_dtmf_duration
      #   Indicates whether DTMF duration should be ignored.
      #
      #   @return [Boolean, nil]
      optional :ignore_dtmf_duration, Telnyx::Internal::Type::Boolean

      # @!attribute ignore_mark_bit
      #   Indicates whether the mark bit should be ignored.
      #
      #   @return [Boolean, nil]
      optional :ignore_mark_bit, Telnyx::Internal::Type::Boolean

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::InboundFqdn, nil]
      optional :inbound, -> { Telnyx::InboundFqdn }

      # @!attribute microsoft_teams_sbc
      #   The connection is enabled for Microsoft Teams Direct Routing.
      #
      #   @return [Boolean, nil]
      optional :microsoft_teams_sbc, Telnyx::Internal::Type::Boolean

      # @!attribute noise_suppression
      #   Indicates whether noise suppression is enabled.
      #
      #   @return [Boolean, nil]
      optional :noise_suppression, Telnyx::Internal::Type::Boolean

      # @!attribute onnet_t38_passthrough_enabled
      #   Enable on-net T38 if you prefer that the sender and receiver negotiate T38
      #   directly when both are on the Telnyx network. If this is disabled, Telnyx will
      #   be able to use T38 on just one leg of the call according to each leg's settings.
      #
      #   @return [Boolean, nil]
      optional :onnet_t38_passthrough_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute outbound
      #
      #   @return [Telnyx::Models::OutboundFqdn, nil]
      optional :outbound, -> { Telnyx::OutboundFqdn }

      # @!attribute password
      #   The password for the FQDN connection.
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute rtcp_settings
      #
      #   @return [Telnyx::Models::ConnectionRtcpSettings, nil]
      optional :rtcp_settings, -> { Telnyx::ConnectionRtcpSettings }

      # @!attribute rtp_pass_codecs_on_stream_change
      #   Defines if codecs should be passed on stream change.
      #
      #   @return [Boolean, nil]
      optional :rtp_pass_codecs_on_stream_change, Telnyx::Internal::Type::Boolean

      # @!attribute send_normalized_timestamps
      #   Indicates whether normalized timestamps should be sent.
      #
      #   @return [Boolean, nil]
      optional :send_normalized_timestamps, Telnyx::Internal::Type::Boolean

      # @!attribute tags
      #   Tags associated with the connection.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute third_party_control_enabled
      #   Indicates whether third-party control is enabled.
      #
      #   @return [Boolean, nil]
      optional :third_party_control_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute transport_protocol
      #   One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      #   FQDN authentication.
      #
      #   @return [Symbol, Telnyx::Models::TransportProtocol, nil]
      optional :transport_protocol, enum: -> { Telnyx::TransportProtocol }

      # @!attribute txt_name
      #   The name for the TXT record associated with the FQDN connection.
      #
      #   @return [String, nil]
      optional :txt_name, String

      # @!attribute txt_ttl
      #   The time to live for the TXT record associated with the FQDN connection.
      #
      #   @return [Integer, nil]
      optional :txt_ttl, Integer

      # @!attribute txt_value
      #   The value for the TXT record associated with the FQDN connection.
      #
      #   @return [String, nil]
      optional :txt_value, String

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute user_name
      #   The username for the FQDN connection.
      #
      #   @return [String, nil]
      optional :user_name, String

      # @!attribute webhook_api_version
      #   Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @return [Symbol, Telnyx::Models::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::WebhookAPIVersion }

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

      # @!method initialize(connection_name:, id: nil, active: nil, adjust_dtmf_timestamp: nil, anchorsite_override: nil, call_cost_enabled: nil, call_cost_in_webhooks: nil, created_at: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, ignore_dtmf_duration: nil, ignore_mark_bit: nil, inbound: nil, microsoft_teams_sbc: nil, noise_suppression: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, password: nil, record_type: nil, rtcp_settings: nil, rtp_pass_codecs_on_stream_change: nil, send_normalized_timestamps: nil, tags: nil, third_party_control_enabled: nil, transport_protocol: nil, txt_name: nil, txt_ttl: nil, txt_value: nil, updated_at: nil, user_name: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::FqdnConnection} for more details.
      #
      #   @param connection_name [String] A user-assigned name to help manage the connection.
      #
      #   @param id [String] Identifies the resource.
      #
      #   @param active [Boolean] Defaults to true
      #
      #   @param adjust_dtmf_timestamp [Boolean] Indicates whether DTMF timestamp adjustment is enabled.
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      #   @param call_cost_enabled [Boolean] Indicates whether call cost calculation is enabled.
      #
      #   @param call_cost_in_webhooks [Boolean] Specifies if call cost webhooks should be sent for this connection.
      #
      #   @param created_at [String] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param default_on_hold_comfort_noise_enabled [Boolean] When enabled, Telnyx will generate comfort noise when you place the call on hold
      #
      #   @param dtmf_type [Symbol, Telnyx::Models::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      #   @param encode_contact_header_enabled [Boolean] Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG scen
      #
      #   @param encrypted_media [Symbol, Telnyx::Models::EncryptedMedia, nil] Enable use of SRTP for encryption. Cannot be set if the transport_portocol is TL
      #
      #   @param ignore_dtmf_duration [Boolean] Indicates whether DTMF duration should be ignored.
      #
      #   @param ignore_mark_bit [Boolean] Indicates whether the mark bit should be ignored.
      #
      #   @param inbound [Telnyx::Models::InboundFqdn]
      #
      #   @param microsoft_teams_sbc [Boolean] The connection is enabled for Microsoft Teams Direct Routing.
      #
      #   @param noise_suppression [Boolean] Indicates whether noise suppression is enabled.
      #
      #   @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer that the sender and receiver negotiate T38 direc
      #
      #   @param outbound [Telnyx::Models::OutboundFqdn]
      #
      #   @param password [String] The password for the FQDN connection.
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      #   @param rtp_pass_codecs_on_stream_change [Boolean] Defines if codecs should be passed on stream change.
      #
      #   @param send_normalized_timestamps [Boolean] Indicates whether normalized timestamps should be sent.
      #
      #   @param tags [Array<String>] Tags associated with the connection.
      #
      #   @param third_party_control_enabled [Boolean] Indicates whether third-party control is enabled.
      #
      #   @param transport_protocol [Symbol, Telnyx::Models::TransportProtocol] One of UDP, TLS, or TCP. Applies only to connections with IP authentication or F
      #
      #   @param txt_name [String] The name for the TXT record associated with the FQDN connection.
      #
      #   @param txt_ttl [Integer] The time to live for the TXT record associated with the FQDN connection.
      #
      #   @param txt_value [String] The value for the TXT record associated with the FQDN connection.
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @param user_name [String] The username for the FQDN connection.
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
    end
  end
end
