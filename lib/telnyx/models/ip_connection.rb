# frozen_string_literal: true

module Telnyx
  module Models
    class IPConnection < Telnyx::Internal::Type::BaseModel
      # @!attribute id
      #   Identifies the type of resource.
      #
      #   @return [String, nil]
      optional :id, String

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

      # @!attribute connection_name
      #
      #   @return [String, nil]
      optional :connection_name, String

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

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::InboundIP, nil]
      optional :inbound, -> { Telnyx::InboundIP }

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

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

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
      #   @return [Symbol, Telnyx::Models::IPConnection::TransportProtocol, nil]
      optional :transport_protocol, enum: -> { Telnyx::IPConnection::TransportProtocol }

      # @!attribute updated_at
      #   ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute webhook_api_version
      #   Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @return [Symbol, Telnyx::Models::IPConnection::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::IPConnection::WebhookAPIVersion }

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

      # @!method initialize(id: nil, active: nil, anchorsite_override: nil, connection_name: nil, created_at: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, inbound: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, record_type: nil, rtcp_settings: nil, tags: nil, transport_protocol: nil, updated_at: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::IPConnection} for more details.
      #
      #   @param id [String] Identifies the type of resource.
      #
      #   @param active [Boolean] Defaults to true
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      #   @param connection_name [String]
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
      #   @param inbound [Telnyx::Models::InboundIP]
      #
      #   @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #
      #   @param outbound [Telnyx::Models::OutboundIP]
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      #   @param tags [Array<String>] Tags associated with the connection.
      #
      #   @param transport_protocol [Symbol, Telnyx::Models::IPConnection::TransportProtocol] One of UDP, TLS, or TCP. Applies only to connections with IP authentication or F
      #
      #   @param updated_at [String] ISO 8601 formatted date indicating when the resource was updated.
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::IPConnection::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.

      # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      # FQDN authentication.
      #
      # @see Telnyx::Models::IPConnection#transport_protocol
      module TransportProtocol
        extend Telnyx::Internal::Type::Enum

        UDP = :UDP
        TCP = :TCP
        TLS = :TLS

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @see Telnyx::Models::IPConnection#webhook_api_version
      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        WEBHOOK_API_VERSION_1 = :"1"
        WEBHOOK_API_VERSION_2 = :"2"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
