# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::UacConnections#list
    class UacConnectionListResponse < Telnyx::Internal::Type::BaseModel
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

      # @!attribute android_push_credential_id
      #   The uuid of the push credential for Android
      #
      #   @return [String, nil]
      optional :android_push_credential_id, String, nil?: true

      # @!attribute authentication
      #   The authentication strategy used by this connection.
      #
      #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::Authentication, nil]
      optional :authentication, enum: -> { Telnyx::Models::UacConnectionListResponse::Authentication }

      # @!attribute call_cost_in_webhooks
      #   Specifies if call cost webhooks should be sent for this connection.
      #
      #   @return [Boolean, nil]
      optional :call_cost_in_webhooks, Telnyx::Internal::Type::Boolean

      # @!attribute connection_name
      #
      #   @return [String, nil]
      optional :connection_name, String

      # @!attribute created_at
      #   ISO-8601 formatted date indicating when the resource was created.
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

      # @!attribute external_uac_settings
      #   External SIP peer settings used by Telnyx when registering to your PBX and
      #   routing outbound calls.
      #
      #   @return [Telnyx::Models::UacConnectionListResponse::ExternalUacSettings, nil]
      optional :external_uac_settings, -> { Telnyx::Models::UacConnectionListResponse::ExternalUacSettings }

      # @!attribute fqdn
      #   The Telnyx-managed FQDN generated for the UAC connection.
      #
      #   @return [String, nil]
      optional :fqdn, String

      # @!attribute fqdn_outbound_authentication
      #   The fixed outbound authentication mode used by UAC FQDN records.
      #
      #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::FqdnOutboundAuthentication, nil]
      optional :fqdn_outbound_authentication,
               enum: -> { Telnyx::Models::UacConnectionListResponse::FqdnOutboundAuthentication }

      # @!attribute fqdns
      #   FQDN records managed automatically by the UAC connection lifecycle.
      #
      #   @return [Array<Telnyx::Models::Fqdn>, nil]
      optional :fqdns, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Fqdn] }

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::UacConnectionListResponse::Inbound, nil]
      optional :inbound, -> { Telnyx::Models::UacConnectionListResponse::Inbound }

      # @!attribute internal_uac_settings
      #   Internal Telnyx-side settings for a UAC connection.
      #
      #   @return [Telnyx::Models::UacConnectionListResponse::InternalUacSettings, nil]
      optional :internal_uac_settings, -> { Telnyx::Models::UacConnectionListResponse::InternalUacSettings }

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
      #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::NoiseSuppression, nil]
      optional :noise_suppression, enum: -> { Telnyx::Models::UacConnectionListResponse::NoiseSuppression }

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
      #   @return [Telnyx::Models::UacConnectionListResponse::Outbound, nil]
      optional :outbound, -> { Telnyx::Models::UacConnectionListResponse::Outbound }

      # @!attribute password
      #   The password to be used as part of the credentials. Must be 8 to 128 characters
      #   long.
      #
      #   @return [String, nil]
      optional :password, String

      # @!attribute record_type
      #   Identifies the type of the resource.
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute registration_status
      #   The most recently known SIP registration status for this UAC connection.
      #
      #   @return [String, nil]
      optional :registration_status, String, nil?: true

      # @!attribute registration_status_updated_at
      #   ISO 8601 formatted date indicating when the registration status was last
      #   updated.
      #
      #   @return [String, nil]
      optional :registration_status_updated_at, String, nil?: true

      # @!attribute rtcp_settings
      #
      #   @return [Telnyx::Models::ConnectionRtcpSettings, nil]
      optional :rtcp_settings, -> { Telnyx::ConnectionRtcpSettings }

      # @!attribute sip_uri_calling_preference
      #   This feature enables inbound SIP URI calls to your Credential Auth Connection.
      #   If enabled for all (unrestricted) then anyone who calls the SIP URI
      #   <your-username>@telnyx.com will be connected to your Connection. You can also
      #   choose to allow only calls that are originated on any Connections under your
      #   account (internal).
      #
      #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::SipUriCallingPreference, nil]
      optional :sip_uri_calling_preference,
               enum: -> { Telnyx::Models::UacConnectionListResponse::SipUriCallingPreference }

      # @!attribute tags
      #   Tags associated with the connection.
      #
      #   @return [Array<String>, nil]
      optional :tags, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute updated_at
      #   ISO-8601 formatted date indicating when the resource was updated.
      #
      #   @return [String, nil]
      optional :updated_at, String

      # @!attribute user_name
      #   The user name to be used as part of the credentials. Must be 4-32 characters
      #   long and alphanumeric values only (no spaces or special characters). At least
      #   one of the first 5 characters must be a letter.
      #
      #   @return [String, nil]
      optional :user_name, String

      # @!attribute webhook_api_version
      #   Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::Models::UacConnectionListResponse::WebhookAPIVersion }

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

      # @!method initialize(id: nil, active: nil, anchorsite_override: nil, android_push_credential_id: nil, authentication: nil, call_cost_in_webhooks: nil, connection_name: nil, created_at: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, external_uac_settings: nil, fqdn: nil, fqdn_outbound_authentication: nil, fqdns: nil, inbound: nil, internal_uac_settings: nil, ios_push_credential_id: nil, jitter_buffer: nil, noise_suppression: nil, noise_suppression_details: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, password: nil, record_type: nil, registration_status: nil, registration_status_updated_at: nil, rtcp_settings: nil, sip_uri_calling_preference: nil, tags: nil, updated_at: nil, user_name: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::UacConnectionListResponse} for more details.
      #
      #   A UAC (User Agent Client) Connection registers Telnyx to your PBX — the opposite
      #   of a standard SIP trunk, where the PBX registers to Telnyx. Use UAC when your
      #   PBX doesn’t support outbound SIP registration or you need Telnyx to maintain the
      #   registration.
      #
      #   @param id [String] Identifies the type of resource.
      #
      #   @param active [Boolean] Defaults to true
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      #   @param android_push_credential_id [String, nil] The uuid of the push credential for Android
      #
      #   @param authentication [Symbol, Telnyx::Models::UacConnectionListResponse::Authentication] The authentication strategy used by this connection.
      #
      #   @param call_cost_in_webhooks [Boolean] Specifies if call cost webhooks should be sent for this connection.
      #
      #   @param connection_name [String]
      #
      #   @param created_at [String] ISO-8601 formatted date indicating when the resource was created.
      #
      #   @param default_on_hold_comfort_noise_enabled [Boolean] When enabled, Telnyx will generate comfort noise when you place the call on hold
      #
      #   @param dtmf_type [Symbol, Telnyx::Models::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      #   @param encode_contact_header_enabled [Boolean] Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG scen
      #
      #   @param encrypted_media [Symbol, Telnyx::Models::EncryptedMedia, nil] Enable use of SRTP for encryption. Cannot be set if the transport_portocol is TL
      #
      #   @param external_uac_settings [Telnyx::Models::UacConnectionListResponse::ExternalUacSettings] External SIP peer settings used by Telnyx when registering to your PBX and routi
      #
      #   @param fqdn [String] The Telnyx-managed FQDN generated for the UAC connection.
      #
      #   @param fqdn_outbound_authentication [Symbol, Telnyx::Models::UacConnectionListResponse::FqdnOutboundAuthentication] The fixed outbound authentication mode used by UAC FQDN records.
      #
      #   @param fqdns [Array<Telnyx::Models::Fqdn>] FQDN records managed automatically by the UAC connection lifecycle.
      #
      #   @param inbound [Telnyx::Models::UacConnectionListResponse::Inbound]
      #
      #   @param internal_uac_settings [Telnyx::Models::UacConnectionListResponse::InternalUacSettings] Internal Telnyx-side settings for a UAC connection.
      #
      #   @param ios_push_credential_id [String, nil] The uuid of the push credential for Ios
      #
      #   @param jitter_buffer [Telnyx::Models::ConnectionJitterBuffer] Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams o
      #
      #   @param noise_suppression [Symbol, Telnyx::Models::UacConnectionListResponse::NoiseSuppression] Controls when noise suppression is applied to calls. When set to 'inbound', nois
      #
      #   @param noise_suppression_details [Telnyx::Models::ConnectionNoiseSuppressionDetails] Configuration options for noise suppression. These settings are stored regardles
      #
      #   @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #
      #   @param outbound [Telnyx::Models::UacConnectionListResponse::Outbound]
      #
      #   @param password [String] The password to be used as part of the credentials. Must be 8 to 128 characters
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param registration_status [String, nil] The most recently known SIP registration status for this UAC connection.
      #
      #   @param registration_status_updated_at [String, nil] ISO 8601 formatted date indicating when the registration status was last updated
      #
      #   @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      #   @param sip_uri_calling_preference [Symbol, Telnyx::Models::UacConnectionListResponse::SipUriCallingPreference] This feature enables inbound SIP URI calls to your Credential Auth Connection. I
      #
      #   @param tags [Array<String>] Tags associated with the connection.
      #
      #   @param updated_at [String] ISO-8601 formatted date indicating when the resource was updated.
      #
      #   @param user_name [String] The user name to be used as part of the credentials. Must be 4-32 characters lon
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::UacConnectionListResponse::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.

      # The authentication strategy used by this connection.
      #
      # @see Telnyx::Models::UacConnectionListResponse#authentication
      module Authentication
        extend Telnyx::Internal::Type::Enum

        UAC_AUTHENTICATION = :"uac-authentication"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::UacConnectionListResponse#external_uac_settings
      class ExternalUacSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute auth_username
        #   The authentication username used in SIP digest authentication. If not set, the
        #   Username value will be used.
        #
        #   @return [String, nil]
        optional :auth_username, String, nil?: true

        # @!attribute expiration_sec
        #   The registration interval, in seconds, indicating how often the system refreshes
        #   the SIP registration with the external SIP peer.
        #
        #   @return [Integer, nil]
        optional :expiration_sec, Integer, nil?: true

        # @!attribute from_user
        #   The user portion of the SIP From header used in outbound requests. This controls
        #   the caller identity presented to the external SIP peer.
        #
        #   @return [String, nil]
        optional :from_user, String, nil?: true

        # @!attribute outbound_proxy
        #   An optional SIP proxy used to route outbound requests before reaching the
        #   external SIP peer.
        #
        #   @return [String, nil]
        optional :outbound_proxy, String, nil?: true

        # @!attribute password
        #   The SIP password used for digest authentication with the external SIP peer.
        #
        #   @return [String, nil]
        optional :password, String

        # @!attribute proxy
        #   The SIP proxy address of the external SIP peer used for registrations and
        #   outbound call routing.
        #
        #   @return [String, nil]
        optional :proxy, String

        # @!attribute transport
        #   The transport protocol used for SIP signaling when communicating with the
        #   external SIP peer. One of UDP, TLS, or TCP.
        #
        #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::ExternalUacSettings::Transport, nil]
        optional :transport,
                 enum: -> { Telnyx::Models::UacConnectionListResponse::ExternalUacSettings::Transport },
                 nil?: true

        # @!attribute username
        #   The SIP username used to authenticate with the external SIP peer for
        #   registrations and outbound calls. Must start with a letter or number and contain
        #   only letters, numbers, hyphens, and underscores.
        #
        #   @return [String, nil]
        optional :username, String

        # @!method initialize(auth_username: nil, expiration_sec: nil, from_user: nil, outbound_proxy: nil, password: nil, proxy: nil, transport: nil, username: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::UacConnectionListResponse::ExternalUacSettings} for more
        #   details.
        #
        #   External SIP peer settings used by Telnyx when registering to your PBX and
        #   routing outbound calls.
        #
        #   @param auth_username [String, nil] The authentication username used in SIP digest authentication. If not set, the U
        #
        #   @param expiration_sec [Integer, nil] The registration interval, in seconds, indicating how often the system refreshes
        #
        #   @param from_user [String, nil] The user portion of the SIP From header used in outbound requests. This controls
        #
        #   @param outbound_proxy [String, nil] An optional SIP proxy used to route outbound requests before reaching the extern
        #
        #   @param password [String] The SIP password used for digest authentication with the external SIP peer.
        #
        #   @param proxy [String] The SIP proxy address of the external SIP peer used for registrations and outbou
        #
        #   @param transport [Symbol, Telnyx::Models::UacConnectionListResponse::ExternalUacSettings::Transport, nil] The transport protocol used for SIP signaling when communicating with the extern
        #
        #   @param username [String] The SIP username used to authenticate with the external SIP peer for registratio

        # The transport protocol used for SIP signaling when communicating with the
        # external SIP peer. One of UDP, TLS, or TCP.
        #
        # @see Telnyx::Models::UacConnectionListResponse::ExternalUacSettings#transport
        module Transport
          extend Telnyx::Internal::Type::Enum

          UDP = :UDP
          TLS = :TLS
          TCP = :TCP

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The fixed outbound authentication mode used by UAC FQDN records.
      #
      # @see Telnyx::Models::UacConnectionListResponse#fqdn_outbound_authentication
      module FqdnOutboundAuthentication
        extend Telnyx::Internal::Type::Enum

        CREDENTIAL_AUTHENTICATION = :"credential-authentication"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::UacConnectionListResponse#inbound
      class Inbound < Telnyx::Internal::Type::BaseModel
        # @!attribute ani_number_format
        #   This setting allows you to set the format with which the caller's number (ANI)
        #   is sent for inbound phone calls.
        #
        #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::AniNumberFormat, nil]
        optional :ani_number_format,
                 enum: -> { Telnyx::Models::UacConnectionListResponse::Inbound::AniNumberFormat }

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
        #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::DefaultRoutingMethod, nil]
        optional :default_routing_method,
                 enum: -> { Telnyx::Models::UacConnectionListResponse::Inbound::DefaultRoutingMethod }

        # @!attribute dnis_number_format
        #
        #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::DnisNumberFormat, nil]
        optional :dnis_number_format,
                 enum: -> { Telnyx::Models::UacConnectionListResponse::Inbound::DnisNumberFormat }

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

        # @!attribute simultaneous_ringing
        #   When enabled, allows multiple devices to ring simultaneously on incoming calls.
        #
        #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::SimultaneousRinging, nil]
        optional :simultaneous_ringing,
                 enum: -> { Telnyx::Models::UacConnectionListResponse::Inbound::SimultaneousRinging }

        # @!attribute sip_compact_headers_enabled
        #   Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :sip_compact_headers_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute sip_subdomain
        #   The Telnyx-generated SIP subdomain for this UAC connection.
        #
        #   @return [String, nil]
        optional :sip_subdomain, String

        # @!attribute sip_subdomain_receive_settings
        #   Controls which SIP URI callers may reach this connection.
        #
        #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::SipSubdomainReceiveSettings, nil]
        optional :sip_subdomain_receive_settings,
                 enum: -> { Telnyx::Models::UacConnectionListResponse::Inbound::SipSubdomainReceiveSettings }

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

        # @!method initialize(ani_number_format: nil, channel_limit: nil, codecs: nil, default_routing_method: nil, dnis_number_format: nil, generate_ringback_tone: nil, isup_headers_enabled: nil, prack_enabled: nil, shaken_stir_enabled: nil, simultaneous_ringing: nil, sip_compact_headers_enabled: nil, sip_subdomain: nil, sip_subdomain_receive_settings: nil, timeout_1xx_secs: nil, timeout_2xx_secs: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::UacConnectionListResponse::Inbound} for more details.
        #
        #   @param ani_number_format [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::AniNumberFormat] This setting allows you to set the format with which the caller's number (ANI) i
        #
        #   @param channel_limit [Integer] When set, this will limit the total number of inbound calls to phone numbers ass
        #
        #   @param codecs [Array<String>] Defines the list of codecs that Telnyx will send for inbound calls to a specific
        #
        #   @param default_routing_method [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::DefaultRoutingMethod] Default routing method to be used when a number is associated with the connectio
        #
        #   @param dnis_number_format [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::DnisNumberFormat]
        #
        #   @param generate_ringback_tone [Boolean] Generate ringback tone through 183 session progress message with early media.
        #
        #   @param isup_headers_enabled [Boolean] When set, inbound phone calls will receive ISUP parameters via SIP headers. (Onl
        #
        #   @param prack_enabled [Boolean] Enable PRACK messages as defined in RFC3262.
        #
        #   @param shaken_stir_enabled [Boolean] When enabled the SIP Connection will receive the Identity header with Shaken/Sti
        #
        #   @param simultaneous_ringing [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::SimultaneousRinging] When enabled, allows multiple devices to ring simultaneously on incoming calls.
        #
        #   @param sip_compact_headers_enabled [Boolean] Defaults to true.
        #
        #   @param sip_subdomain [String] The Telnyx-generated SIP subdomain for this UAC connection.
        #
        #   @param sip_subdomain_receive_settings [Symbol, Telnyx::Models::UacConnectionListResponse::Inbound::SipSubdomainReceiveSettings] Controls which SIP URI callers may reach this connection.
        #
        #   @param timeout_1xx_secs [Integer] Time(sec) before aborting if connection is not made.
        #
        #   @param timeout_2xx_secs [Integer] Time(sec) before aborting if call is unanswered (min: 1, max: 600).

        # This setting allows you to set the format with which the caller's number (ANI)
        # is sent for inbound phone calls.
        #
        # @see Telnyx::Models::UacConnectionListResponse::Inbound#ani_number_format
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
        # @see Telnyx::Models::UacConnectionListResponse::Inbound#default_routing_method
        module DefaultRoutingMethod
          extend Telnyx::Internal::Type::Enum

          SEQUENTIAL = :sequential
          ROUND_ROBIN = :"round-robin"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::UacConnectionListResponse::Inbound#dnis_number_format
        module DnisNumberFormat
          extend Telnyx::Internal::Type::Enum

          PLUS_E164 = :"+e164"
          E164 = :e164
          NATIONAL = :national
          SIP_USERNAME = :sip_username

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When enabled, allows multiple devices to ring simultaneously on incoming calls.
        #
        # @see Telnyx::Models::UacConnectionListResponse::Inbound#simultaneous_ringing
        module SimultaneousRinging
          extend Telnyx::Internal::Type::Enum

          DISABLED = :disabled
          ENABLED = :enabled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Controls which SIP URI callers may reach this connection.
        #
        # @see Telnyx::Models::UacConnectionListResponse::Inbound#sip_subdomain_receive_settings
        module SipSubdomainReceiveSettings
          extend Telnyx::Internal::Type::Enum

          ONLY_MY_CONNECTIONS = :only_my_connections
          FROM_ANYONE = :from_anyone

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Telnyx::Models::UacConnectionListResponse#internal_uac_settings
      class InternalUacSettings < Telnyx::Internal::Type::BaseModel
        # @!attribute destination_uri
        #   The SIP URI that Telnyx will call when handling an inbound request from the
        #   external peer. Do not include a `sip:` prefix. The value must be in the format
        #   `userinfo@[subdomain.]sip.telnyx.com` or
        #   `userinfo@[subdomain.]sipdev.telnyx.com`; the userinfo portion may contain only
        #   letters, digits, hyphens, and underscores.
        #
        #   @return [String, nil]
        optional :destination_uri, String

        # @!method initialize(destination_uri: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::UacConnectionListResponse::InternalUacSettings} for more
        #   details.
        #
        #   Internal Telnyx-side settings for a UAC connection.
        #
        #   @param destination_uri [String] The SIP URI that Telnyx will call when handling an inbound request from the exte
      end

      # Controls when noise suppression is applied to calls. When set to 'inbound',
      # noise suppression is applied to incoming audio. When set to 'outbound', it's
      # applied to outgoing audio. When set to 'both', it's applied in both directions.
      # When set to 'disabled', noise suppression is turned off.
      #
      # @see Telnyx::Models::UacConnectionListResponse#noise_suppression
      module NoiseSuppression
        extend Telnyx::Internal::Type::Enum

        INBOUND = :inbound
        OUTBOUND = :outbound
        BOTH = :both
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::UacConnectionListResponse#outbound
      class Outbound < Telnyx::Internal::Type::BaseModel
        # @!attribute ani_override
        #   Set a phone number as the ani_override value to override caller id number on
        #   outbound calls.
        #
        #   @return [String, nil]
        optional :ani_override, String

        # @!attribute ani_override_type
        #   Specifies when we apply your ani_override setting. Only applies when
        #   ani_override is not blank.
        #
        #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::Outbound::AniOverrideType, nil]
        optional :ani_override_type,
                 enum: -> { Telnyx::Models::UacConnectionListResponse::Outbound::AniOverrideType }

        # @!attribute call_parking_enabled
        #   Forces all SIP calls originated on this connection to be "parked" instead of
        #   "bridged" to the destination specified on the URI. Parked calls will return
        #   ringback to the caller and will await for a Call Control command to define which
        #   action will be taken next.
        #
        #   @return [Boolean, nil]
        optional :call_parking_enabled, Telnyx::Internal::Type::Boolean, nil?: true

        # @!attribute channel_limit
        #   When set, this will limit the total number of outbound calls to phone numbers
        #   associated with this connection.
        #
        #   @return [Integer, nil]
        optional :channel_limit, Integer

        # @!attribute generate_ringback_tone
        #   Generate ringback tone through 183 session progress message with early media.
        #
        #   @return [Boolean, nil]
        optional :generate_ringback_tone, Telnyx::Internal::Type::Boolean

        # @!attribute instant_ringback_enabled
        #   When set, ringback will not wait for indication before sending ringback tone to
        #   calling party.
        #
        #   @return [Boolean, nil]
        optional :instant_ringback_enabled, Telnyx::Internal::Type::Boolean

        # @!attribute localization
        #   A 2-character country code specifying the country whose national dialing rules
        #   should be used. For example, if set to `US` then any US number can be dialed
        #   without preprending +1 to the number. When left blank, Telnyx will try US and GB
        #   dialing rules, in that order, by default.
        #
        #   @return [String, nil]
        optional :localization, String

        # @!attribute outbound_voice_profile_id
        #   Identifies the associated outbound voice profile.
        #
        #   @return [String, nil]
        optional :outbound_voice_profile_id, String

        # @!attribute t38_reinvite_source
        #   This setting only affects connections with Fax-type Outbound Voice Profiles. The
        #   setting dictates whether or not Telnyx sends a t.38 reinvite.<br/><br/> By
        #   default, Telnyx will send the re-invite. If set to `customer`, the caller is
        #   expected to send the t.38 reinvite.
        #
        #   @return [Symbol, Telnyx::Models::UacConnectionListResponse::Outbound::T38ReinviteSource, nil]
        optional :t38_reinvite_source,
                 enum: -> { Telnyx::Models::UacConnectionListResponse::Outbound::T38ReinviteSource }

        # @!method initialize(ani_override: nil, ani_override_type: nil, call_parking_enabled: nil, channel_limit: nil, generate_ringback_tone: nil, instant_ringback_enabled: nil, localization: nil, outbound_voice_profile_id: nil, t38_reinvite_source: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::UacConnectionListResponse::Outbound} for more details.
        #
        #   @param ani_override [String] Set a phone number as the ani_override value to override caller id number on out
        #
        #   @param ani_override_type [Symbol, Telnyx::Models::UacConnectionListResponse::Outbound::AniOverrideType] Specifies when we apply your ani_override setting. Only applies when ani_overrid
        #
        #   @param call_parking_enabled [Boolean, nil] Forces all SIP calls originated on this connection to be "parked" instead of "br
        #
        #   @param channel_limit [Integer] When set, this will limit the total number of outbound calls to phone numbers as
        #
        #   @param generate_ringback_tone [Boolean] Generate ringback tone through 183 session progress message with early media.
        #
        #   @param instant_ringback_enabled [Boolean] When set, ringback will not wait for indication before sending ringback tone to
        #
        #   @param localization [String] A 2-character country code specifying the country whose national dialing rules s
        #
        #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
        #
        #   @param t38_reinvite_source [Symbol, Telnyx::Models::UacConnectionListResponse::Outbound::T38ReinviteSource] This setting only affects connections with Fax-type Outbound Voice Profiles. The

        # Specifies when we apply your ani_override setting. Only applies when
        # ani_override is not blank.
        #
        # @see Telnyx::Models::UacConnectionListResponse::Outbound#ani_override_type
        module AniOverrideType
          extend Telnyx::Internal::Type::Enum

          ALWAYS = :always
          NORMAL = :normal
          EMERGENCY = :emergency

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # This setting only affects connections with Fax-type Outbound Voice Profiles. The
        # setting dictates whether or not Telnyx sends a t.38 reinvite.<br/><br/> By
        # default, Telnyx will send the re-invite. If set to `customer`, the caller is
        # expected to send the t.38 reinvite.
        #
        # @see Telnyx::Models::UacConnectionListResponse::Outbound#t38_reinvite_source
        module T38ReinviteSource
          extend Telnyx::Internal::Type::Enum

          TELNYX = :telnyx
          CUSTOMER = :customer
          DISABLED = :disabled
          PASSTHRU = :passthru
          CALLER_PASSTHRU = :"caller-passthru"
          CALLEE_PASSTHRU = :"callee-passthru"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # This feature enables inbound SIP URI calls to your Credential Auth Connection.
      # If enabled for all (unrestricted) then anyone who calls the SIP URI
      # <your-username>@telnyx.com will be connected to your Connection. You can also
      # choose to allow only calls that are originated on any Connections under your
      # account (internal).
      #
      # @see Telnyx::Models::UacConnectionListResponse#sip_uri_calling_preference
      module SipUriCallingPreference
        extend Telnyx::Internal::Type::Enum

        DISABLED = :disabled
        UNRESTRICTED = :unrestricted
        INTERNAL = :internal

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      # @see Telnyx::Models::UacConnectionListResponse#webhook_api_version
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
