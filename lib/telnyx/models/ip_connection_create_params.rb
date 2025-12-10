# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::IPConnections#create
    class IPConnectionCreateParams < Telnyx::Internal::Type::BaseModel
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
      #   @return [Telnyx::Models::IPConnectionCreateParams::Inbound, nil]
      optional :inbound, -> { Telnyx::IPConnectionCreateParams::Inbound }

      # @!attribute ios_push_credential_id
      #   The uuid of the push credential for Ios
      #
      #   @return [String, nil]
      optional :ios_push_credential_id, String, nil?: true

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
      #   @return [Symbol, Telnyx::Models::IPConnectionCreateParams::TransportProtocol, nil]
      optional :transport_protocol, enum: -> { Telnyx::IPConnectionCreateParams::TransportProtocol }

      # @!attribute webhook_api_version
      #   Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @return [Symbol, Telnyx::Models::IPConnectionCreateParams::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::IPConnectionCreateParams::WebhookAPIVersion }

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

      # @!method initialize(active: nil, anchorsite_override: nil, android_push_credential_id: nil, call_cost_in_webhooks: nil, connection_name: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, inbound: nil, ios_push_credential_id: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, rtcp_settings: nil, tags: nil, transport_protocol: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::IPConnectionCreateParams} for more details.
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
      #   @param inbound [Telnyx::Models::IPConnectionCreateParams::Inbound]
      #
      #   @param ios_push_credential_id [String, nil] The uuid of the push credential for Ios
      #
      #   @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #
      #   @param outbound [Telnyx::Models::OutboundIP]
      #
      #   @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      #   @param tags [Array<String>] Tags associated with the connection.
      #
      #   @param transport_protocol [Symbol, Telnyx::Models::IPConnectionCreateParams::TransportProtocol] One of UDP, TLS, or TCP. Applies only to connections with IP authentication or F
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::IPConnectionCreateParams::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Inbound < Telnyx::Internal::Type::BaseModel
        # @!attribute ani_number_format
        #   This setting allows you to set the format with which the caller's number (ANI)
        #   is sent for inbound phone calls.
        #
        #   @return [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::AniNumberFormat, nil]
        optional :ani_number_format, enum: -> { Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat }

        # @!attribute channel_limit
        #   When set, this will limit the total number of inbound calls to phone numbers
        #   associated with this connection.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!attribute codecs
        #   Defines the list of codecs that Telnyx will send for inbound calls to a specific
        #   number on your portal account, in priority order. This only works when the
        #   Connection the number is assigned to uses Media Handling mode: default. OPUS and
        #   H.264 codecs are available only when using TCP or TLS transport for SIP.
        #
        #   @return [Array<String>, nil]
        optional :codecs, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute default_routing_method
        #   Default routing method to be used when a number is associated with the
        #   connection. Must be one of the routing method types or left blank, other values
        #   are not allowed.
        #
        #   @return [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::DefaultRoutingMethod, nil]
        optional :default_routing_method,
                 enum: -> { Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod }

        # @!attribute dnis_number_format
        #
        #   @return [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::DnisNumberFormat, nil]
        optional :dnis_number_format, enum: -> { Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat }

        # @!attribute generate_ringback_tone
        #   Generate ringback tone through 183 session progress message with early media.
        #
        #   @return [Boolean, nil]
        optional :generate_ringback_tone, Telnyx::Internal::Type::Boolean

        # @!attribute isup_headers_enabled
        #   When set, inbound phone calls will receive ISUP parameters via SIP headers.
        #   (Only when available and only when using TCP or TLS transport.)
        #
        #   @return [Boolean, nil]
        optional :isup_headers_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute prack_enabled
        #   Enable PRACK messages as defined in RFC3262.
        #
        #   @return [Boolean, nil]
        optional :prack_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute shaken_stir_enabled
        #   When enabled the SIP Connection will receive the Identity header with
        #   Shaken/Stir data in the SIP INVITE message of inbound calls, even when using UDP
        #   transport.
        #
        #   @return [Boolean, nil]
        optional :shaken_stir_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute sip_compact_headers_enabled
        #   Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :sip_compact_headers_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute sip_region
        #   Selects which `sip_region` to receive inbound calls from. If null, the default
        #   region (US) will be used.
        #
        #   @return [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::SipRegion, nil]
        optional :sip_region, enum: -> { Telnyx::IPConnectionCreateParams::Inbound::SipRegion }

        # @!attribute sip_subdomain
        #   Specifies a subdomain that can be used to receive Inbound calls to a Connection,
        #   in the same way a phone number is used, from a SIP endpoint. Example: the
        #   subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
        #   the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
        #   alphanumeric value. Please note TLS encrypted calls are not allowed for
        #   subdomain calls.
        #
        #   @return [String, nil]
        optional :sip_subdomain, String

        # @!attribute sip_subdomain_receive_settings
        #   This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        #   the public Internet) or "Only my connections" (any connection assigned to the
        #   same Telnyx user).
        #
        #   @return [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings, nil]
        optional :sip_subdomain_receive_settings,
                 enum: -> { Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings }

        # @!attribute timeout_1xx_secs
        #   Time(sec) before aborting if connection is not made.
        #
        #   @return [Integer, nil]
        optional :timeout_1xx_secs, Integer

        # @!attribute timeout_2xx_secs
        #   Time(sec) before aborting if call is unanswered (min: 1, max: 600).
        #
        #   @return [Integer, nil]
        optional :timeout_2xx_secs, Integer

        # @!method initialize(ani_number_format: nil, channel_limit: nil, codecs: nil, default_routing_method: nil, dnis_number_format: nil, generate_ringback_tone: nil, isup_headers_enabled: nil, prack_enabled: nil, shaken_stir_enabled: nil, sip_compact_headers_enabled: nil, sip_region: nil, sip_subdomain: nil, sip_subdomain_receive_settings: nil, timeout_1xx_secs: nil, timeout_2xx_secs: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::IPConnectionCreateParams::Inbound} for more details.
        #
        #   @param ani_number_format [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::AniNumberFormat] This setting allows you to set the format with which the caller's number (ANI) i
        #
        #   @param channel_limit [Integer] When set, this will limit the total number of inbound calls to phone numbers ass
        #
        #   @param codecs [Array<String>] Defines the list of codecs that Telnyx will send for inbound calls to a specific
        #
        #   @param default_routing_method [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::DefaultRoutingMethod] Default routing method to be used when a number is associated with the connectio
        #
        #   @param dnis_number_format [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::DnisNumberFormat]
        #
        #   @param generate_ringback_tone [Boolean] Generate ringback tone through 183 session progress message with early media.
        #
        #   @param isup_headers_enabled [Boolean] When set, inbound phone calls will receive ISUP parameters via SIP headers. (Onl
        #
        #   @param prack_enabled [Boolean] Enable PRACK messages as defined in RFC3262.
        #
        #   @param shaken_stir_enabled [Boolean] When enabled the SIP Connection will receive the Identity header with Shaken/Sti
        #
        #   @param sip_compact_headers_enabled [Boolean] Defaults to true.
        #
        #   @param sip_region [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::SipRegion] Selects which `sip_region` to receive inbound calls from. If null, the default r
        #
        #   @param sip_subdomain [String] Specifies a subdomain that can be used to receive Inbound calls to a Connection,
        #
        #   @param sip_subdomain_receive_settings [Symbol, Telnyx::Models::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings] This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        #
        #   @param timeout_1xx_secs [Integer] Time(sec) before aborting if connection is not made.
        #
        #   @param timeout_2xx_secs [Integer] Time(sec) before aborting if call is unanswered (min: 1, max: 600).

        # This setting allows you to set the format with which the caller's number (ANI)
        # is sent for inbound phone calls.
        #
        # @see Telnyx::Models::IPConnectionCreateParams::Inbound#ani_number_format
        module AniNumberFormat
          extend Telnyx::Internal::Type::Enum

          PLUS_E_164 = :"+E.164"
          E_164 = :"E.164"
          PLUS_E_164_NATIONAL = :"+E.164-national"
          E_164_NATIONAL = :"E.164-national"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Default routing method to be used when a number is associated with the
        # connection. Must be one of the routing method types or left blank, other values
        # are not allowed.
        #
        # @see Telnyx::Models::IPConnectionCreateParams::Inbound#default_routing_method
        module DefaultRoutingMethod
          extend Telnyx::Internal::Type::Enum

          SEQUENTIAL = :sequential
          ROUND_ROBIN = :"round-robin"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::IPConnectionCreateParams::Inbound#dnis_number_format
        module DnisNumberFormat
          extend Telnyx::Internal::Type::Enum

          PLUS_E164 = :"+e164"
          E164 = :e164
          NATIONAL = :national
          SIP_USERNAME = :sip_username

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Selects which `sip_region` to receive inbound calls from. If null, the default
        # region (US) will be used.
        #
        # @see Telnyx::Models::IPConnectionCreateParams::Inbound#sip_region
        module SipRegion
          extend Telnyx::Internal::Type::Enum

          US = :US
          EUROPE = :Europe
          AUSTRALIA = :Australia

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        #
        # @see Telnyx::Models::IPConnectionCreateParams::Inbound#sip_subdomain_receive_settings
        module SipSubdomainReceiveSettings
          extend Telnyx::Internal::Type::Enum

          ONLY_MY_CONNECTIONS = :only_my_connections
          FROM_ANYONE = :from_anyone

          # @!method self.values
          #   @return [Array<Symbol>]
        end
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
