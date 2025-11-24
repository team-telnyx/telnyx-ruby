# typed: strong

module Telnyx
  module Models
    class FqdnConnection < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::FqdnConnection, Telnyx::Internal::AnyHash)
        end

      # A user-assigned name to help manage the connection.
      sig { returns(String) }
      attr_accessor :connection_name

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Defaults to true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # Indicates whether DTMF timestamp adjustment is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :adjust_dtmf_timestamp

      sig { params(adjust_dtmf_timestamp: T::Boolean).void }
      attr_writer :adjust_dtmf_timestamp

      # `Latency` directs Telnyx to route media through the site with the lowest
      # round-trip time to the user's connection. Telnyx calculates this time using ICMP
      # ping messages. This can be disabled by specifying a site to handle all media.
      sig { returns(T.nilable(Telnyx::AnchorsiteOverride::TaggedSymbol)) }
      attr_reader :anchorsite_override

      sig do
        params(anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol).void
      end
      attr_writer :anchorsite_override

      # Indicates whether call cost calculation is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_cost_enabled

      sig { params(call_cost_enabled: T::Boolean).void }
      attr_writer :call_cost_enabled

      # Specifies if call cost webhooks should be sent for this connection.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_cost_in_webhooks

      sig { params(call_cost_in_webhooks: T::Boolean).void }
      attr_writer :call_cost_in_webhooks

      # ISO 8601 formatted date indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # When enabled, Telnyx will generate comfort noise when you place the call on
      # hold. If disabled, you will need to generate comfort noise or on hold music to
      # avoid RTP timeout.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :default_on_hold_comfort_noise_enabled

      sig { params(default_on_hold_comfort_noise_enabled: T::Boolean).void }
      attr_writer :default_on_hold_comfort_noise_enabled

      # Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      # digits sent to Telnyx will be accepted in all formats.
      sig { returns(T.nilable(Telnyx::DtmfType::TaggedSymbol)) }
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
      sig { returns(T.nilable(Telnyx::EncryptedMedia::TaggedSymbol)) }
      attr_accessor :encrypted_media

      # Indicates whether DTMF duration should be ignored.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :ignore_dtmf_duration

      sig { params(ignore_dtmf_duration: T::Boolean).void }
      attr_writer :ignore_dtmf_duration

      # Indicates whether the mark bit should be ignored.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :ignore_mark_bit

      sig { params(ignore_mark_bit: T::Boolean).void }
      attr_writer :ignore_mark_bit

      sig { returns(T.nilable(Telnyx::InboundFqdn)) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::InboundFqdn::OrHash).void }
      attr_writer :inbound

      # The connection is enabled for Microsoft Teams Direct Routing.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :microsoft_teams_sbc

      sig { params(microsoft_teams_sbc: T::Boolean).void }
      attr_writer :microsoft_teams_sbc

      # Indicates whether noise suppression is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :noise_suppression

      sig { params(noise_suppression: T::Boolean).void }
      attr_writer :noise_suppression

      # Enable on-net T38 if you prefer that the sender and receiver negotiate T38
      # directly when both are on the Telnyx network. If this is disabled, Telnyx will
      # be able to use T38 on just one leg of the call according to each leg's settings.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :onnet_t38_passthrough_enabled

      sig { params(onnet_t38_passthrough_enabled: T::Boolean).void }
      attr_writer :onnet_t38_passthrough_enabled

      sig { returns(T.nilable(Telnyx::OutboundFqdn)) }
      attr_reader :outbound

      sig { params(outbound: Telnyx::OutboundFqdn::OrHash).void }
      attr_writer :outbound

      # The password for the FQDN connection.
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      sig { returns(T.nilable(Telnyx::ConnectionRtcpSettings)) }
      attr_reader :rtcp_settings

      sig { params(rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash).void }
      attr_writer :rtcp_settings

      # Defines if codecs should be passed on stream change.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :rtp_pass_codecs_on_stream_change

      sig { params(rtp_pass_codecs_on_stream_change: T::Boolean).void }
      attr_writer :rtp_pass_codecs_on_stream_change

      # Indicates whether normalized timestamps should be sent.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :send_normalized_timestamps

      sig { params(send_normalized_timestamps: T::Boolean).void }
      attr_writer :send_normalized_timestamps

      # Tags associated with the connection.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # Indicates whether third-party control is enabled.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :third_party_control_enabled

      sig { params(third_party_control_enabled: T::Boolean).void }
      attr_writer :third_party_control_enabled

      # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      # FQDN authentication.
      sig { returns(T.nilable(Telnyx::TransportProtocol::TaggedSymbol)) }
      attr_reader :transport_protocol

      sig do
        params(transport_protocol: Telnyx::TransportProtocol::OrSymbol).void
      end
      attr_writer :transport_protocol

      # The name for the TXT record associated with the FQDN connection.
      sig { returns(T.nilable(String)) }
      attr_reader :txt_name

      sig { params(txt_name: String).void }
      attr_writer :txt_name

      # The time to live for the TXT record associated with the FQDN connection.
      sig { returns(T.nilable(Integer)) }
      attr_reader :txt_ttl

      sig { params(txt_ttl: Integer).void }
      attr_writer :txt_ttl

      # The value for the TXT record associated with the FQDN connection.
      sig { returns(T.nilable(String)) }
      attr_reader :txt_value

      sig { params(txt_value: String).void }
      attr_writer :txt_value

      # ISO 8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # The username for the FQDN connection.
      sig { returns(T.nilable(String)) }
      attr_reader :user_name

      sig { params(user_name: String).void }
      attr_writer :user_name

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig { returns(T.nilable(Telnyx::WebhookAPIVersion::TaggedSymbol)) }
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
          id: String,
          active: T::Boolean,
          adjust_dtmf_timestamp: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          call_cost_enabled: T::Boolean,
          call_cost_in_webhooks: T::Boolean,
          created_at: String,
          default_on_hold_comfort_noise_enabled: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          encode_contact_header_enabled: T::Boolean,
          encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
          ignore_dtmf_duration: T::Boolean,
          ignore_mark_bit: T::Boolean,
          inbound: Telnyx::InboundFqdn::OrHash,
          microsoft_teams_sbc: T::Boolean,
          noise_suppression: T::Boolean,
          onnet_t38_passthrough_enabled: T::Boolean,
          outbound: Telnyx::OutboundFqdn::OrHash,
          password: String,
          record_type: String,
          rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
          rtp_pass_codecs_on_stream_change: T::Boolean,
          send_normalized_timestamps: T::Boolean,
          tags: T::Array[String],
          third_party_control_enabled: T::Boolean,
          transport_protocol: Telnyx::TransportProtocol::OrSymbol,
          txt_name: String,
          txt_ttl: Integer,
          txt_value: String,
          updated_at: String,
          user_name: String,
          webhook_api_version: Telnyx::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # A user-assigned name to help manage the connection.
        connection_name:,
        # Identifies the resource.
        id: nil,
        # Defaults to true
        active: nil,
        # Indicates whether DTMF timestamp adjustment is enabled.
        adjust_dtmf_timestamp: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # Indicates whether call cost calculation is enabled.
        call_cost_enabled: nil,
        # Specifies if call cost webhooks should be sent for this connection.
        call_cost_in_webhooks: nil,
        # ISO 8601 formatted date indicating when the resource was created.
        created_at: nil,
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
        # Indicates whether DTMF duration should be ignored.
        ignore_dtmf_duration: nil,
        # Indicates whether the mark bit should be ignored.
        ignore_mark_bit: nil,
        inbound: nil,
        # The connection is enabled for Microsoft Teams Direct Routing.
        microsoft_teams_sbc: nil,
        # Indicates whether noise suppression is enabled.
        noise_suppression: nil,
        # Enable on-net T38 if you prefer that the sender and receiver negotiate T38
        # directly when both are on the Telnyx network. If this is disabled, Telnyx will
        # be able to use T38 on just one leg of the call according to each leg's settings.
        onnet_t38_passthrough_enabled: nil,
        outbound: nil,
        # The password for the FQDN connection.
        password: nil,
        # Identifies the type of the resource.
        record_type: nil,
        rtcp_settings: nil,
        # Defines if codecs should be passed on stream change.
        rtp_pass_codecs_on_stream_change: nil,
        # Indicates whether normalized timestamps should be sent.
        send_normalized_timestamps: nil,
        # Tags associated with the connection.
        tags: nil,
        # Indicates whether third-party control is enabled.
        third_party_control_enabled: nil,
        # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
        # FQDN authentication.
        transport_protocol: nil,
        # The name for the TXT record associated with the FQDN connection.
        txt_name: nil,
        # The time to live for the TXT record associated with the FQDN connection.
        txt_ttl: nil,
        # The value for the TXT record associated with the FQDN connection.
        txt_value: nil,
        # ISO 8601 formatted date indicating when the resource was updated.
        updated_at: nil,
        # The username for the FQDN connection.
        user_name: nil,
        # Determines which webhook format will be used, Telnyx API v1 or v2.
        webhook_api_version: nil,
        # The failover URL where webhooks related to this connection will be sent if
        # sending to the primary URL fails. Must include a scheme, such as 'https'.
        webhook_event_failover_url: nil,
        # The URL where webhooks related to this connection will be sent. Must include a
        # scheme, such as 'https'.
        webhook_event_url: nil,
        # Specifies how many seconds to wait before timing out a webhook.
        webhook_timeout_secs: nil
      )
      end

      sig do
        override.returns(
          {
            connection_name: String,
            id: String,
            active: T::Boolean,
            adjust_dtmf_timestamp: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::TaggedSymbol,
            call_cost_enabled: T::Boolean,
            call_cost_in_webhooks: T::Boolean,
            created_at: String,
            default_on_hold_comfort_noise_enabled: T::Boolean,
            dtmf_type: Telnyx::DtmfType::TaggedSymbol,
            encode_contact_header_enabled: T::Boolean,
            encrypted_media: T.nilable(Telnyx::EncryptedMedia::TaggedSymbol),
            ignore_dtmf_duration: T::Boolean,
            ignore_mark_bit: T::Boolean,
            inbound: Telnyx::InboundFqdn,
            microsoft_teams_sbc: T::Boolean,
            noise_suppression: T::Boolean,
            onnet_t38_passthrough_enabled: T::Boolean,
            outbound: Telnyx::OutboundFqdn,
            password: String,
            record_type: String,
            rtcp_settings: Telnyx::ConnectionRtcpSettings,
            rtp_pass_codecs_on_stream_change: T::Boolean,
            send_normalized_timestamps: T::Boolean,
            tags: T::Array[String],
            third_party_control_enabled: T::Boolean,
            transport_protocol: Telnyx::TransportProtocol::TaggedSymbol,
            txt_name: String,
            txt_ttl: Integer,
            txt_value: String,
            updated_at: String,
            user_name: String,
            webhook_api_version: Telnyx::WebhookAPIVersion::TaggedSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end
    end
  end
end
