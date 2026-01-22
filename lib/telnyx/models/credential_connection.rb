# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CredentialConnections#list
    class CredentialConnection < Telnyx::Internal::Type::BaseModel
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

      # @!attribute inbound
      #
      #   @return [Telnyx::Models::CredentialInbound, nil]
      optional :inbound, -> { Telnyx::CredentialInbound }

      # @!attribute noise_suppression
      #   Controls when noise suppression is applied to calls. When set to 'inbound',
      #   noise suppression is applied to incoming audio. When set to 'outbound', it's
      #   applied to outgoing audio. When set to 'both', it's applied in both directions.
      #   When set to 'disabled', noise suppression is turned off.
      #
      #   @return [Symbol, Telnyx::Models::CredentialConnection::NoiseSuppression, nil]
      optional :noise_suppression, enum: -> { Telnyx::CredentialConnection::NoiseSuppression }

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
      #   @return [Telnyx::Models::CredentialOutbound, nil]
      optional :outbound, -> { Telnyx::CredentialOutbound }

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
      #   @return [Symbol, Telnyx::Models::CredentialConnection::SipUriCallingPreference, nil]
      optional :sip_uri_calling_preference, enum: -> { Telnyx::CredentialConnection::SipUriCallingPreference }

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
      #   @return [Symbol, Telnyx::Models::CredentialConnection::WebhookAPIVersion, nil]
      optional :webhook_api_version, enum: -> { Telnyx::CredentialConnection::WebhookAPIVersion }

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

      # @!method initialize(id: nil, active: nil, anchorsite_override: nil, call_cost_in_webhooks: nil, connection_name: nil, created_at: nil, default_on_hold_comfort_noise_enabled: nil, dtmf_type: nil, encode_contact_header_enabled: nil, encrypted_media: nil, inbound: nil, noise_suppression: nil, noise_suppression_details: nil, onnet_t38_passthrough_enabled: nil, outbound: nil, password: nil, record_type: nil, rtcp_settings: nil, sip_uri_calling_preference: nil, tags: nil, updated_at: nil, user_name: nil, webhook_api_version: nil, webhook_event_failover_url: nil, webhook_event_url: nil, webhook_timeout_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CredentialConnection} for more details.
      #
      #   @param id [String] Identifies the type of resource.
      #
      #   @param active [Boolean] Defaults to true
      #
      #   @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
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
      #   @param inbound [Telnyx::Models::CredentialInbound]
      #
      #   @param noise_suppression [Symbol, Telnyx::Models::CredentialConnection::NoiseSuppression] Controls when noise suppression is applied to calls. When set to 'inbound', nois
      #
      #   @param noise_suppression_details [Telnyx::Models::ConnectionNoiseSuppressionDetails] Configuration options for noise suppression. These settings are stored regardles
      #
      #   @param onnet_t38_passthrough_enabled [Boolean] Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      #
      #   @param outbound [Telnyx::Models::CredentialOutbound]
      #
      #   @param password [String] The password to be used as part of the credentials. Must be 8 to 128 characters
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param rtcp_settings [Telnyx::Models::ConnectionRtcpSettings]
      #
      #   @param sip_uri_calling_preference [Symbol, Telnyx::Models::CredentialConnection::SipUriCallingPreference] This feature enables inbound SIP URI calls to your Credential Auth Connection. I
      #
      #   @param tags [Array<String>] Tags associated with the connection.
      #
      #   @param updated_at [String] ISO-8601 formatted date indicating when the resource was updated.
      #
      #   @param user_name [String] The user name to be used as part of the credentials. Must be 4-32 characters lon
      #
      #   @param webhook_api_version [Symbol, Telnyx::Models::CredentialConnection::WebhookAPIVersion] Determines which webhook format will be used, Telnyx API v1 or v2.
      #
      #   @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      #   @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      #   @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.

      # Controls when noise suppression is applied to calls. When set to 'inbound',
      # noise suppression is applied to incoming audio. When set to 'outbound', it's
      # applied to outgoing audio. When set to 'both', it's applied in both directions.
      # When set to 'disabled', noise suppression is turned off.
      #
      # @see Telnyx::Models::CredentialConnection#noise_suppression
      module NoiseSuppression
        extend Telnyx::Internal::Type::Enum

        INBOUND = :inbound
        OUTBOUND = :outbound
        BOTH = :both
        DISABLED = :disabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # This feature enables inbound SIP URI calls to your Credential Auth Connection.
      # If enabled for all (unrestricted) then anyone who calls the SIP URI
      # <your-username>@telnyx.com will be connected to your Connection. You can also
      # choose to allow only calls that are originated on any Connections under your
      # account (internal).
      #
      # @see Telnyx::Models::CredentialConnection#sip_uri_calling_preference
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
      # @see Telnyx::Models::CredentialConnection#webhook_api_version
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
