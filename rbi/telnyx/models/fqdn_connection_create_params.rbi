# typed: strong

module Telnyx
  module Models
    class FqdnConnectionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::FqdnConnectionCreateParams, Telnyx::Internal::AnyHash)
        end

      # A user-assigned name to help manage the connection.
      sig { returns(String) }
      attr_accessor :connection_name

      # Defaults to true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # `Latency` directs Telnyx to route media through the site with the lowest
      # round-trip time to the user's connection. Telnyx calculates this time using ICMP
      # ping messages. This can be disabled by specifying a site to handle all media.
      sig { returns(T.nilable(Telnyx::AnchorsiteOverride::OrSymbol)) }
      attr_reader :anchorsite_override

      sig do
        params(anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol).void
      end
      attr_writer :anchorsite_override

      # The uuid of the push credential for Android
      sig { returns(T.nilable(String)) }
      attr_accessor :android_push_credential_id

      # When enabled, Telnyx will generate comfort noise when you place the call on
      # hold. If disabled, you will need to generate comfort noise or on hold music to
      # avoid RTP timeout.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :default_on_hold_comfort_noise_enabled

      sig { params(default_on_hold_comfort_noise_enabled: T::Boolean).void }
      attr_writer :default_on_hold_comfort_noise_enabled

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      sig { returns(T.nilable(Telnyx::DtmfType::OrSymbol)) }
      attr_reader :dtmf_type

      sig { params(dtmf_type: Telnyx::DtmfType::OrSymbol).void }
      attr_writer :dtmf_type

      # Encode the SIP contact header sent by Telnyx to avoid issues for NAT or ALG
      # scenarios.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :encode_contact_header_enabled

      sig { params(encode_contact_header_enabled: T::Boolean).void }
      attr_writer :encode_contact_header_enabled

      # Enable use of SRTP for encryption. Cannot be set if the transport_portocol is
      # TLS.
      sig { returns(T.nilable(Telnyx::EncryptedMedia::OrSymbol)) }
      attr_accessor :encrypted_media

      sig { returns(T.nilable(Telnyx::InboundFqdn)) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::InboundFqdn::OrHash).void }
      attr_writer :inbound

      # The uuid of the push credential for Ios
      sig { returns(T.nilable(String)) }
      attr_accessor :ios_push_credential_id

      # When enabled, the connection will be created for Microsoft Teams Direct Routing.
      # A \*.mstsbc.telnyx.tech FQDN will be created for the connection automatically.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :microsoft_teams_sbc

      sig { params(microsoft_teams_sbc: T::Boolean).void }
      attr_writer :microsoft_teams_sbc

      # Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      # if both are on the Telnyx network. If this is disabled, Telnyx will be able to
      # use T38 on just one leg of the call depending on each leg's settings.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :onnet_t38_passthrough_enabled

      sig { params(onnet_t38_passthrough_enabled: T::Boolean).void }
      attr_writer :onnet_t38_passthrough_enabled

      sig { returns(T.nilable(Telnyx::OutboundFqdn)) }
      attr_reader :outbound

      sig { params(outbound: Telnyx::OutboundFqdn::OrHash).void }
      attr_writer :outbound

      sig { returns(T.nilable(Telnyx::ConnectionRtcpSettings)) }
      attr_reader :rtcp_settings

      sig { params(rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash).void }
      attr_writer :rtcp_settings

      # Tags associated with the connection.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      # FQDN authentication.
      sig { returns(T.nilable(Telnyx::TransportProtocol::OrSymbol)) }
      attr_reader :transport_protocol

      sig do
        params(transport_protocol: Telnyx::TransportProtocol::OrSymbol).void
      end
      attr_writer :transport_protocol

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig { returns(T.nilable(Telnyx::WebhookAPIVersion::OrSymbol)) }
      attr_reader :webhook_api_version

      sig do
        params(webhook_api_version: Telnyx::WebhookAPIVersion::OrSymbol).void
      end
      attr_writer :webhook_api_version

      # The failover URL where webhooks related to this connection will be sent if
      # sending to the primary URL fails. Must include a scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_accessor :webhook_event_failover_url

      # The URL where webhooks related to this connection will be sent. Must include a
      # scheme, such as 'https'.
      sig { returns(T.nilable(String)) }
      attr_reader :webhook_event_url

      sig { params(webhook_event_url: String).void }
      attr_writer :webhook_event_url

      # Specifies how many seconds to wait before timing out a webhook.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :webhook_timeout_secs

      sig do
        params(
          connection_name: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          android_push_credential_id: T.nilable(String),
          default_on_hold_comfort_noise_enabled: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          encode_contact_header_enabled: T::Boolean,
          encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
          inbound: Telnyx::InboundFqdn::OrHash,
          ios_push_credential_id: T.nilable(String),
          microsoft_teams_sbc: T::Boolean,
          onnet_t38_passthrough_enabled: T::Boolean,
          outbound: Telnyx::OutboundFqdn::OrHash,
          rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
          tags: T::Array[String],
          transport_protocol: Telnyx::TransportProtocol::OrSymbol,
          webhook_api_version: Telnyx::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A user-assigned name to help manage the connection.
        connection_name:,
        # Defaults to true
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # The uuid of the push credential for Android
        android_push_credential_id: nil,
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
        # When enabled, the connection will be created for Microsoft Teams Direct Routing.
        # A \*.mstsbc.telnyx.tech FQDN will be created for the connection automatically.
        microsoft_teams_sbc: nil,
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

      sig do
        override.returns(
          {
            connection_name: String,
            active: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
            android_push_credential_id: T.nilable(String),
            default_on_hold_comfort_noise_enabled: T::Boolean,
            dtmf_type: Telnyx::DtmfType::OrSymbol,
            encode_contact_header_enabled: T::Boolean,
            encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
            inbound: Telnyx::InboundFqdn,
            ios_push_credential_id: T.nilable(String),
            microsoft_teams_sbc: T::Boolean,
            onnet_t38_passthrough_enabled: T::Boolean,
            outbound: Telnyx::OutboundFqdn,
            rtcp_settings: Telnyx::ConnectionRtcpSettings,
            tags: T::Array[String],
            transport_protocol: Telnyx::TransportProtocol::OrSymbol,
            webhook_api_version: Telnyx::WebhookAPIVersion::OrSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
