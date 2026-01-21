# typed: strong

module Telnyx
  module Models
    class CredentialConnectionUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::CredentialConnectionUpdateParams,
            Telnyx::Internal::AnyHash
          )
        end

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

      # Specifies if call cost webhooks should be sent for this connection.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :call_cost_in_webhooks

      sig { params(call_cost_in_webhooks: T::Boolean).void }
      attr_writer :call_cost_in_webhooks

      # A user-assigned name to help manage the connection.
      sig { returns(T.nilable(String)) }
      attr_reader :connection_name

      sig { params(connection_name: String).void }
      attr_writer :connection_name

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

      sig { returns(T.nilable(Telnyx::CredentialInbound)) }
      attr_reader :inbound

      sig { params(inbound: Telnyx::CredentialInbound::OrHash).void }
      attr_writer :inbound

      # The uuid of the push credential for Ios
      sig { returns(T.nilable(String)) }
      attr_accessor :ios_push_credential_id

      # Controls when noise suppression is applied to calls. When set to 'inbound',
      # noise suppression is applied to incoming audio. When set to 'outbound', it's
      # applied to outgoing audio. When set to 'both', it's applied in both directions.
      # When set to 'disabled', noise suppression is turned off.
      sig do
        returns(
          T.nilable(
            Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::OrSymbol
          )
        )
      end
      attr_reader :noise_suppression

      sig do
        params(
          noise_suppression:
            Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::OrSymbol
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

      sig { returns(T.nilable(Telnyx::CredentialOutbound)) }
      attr_reader :outbound

      sig { params(outbound: Telnyx::CredentialOutbound::OrHash).void }
      attr_writer :outbound

      # The password to be used as part of the credentials. Must be 8 to 128 characters
      # long.
      sig { returns(T.nilable(String)) }
      attr_reader :password

      sig { params(password: String).void }
      attr_writer :password

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
            Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference::OrSymbol
          )
        )
      end
      attr_reader :sip_uri_calling_preference

      sig do
        params(
          sip_uri_calling_preference:
            Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference::OrSymbol
        ).void
      end
      attr_writer :sip_uri_calling_preference

      # Tags associated with the connection.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :tags

      sig { params(tags: T::Array[String]).void }
      attr_writer :tags

      # The user name to be used as part of the credentials. Must be 4-32 characters
      # long and alphanumeric values only (no spaces or special characters).
      sig { returns(T.nilable(String)) }
      attr_reader :user_name

      sig { params(user_name: String).void }
      attr_writer :user_name

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig do
        returns(
          T.nilable(
            Telnyx::CredentialConnectionUpdateParams::WebhookAPIVersion::OrSymbol
          )
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version:
            Telnyx::CredentialConnectionUpdateParams::WebhookAPIVersion::OrSymbol
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
          inbound: Telnyx::CredentialInbound::OrHash,
          ios_push_credential_id: T.nilable(String),
          noise_suppression:
            Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::OrSymbol,
          noise_suppression_details:
            Telnyx::ConnectionNoiseSuppressionDetails::OrHash,
          onnet_t38_passthrough_enabled: T::Boolean,
          outbound: Telnyx::CredentialOutbound::OrHash,
          password: String,
          rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
          sip_uri_calling_preference:
            Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference::OrSymbol,
          tags: T::Array[String],
          user_name: String,
          webhook_api_version:
            Telnyx::CredentialConnectionUpdateParams::WebhookAPIVersion::OrSymbol,
          webhook_event_failover_url: T.nilable(String),
          webhook_event_url: String,
          webhook_timeout_secs: T.nilable(Integer),
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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
        # A user-assigned name to help manage the connection.
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
        # The password to be used as part of the credentials. Must be 8 to 128 characters
        # long.
        password: nil,
        rtcp_settings: nil,
        # This feature enables inbound SIP URI calls to your Credential Auth Connection.
        # If enabled for all (unrestricted) then anyone who calls the SIP URI
        # <your-username>@telnyx.com will be connected to your Connection. You can also
        # choose to allow only calls that are originated on any Connections under your
        # account (internal).
        sip_uri_calling_preference: nil,
        # Tags associated with the connection.
        tags: nil,
        # The user name to be used as part of the credentials. Must be 4-32 characters
        # long and alphanumeric values only (no spaces or special characters).
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
        webhook_timeout_secs: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            active: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
            android_push_credential_id: T.nilable(String),
            call_cost_in_webhooks: T::Boolean,
            connection_name: String,
            default_on_hold_comfort_noise_enabled: T::Boolean,
            dtmf_type: Telnyx::DtmfType::OrSymbol,
            encode_contact_header_enabled: T::Boolean,
            encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
            inbound: Telnyx::CredentialInbound,
            ios_push_credential_id: T.nilable(String),
            noise_suppression:
              Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::OrSymbol,
            noise_suppression_details:
              Telnyx::ConnectionNoiseSuppressionDetails,
            onnet_t38_passthrough_enabled: T::Boolean,
            outbound: Telnyx::CredentialOutbound,
            password: String,
            rtcp_settings: Telnyx::ConnectionRtcpSettings,
            sip_uri_calling_preference:
              Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference::OrSymbol,
            tags: T::Array[String],
            user_name: String,
            webhook_api_version:
              Telnyx::CredentialConnectionUpdateParams::WebhookAPIVersion::OrSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Controls when noise suppression is applied to calls. When set to 'inbound',
      # noise suppression is applied to incoming audio. When set to 'outbound', it's
      # applied to outgoing audio. When set to 'both', it's applied in both directions.
      # When set to 'disabled', noise suppression is turned off.
      module NoiseSuppression
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::CredentialConnectionUpdateParams::NoiseSuppression
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INBOUND =
          T.let(
            :inbound,
            Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::TaggedSymbol
          )
        OUTBOUND =
          T.let(
            :outbound,
            Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::TaggedSymbol
          )
        BOTH =
          T.let(
            :both,
            Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::TaggedSymbol
          )
        DISABLED =
          T.let(
            :disabled,
            Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CredentialConnectionUpdateParams::NoiseSuppression::TaggedSymbol
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
            T.all(
              Symbol,
              Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference::TaggedSymbol
          )
        UNRESTRICTED =
          T.let(
            :unrestricted,
            Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference::TaggedSymbol
          )
        INTERNAL =
          T.let(
            :internal,
            Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CredentialConnectionUpdateParams::SipUriCallingPreference::TaggedSymbol
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
            T.all(
              Symbol,
              Telnyx::CredentialConnectionUpdateParams::WebhookAPIVersion
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        V1 =
          T.let(
            :"1",
            Telnyx::CredentialConnectionUpdateParams::WebhookAPIVersion::TaggedSymbol
          )
        V2 =
          T.let(
            :"2",
            Telnyx::CredentialConnectionUpdateParams::WebhookAPIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CredentialConnectionUpdateParams::WebhookAPIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
