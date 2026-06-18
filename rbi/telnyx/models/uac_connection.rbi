# typed: strong

module Telnyx
  module Models
    class UacConnection < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::UacConnection, Telnyx::Internal::AnyHash) }

      # Identifies the type of resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # Defaults to true
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      # `Latency` directs Telnyx to route media through the site with the lowest
      # round-trip time to the user's connection. Telnyx calculates this time using ICMP
      # ping messages. This can be disabled by specifying a site to handle all media.
      sig { returns(T.nilable(Telnyx::AnchorsiteOverride::TaggedSymbol)) }
      attr_reader :anchorsite_override

      sig do
        params(anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol).void
      end
      attr_writer :anchorsite_override

      # The uuid of the push credential for Android
      sig { returns(T.nilable(String)) }
      attr_accessor :android_push_credential_id

      # The authentication strategy used by this connection.
      sig do
        returns(T.nilable(Telnyx::UacConnection::Authentication::TaggedSymbol))
      end
      attr_reader :authentication

      sig do
        params(
          authentication: Telnyx::UacConnection::Authentication::OrSymbol
        ).void
      end
      attr_writer :authentication

      # Specifies if call cost webhooks should be sent for this connection.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_cost_in_webhooks

      sig { params(call_cost_in_webhooks: T::Boolean).void }
      attr_writer :call_cost_in_webhooks

      sig { returns(T.nilable(String)) }
      attr_reader :connection_name

      sig { params(connection_name: String).void }
      attr_writer :connection_name

      # ISO-8601 formatted date indicating when the resource was created.
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

      # External SIP peer settings used by Telnyx when registering to your PBX and
      # routing outbound calls.
      sig { returns(T.nilable(Telnyx::UacExternalSettings)) }
      attr_reader :external_uac_settings

      sig do
        params(external_uac_settings: Telnyx::UacExternalSettings::OrHash).void
      end
      attr_writer :external_uac_settings

      # The Telnyx-managed FQDN generated for the UAC connection.
      sig { returns(T.nilable(String)) }
      attr_reader :fqdn

      sig { params(fqdn: String).void }
      attr_writer :fqdn

      # The fixed outbound authentication mode used by UAC FQDN records.
      sig do
        returns(
          T.nilable(
            Telnyx::UacConnection::FqdnOutboundAuthentication::TaggedSymbol
          )
        )
      end
      attr_reader :fqdn_outbound_authentication

      sig do
        params(
          fqdn_outbound_authentication:
            Telnyx::UacConnection::FqdnOutboundAuthentication::OrSymbol
        ).void
      end
      attr_writer :fqdn_outbound_authentication

      # FQDN records managed automatically by the UAC connection lifecycle.
      sig { returns(T.nilable(T::Array[Telnyx::Fqdn])) }
      attr_reader :fqdns

      sig { params(fqdns: T::Array[Telnyx::Fqdn::OrHash]).void }
      attr_writer :fqdns

      sig { returns(T.nilable(Telnyx::UacInbound)) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::UacInbound::OrHash).void }
      attr_writer :inbound

      # Internal Telnyx-side settings for a UAC connection.
      sig { returns(T.nilable(Telnyx::UacInternalSettings)) }
      attr_reader :internal_uac_settings

      sig do
        params(internal_uac_settings: Telnyx::UacInternalSettings::OrHash).void
      end
      attr_writer :internal_uac_settings

      # The uuid of the push credential for Ios
      sig { returns(T.nilable(String)) }
      attr_accessor :ios_push_credential_id

      # Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams
      # of SIP Trunking calls. The feature is off unless enabled. You may define min and
      # max values in msec for customized buffering behaviors. Larger values add latency
      # but tolerate more jitter, while smaller values reduce latency but are more
      # sensitive to jitter and reordering.
      sig { returns(T.nilable(Telnyx::ConnectionJitterBuffer)) }
      attr_reader :jitter_buffer

      sig { params(jitter_buffer: Telnyx::ConnectionJitterBuffer::OrHash).void }
      attr_writer :jitter_buffer

      # Controls when noise suppression is applied to calls. When set to 'inbound',
      # noise suppression is applied to incoming audio. When set to 'outbound', it's
      # applied to outgoing audio. When set to 'both', it's applied in both directions.
      # When set to 'disabled', noise suppression is turned off.
      sig do
        returns(T.nilable(Telnyx::ConnectionNoiseSuppression::TaggedSymbol))
      end
      attr_reader :noise_suppression

      sig do
        params(
          noise_suppression: Telnyx::ConnectionNoiseSuppression::OrSymbol
        ).void
      end
      attr_writer :noise_suppression

      # Configuration options for noise suppression. These settings are stored
      # regardless of the noise_suppression value, but only take effect when
      # noise_suppression is not 'disabled'. If you disable noise suppression and later
      # re-enable it, the previously configured settings will be used.
      sig { returns(T.nilable(Telnyx::ConnectionNoiseSuppressionDetails)) }
      attr_reader :noise_suppression_details

      sig do
        params(
          noise_suppression_details:
            Telnyx::ConnectionNoiseSuppressionDetails::OrHash
        ).void
      end
      attr_writer :noise_suppression_details

      # Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      # if both are on the Telnyx network. If this is disabled, Telnyx will be able to
      # use T38 on just one leg of the call depending on each leg's settings.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :onnet_t38_passthrough_enabled

      sig { params(onnet_t38_passthrough_enabled: T::Boolean).void }
      attr_writer :onnet_t38_passthrough_enabled

      sig { returns(T.nilable(Telnyx::UacOutbound)) }
      attr_reader :outbound

      sig { params(outbound: Telnyx::UacOutbound::OrHash).void }
      attr_writer :outbound

      # The password to be used as part of the credentials. Must be 8 to 128 characters
      # long.
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # The most recently known SIP registration status for this UAC connection.
      sig { returns(T.nilable(String)) }
      attr_accessor :registration_status

      # ISO 8601 formatted date indicating when the registration status was last
      # updated.
      sig { returns(T.nilable(String)) }
      attr_accessor :registration_status_updated_at

      sig { returns(T.nilable(Telnyx::ConnectionRtcpSettings)) }
      attr_reader :rtcp_settings

      sig { params(rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash).void }
      attr_writer :rtcp_settings

      # This feature enables inbound SIP URI calls to your Credential Auth Connection.
      # If enabled for all (unrestricted) then anyone who calls the SIP URI
      # <your-username>@telnyx.com will be connected to your Connection. You can also
      # choose to allow only calls that are originated on any Connections under your
      # account (internal).
      sig do
        returns(
          T.nilable(
            Telnyx::UacConnection::SipUriCallingPreference::TaggedSymbol
          )
        )
      end
      attr_reader :sip_uri_calling_preference

      sig do
        params(
          sip_uri_calling_preference:
            Telnyx::UacConnection::SipUriCallingPreference::OrSymbol
        ).void
      end
      attr_writer :sip_uri_calling_preference

      # Tags associated with the connection.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # ISO-8601 formatted date indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      # The user name to be used as part of the credentials. Must be 4-32 characters
      # long and alphanumeric values only (no spaces or special characters). At least
      # one of the first 5 characters must be a letter.
      sig { returns(T.nilable(String)) }
      attr_reader :user_name

      sig { params(user_name: String).void }
      attr_writer :user_name

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig do
        returns(
          T.nilable(Telnyx::UacConnection::WebhookAPIVersion::TaggedSymbol)
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version:
            Telnyx::UacConnection::WebhookAPIVersion::OrSymbol
        ).void
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

      # A UAC (User Agent Client) Connection registers Telnyx to your PBX — the opposite
      # of a standard SIP trunk, where the PBX registers to Telnyx. Use UAC when your
      # PBX doesn’t support outbound SIP registration or you need Telnyx to maintain the
      # registration.
      sig do
        params(
          id: String,
          active: T::Boolean,
          anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
          android_push_credential_id: T.nilable(String),
          authentication: Telnyx::UacConnection::Authentication::OrSymbol,
          call_cost_in_webhooks: T::Boolean,
          connection_name: String,
          created_at: String,
          default_on_hold_comfort_noise_enabled: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          encode_contact_header_enabled: T::Boolean,
          encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
          external_uac_settings: Telnyx::UacExternalSettings::OrHash,
          fqdn: String,
          fqdn_outbound_authentication:
            Telnyx::UacConnection::FqdnOutboundAuthentication::OrSymbol,
          fqdns: T::Array[Telnyx::Fqdn::OrHash],
          inbound: Telnyx::UacInbound::OrHash,
          internal_uac_settings: Telnyx::UacInternalSettings::OrHash,
          ios_push_credential_id: T.nilable(String),
          jitter_buffer: Telnyx::ConnectionJitterBuffer::OrHash,
          noise_suppression: Telnyx::ConnectionNoiseSuppression::OrSymbol,
          noise_suppression_details:
            Telnyx::ConnectionNoiseSuppressionDetails::OrHash,
          onnet_t38_passthrough_enabled: T::Boolean,
          outbound: Telnyx::UacOutbound::OrHash,
          password: String,
          record_type: String,
          registration_status: T.nilable(String),
          registration_status_updated_at: T.nilable(String),
          rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
          sip_uri_calling_preference:
            Telnyx::UacConnection::SipUriCallingPreference::OrSymbol,
          tags: T::Array[String],
          updated_at: String,
          user_name: String,
          webhook_api_version:
            Telnyx::UacConnection::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer)
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the type of resource.
        id: nil,
        # Defaults to true
        active: nil,
        # `Latency` directs Telnyx to route media through the site with the lowest
        # round-trip time to the user's connection. Telnyx calculates this time using ICMP
        # ping messages. This can be disabled by specifying a site to handle all media.
        anchorsite_override: nil,
        # The uuid of the push credential for Android
        android_push_credential_id: nil,
        # The authentication strategy used by this connection.
        authentication: nil,
        # Specifies if call cost webhooks should be sent for this connection.
        call_cost_in_webhooks: nil,
        connection_name: nil,
        # ISO-8601 formatted date indicating when the resource was created.
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
        # External SIP peer settings used by Telnyx when registering to your PBX and
        # routing outbound calls.
        external_uac_settings: nil,
        # The Telnyx-managed FQDN generated for the UAC connection.
        fqdn: nil,
        # The fixed outbound authentication mode used by UAC FQDN records.
        fqdn_outbound_authentication: nil,
        # FQDN records managed automatically by the UAC connection lifecycle.
        fqdns: nil,
        inbound: nil,
        # Internal Telnyx-side settings for a UAC connection.
        internal_uac_settings: nil,
        # The uuid of the push credential for Ios
        ios_push_credential_id: nil,
        # Configuration options for Jitter Buffer. Enables Jitter Buffer for RTP streams
        # of SIP Trunking calls. The feature is off unless enabled. You may define min and
        # max values in msec for customized buffering behaviors. Larger values add latency
        # but tolerate more jitter, while smaller values reduce latency but are more
        # sensitive to jitter and reordering.
        jitter_buffer: nil,
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
        # The password to be used as part of the credentials. Must be 8 to 128 characters
        # long.
        password: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The most recently known SIP registration status for this UAC connection.
        registration_status: nil,
        # ISO 8601 formatted date indicating when the registration status was last
        # updated.
        registration_status_updated_at: nil,
        rtcp_settings: nil,
        # This feature enables inbound SIP URI calls to your Credential Auth Connection.
        # If enabled for all (unrestricted) then anyone who calls the SIP URI
        # <your-username>@telnyx.com will be connected to your Connection. You can also
        # choose to allow only calls that are originated on any Connections under your
        # account (internal).
        sip_uri_calling_preference: nil,
        # Tags associated with the connection.
        tags: nil,
        # ISO-8601 formatted date indicating when the resource was updated.
        updated_at: nil,
        # The user name to be used as part of the credentials. Must be 4-32 characters
        # long and alphanumeric values only (no spaces or special characters). At least
        # one of the first 5 characters must be a letter.
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
            id: String,
            active: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::TaggedSymbol,
            android_push_credential_id: T.nilable(String),
            authentication: Telnyx::UacConnection::Authentication::TaggedSymbol,
            call_cost_in_webhooks: T::Boolean,
            connection_name: String,
            created_at: String,
            default_on_hold_comfort_noise_enabled: T::Boolean,
            dtmf_type: Telnyx::DtmfType::TaggedSymbol,
            encode_contact_header_enabled: T::Boolean,
            encrypted_media: T.nilable(Telnyx::EncryptedMedia::TaggedSymbol),
            external_uac_settings: Telnyx::UacExternalSettings,
            fqdn: String,
            fqdn_outbound_authentication:
              Telnyx::UacConnection::FqdnOutboundAuthentication::TaggedSymbol,
            fqdns: T::Array[Telnyx::Fqdn],
            inbound: Telnyx::UacInbound,
            internal_uac_settings: Telnyx::UacInternalSettings,
            ios_push_credential_id: T.nilable(String),
            jitter_buffer: Telnyx::ConnectionJitterBuffer,
            noise_suppression: Telnyx::ConnectionNoiseSuppression::TaggedSymbol,
            noise_suppression_details:
              Telnyx::ConnectionNoiseSuppressionDetails,
            onnet_t38_passthrough_enabled: T::Boolean,
            outbound: Telnyx::UacOutbound,
            password: String,
            record_type: String,
            registration_status: T.nilable(String),
            registration_status_updated_at: T.nilable(String),
            rtcp_settings: Telnyx::ConnectionRtcpSettings,
            sip_uri_calling_preference:
              Telnyx::UacConnection::SipUriCallingPreference::TaggedSymbol,
            tags: T::Array[String],
            updated_at: String,
            user_name: String,
            webhook_api_version:
              Telnyx::UacConnection::WebhookAPIVersion::TaggedSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer)
          }
        )
      end
      def to_hash
      end

      # The authentication strategy used by this connection.
      module Authentication
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UacConnection::Authentication) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UAC_AUTHENTICATION =
          T.let(
            :"uac-authentication",
            Telnyx::UacConnection::Authentication::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::UacConnection::Authentication::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # The fixed outbound authentication mode used by UAC FQDN records.
      module FqdnOutboundAuthentication
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::UacConnection::FqdnOutboundAuthentication)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREDENTIAL_AUTHENTICATION =
          T.let(
            :"credential-authentication",
            Telnyx::UacConnection::FqdnOutboundAuthentication::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::UacConnection::FqdnOutboundAuthentication::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # This feature enables inbound SIP URI calls to your Credential Auth Connection.
      # If enabled for all (unrestricted) then anyone who calls the SIP URI
      # <your-username>@telnyx.com will be connected to your Connection. You can also
      # choose to allow only calls that are originated on any Connections under your
      # account (internal).
      module SipUriCallingPreference
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::UacConnection::SipUriCallingPreference)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Telnyx::UacConnection::SipUriCallingPreference::TaggedSymbol
          )
        UNRESTRICTED =
          T.let(
            :unrestricted,
            Telnyx::UacConnection::SipUriCallingPreference::TaggedSymbol
          )
        INTERNAL =
          T.let(
            :internal,
            Telnyx::UacConnection::SipUriCallingPreference::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::UacConnection::SipUriCallingPreference::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      module WebhookAPIVersion
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::UacConnection::WebhookAPIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 = T.let(:"1", Telnyx::UacConnection::WebhookAPIVersion::TaggedSymbol)
        V2 = T.let(:"2", Telnyx::UacConnection::WebhookAPIVersion::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::UacConnection::WebhookAPIVersion::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
