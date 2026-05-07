# typed: strong

module Telnyx
  module Models
    class UacConnectionCreateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::UacConnectionCreateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # A UAC (User Agent Client) Connection registers Telnyx to your PBX — the opposite
      # of a standard SIP trunk, where the PBX registers to Telnyx. Use UAC when your
      # PBX doesn’t support outbound SIP registration or you need Telnyx to maintain the
      # registration.
      sig do
        returns(T.nilable(Telnyx::Models::UacConnectionCreateResponse::Data))
      end
      attr_reader :data

      sig do
        params(
          data: Telnyx::Models::UacConnectionCreateResponse::Data::OrHash
        ).void
      end
      attr_writer :data

      sig do
        params(
          data: Telnyx::Models::UacConnectionCreateResponse::Data::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A UAC (User Agent Client) Connection registers Telnyx to your PBX — the opposite
        # of a standard SIP trunk, where the PBX registers to Telnyx. Use UAC when your
        # PBX doesn’t support outbound SIP registration or you need Telnyx to maintain the
        # registration.
        data: nil
      )
      end

      sig do
        override.returns(
          { data: Telnyx::Models::UacConnectionCreateResponse::Data }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::UacConnectionCreateResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

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
          returns(
            T.nilable(
              Telnyx::Models::UacConnectionCreateResponse::Data::Authentication::TaggedSymbol
            )
          )
        end
        attr_reader :authentication

        sig do
          params(
            authentication:
              Telnyx::Models::UacConnectionCreateResponse::Data::Authentication::OrSymbol
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
        sig do
          returns(
            T.nilable(
              Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings
            )
          )
        end
        attr_reader :external_uac_settings

        sig do
          params(
            external_uac_settings:
              Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::OrHash
          ).void
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
              Telnyx::Models::UacConnectionCreateResponse::Data::FqdnOutboundAuthentication::TaggedSymbol
            )
          )
        end
        attr_reader :fqdn_outbound_authentication

        sig do
          params(
            fqdn_outbound_authentication:
              Telnyx::Models::UacConnectionCreateResponse::Data::FqdnOutboundAuthentication::OrSymbol
          ).void
        end
        attr_writer :fqdn_outbound_authentication

        # FQDN records managed automatically by the UAC connection lifecycle.
        sig { returns(T.nilable(T::Array[Telnyx::Fqdn])) }
        attr_reader :fqdns

        sig { params(fqdns: T::Array[Telnyx::Fqdn::OrHash]).void }
        attr_writer :fqdns

        sig do
          returns(
            T.nilable(
              Telnyx::Models::UacConnectionCreateResponse::Data::Inbound
            )
          )
        end
        attr_reader :inbound

        sig do
          params(
            inbound:
              Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::OrHash
          ).void
        end
        attr_writer :inbound

        # Internal Telnyx-side settings for a UAC connection.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::UacConnectionCreateResponse::Data::InternalUacSettings
            )
          )
        end
        attr_reader :internal_uac_settings

        sig do
          params(
            internal_uac_settings:
              Telnyx::Models::UacConnectionCreateResponse::Data::InternalUacSettings::OrHash
          ).void
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

        sig do
          params(jitter_buffer: Telnyx::ConnectionJitterBuffer::OrHash).void
        end
        attr_writer :jitter_buffer

        # Controls when noise suppression is applied to calls. When set to 'inbound',
        # noise suppression is applied to incoming audio. When set to 'outbound', it's
        # applied to outgoing audio. When set to 'both', it's applied in both directions.
        # When set to 'disabled', noise suppression is turned off.
        sig do
          returns(
            T.nilable(
              Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::TaggedSymbol
            )
          )
        end
        attr_reader :noise_suppression

        sig do
          params(
            noise_suppression:
              Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::OrSymbol
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

        sig do
          returns(
            T.nilable(
              Telnyx::Models::UacConnectionCreateResponse::Data::Outbound
            )
          )
        end
        attr_reader :outbound

        sig do
          params(
            outbound:
              Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::OrHash
          ).void
        end
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

        sig do
          params(rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash).void
        end
        attr_writer :rtcp_settings

        # This feature enables inbound SIP URI calls to your Credential Auth Connection.
        # If enabled for all (unrestricted) then anyone who calls the SIP URI
        # <your-username>@telnyx.com will be connected to your Connection. You can also
        # choose to allow only calls that are originated on any Connections under your
        # account (internal).
        sig do
          returns(
            T.nilable(
              Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference::TaggedSymbol
            )
          )
        end
        attr_reader :sip_uri_calling_preference

        sig do
          params(
            sip_uri_calling_preference:
              Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference::OrSymbol
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
            T.nilable(
              Telnyx::Models::UacConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
            )
          )
        end
        attr_reader :webhook_api_version

        sig do
          params(
            webhook_api_version:
              Telnyx::Models::UacConnectionCreateResponse::Data::WebhookAPIVersion::OrSymbol
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
            authentication:
              Telnyx::Models::UacConnectionCreateResponse::Data::Authentication::OrSymbol,
            call_cost_in_webhooks: T::Boolean,
            connection_name: String,
            created_at: String,
            default_on_hold_comfort_noise_enabled: T::Boolean,
            dtmf_type: Telnyx::DtmfType::OrSymbol,
            encode_contact_header_enabled: T::Boolean,
            encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
            external_uac_settings:
              Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::OrHash,
            fqdn: String,
            fqdn_outbound_authentication:
              Telnyx::Models::UacConnectionCreateResponse::Data::FqdnOutboundAuthentication::OrSymbol,
            fqdns: T::Array[Telnyx::Fqdn::OrHash],
            inbound:
              Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::OrHash,
            internal_uac_settings:
              Telnyx::Models::UacConnectionCreateResponse::Data::InternalUacSettings::OrHash,
            ios_push_credential_id: T.nilable(String),
            jitter_buffer: Telnyx::ConnectionJitterBuffer::OrHash,
            noise_suppression:
              Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::OrSymbol,
            noise_suppression_details:
              Telnyx::ConnectionNoiseSuppressionDetails::OrHash,
            onnet_t38_passthrough_enabled: T::Boolean,
            outbound:
              Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::OrHash,
            password: String,
            record_type: String,
            registration_status: T.nilable(String),
            registration_status_updated_at: T.nilable(String),
            rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
            sip_uri_calling_preference:
              Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference::OrSymbol,
            tags: T::Array[String],
            updated_at: String,
            user_name: String,
            webhook_api_version:
              Telnyx::Models::UacConnectionCreateResponse::Data::WebhookAPIVersion::OrSymbol,
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
              authentication:
                Telnyx::Models::UacConnectionCreateResponse::Data::Authentication::TaggedSymbol,
              call_cost_in_webhooks: T::Boolean,
              connection_name: String,
              created_at: String,
              default_on_hold_comfort_noise_enabled: T::Boolean,
              dtmf_type: Telnyx::DtmfType::TaggedSymbol,
              encode_contact_header_enabled: T::Boolean,
              encrypted_media: T.nilable(Telnyx::EncryptedMedia::TaggedSymbol),
              external_uac_settings:
                Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings,
              fqdn: String,
              fqdn_outbound_authentication:
                Telnyx::Models::UacConnectionCreateResponse::Data::FqdnOutboundAuthentication::TaggedSymbol,
              fqdns: T::Array[Telnyx::Fqdn],
              inbound:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound,
              internal_uac_settings:
                Telnyx::Models::UacConnectionCreateResponse::Data::InternalUacSettings,
              ios_push_credential_id: T.nilable(String),
              jitter_buffer: Telnyx::ConnectionJitterBuffer,
              noise_suppression:
                Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::TaggedSymbol,
              noise_suppression_details:
                Telnyx::ConnectionNoiseSuppressionDetails,
              onnet_t38_passthrough_enabled: T::Boolean,
              outbound:
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound,
              password: String,
              record_type: String,
              registration_status: T.nilable(String),
              registration_status_updated_at: T.nilable(String),
              rtcp_settings: Telnyx::ConnectionRtcpSettings,
              sip_uri_calling_preference:
                Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference::TaggedSymbol,
              tags: T::Array[String],
              updated_at: String,
              user_name: String,
              webhook_api_version:
                Telnyx::Models::UacConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol,
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
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::UacConnectionCreateResponse::Data::Authentication
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UAC_AUTHENTICATION =
            T.let(
              :"uac-authentication",
              Telnyx::Models::UacConnectionCreateResponse::Data::Authentication::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::UacConnectionCreateResponse::Data::Authentication::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class ExternalUacSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # The authentication username used in SIP digest authentication. If not set, the
          # Username value will be used.
          sig { returns(T.nilable(String)) }
          attr_accessor :auth_username

          # The registration interval, in seconds, indicating how often the system refreshes
          # the SIP registration with the external SIP peer.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :expiration_sec

          # The user portion of the SIP From header used in outbound requests. This controls
          # the caller identity presented to the external SIP peer.
          sig { returns(T.nilable(String)) }
          attr_accessor :from_user

          # An optional SIP proxy used to route outbound requests before reaching the
          # external SIP peer.
          sig { returns(T.nilable(String)) }
          attr_accessor :outbound_proxy

          # The SIP password used for digest authentication with the external SIP peer.
          sig { returns(T.nilable(String)) }
          attr_reader :password

          sig { params(password: String).void }
          attr_writer :password

          # The SIP proxy address of the external SIP peer used for registrations and
          # outbound call routing.
          sig { returns(T.nilable(String)) }
          attr_reader :proxy

          sig { params(proxy: String).void }
          attr_writer :proxy

          # The transport protocol used for SIP signaling when communicating with the
          # external SIP peer. One of UDP, TLS, or TCP.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::Transport::TaggedSymbol
              )
            )
          end
          attr_accessor :transport

          # The SIP username used to authenticate with the external SIP peer for
          # registrations and outbound calls. Must start with a letter or number and contain
          # only letters, numbers, hyphens, and underscores.
          sig { returns(T.nilable(String)) }
          attr_reader :username

          sig { params(username: String).void }
          attr_writer :username

          # External SIP peer settings used by Telnyx when registering to your PBX and
          # routing outbound calls.
          sig do
            params(
              auth_username: T.nilable(String),
              expiration_sec: T.nilable(Integer),
              from_user: T.nilable(String),
              outbound_proxy: T.nilable(String),
              password: String,
              proxy: String,
              transport:
                T.nilable(
                  Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::Transport::OrSymbol
                ),
              username: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The authentication username used in SIP digest authentication. If not set, the
            # Username value will be used.
            auth_username: nil,
            # The registration interval, in seconds, indicating how often the system refreshes
            # the SIP registration with the external SIP peer.
            expiration_sec: nil,
            # The user portion of the SIP From header used in outbound requests. This controls
            # the caller identity presented to the external SIP peer.
            from_user: nil,
            # An optional SIP proxy used to route outbound requests before reaching the
            # external SIP peer.
            outbound_proxy: nil,
            # The SIP password used for digest authentication with the external SIP peer.
            password: nil,
            # The SIP proxy address of the external SIP peer used for registrations and
            # outbound call routing.
            proxy: nil,
            # The transport protocol used for SIP signaling when communicating with the
            # external SIP peer. One of UDP, TLS, or TCP.
            transport: nil,
            # The SIP username used to authenticate with the external SIP peer for
            # registrations and outbound calls. Must start with a letter or number and contain
            # only letters, numbers, hyphens, and underscores.
            username: nil
          )
          end

          sig do
            override.returns(
              {
                auth_username: T.nilable(String),
                expiration_sec: T.nilable(Integer),
                from_user: T.nilable(String),
                outbound_proxy: T.nilable(String),
                password: String,
                proxy: String,
                transport:
                  T.nilable(
                    Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::Transport::TaggedSymbol
                  ),
                username: String
              }
            )
          end
          def to_hash
          end

          # The transport protocol used for SIP signaling when communicating with the
          # external SIP peer. One of UDP, TLS, or TCP.
          module Transport
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::Transport
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            UDP =
              T.let(
                :UDP,
                Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::Transport::TaggedSymbol
              )
            TLS =
              T.let(
                :TLS,
                Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::Transport::TaggedSymbol
              )
            TCP =
              T.let(
                :TCP,
                Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::Transport::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::UacConnectionCreateResponse::Data::ExternalUacSettings::Transport::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # The fixed outbound authentication mode used by UAC FQDN records.
        module FqdnOutboundAuthentication
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::UacConnectionCreateResponse::Data::FqdnOutboundAuthentication
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CREDENTIAL_AUTHENTICATION =
            T.let(
              :"credential-authentication",
              Telnyx::Models::UacConnectionCreateResponse::Data::FqdnOutboundAuthentication::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::UacConnectionCreateResponse::Data::FqdnOutboundAuthentication::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Inbound < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound,
                Telnyx::Internal::AnyHash
              )
            end

          # This setting allows you to set the format with which the caller's number (ANI)
          # is sent for inbound phone calls.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::TaggedSymbol
              )
            )
          end
          attr_reader :ani_number_format

          sig do
            params(
              ani_number_format:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::OrSymbol
            ).void
          end
          attr_writer :ani_number_format

          # When set, this will limit the total number of inbound calls to phone numbers
          # associated with this connection.
          sig { returns(T.nilable(Integer)) }
          attr_reader :channel_limit

          sig { params(channel_limit: Integer).void }
          attr_writer :channel_limit

          # Defines the list of codecs that Telnyx will send for inbound calls to a specific
          # number on your portal account, in priority order. This only works when the
          # Connection the number is assigned to uses Media Handling mode: default. OPUS and
          # H.264 codecs are available only when using TCP or TLS transport for SIP.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :codecs

          sig { params(codecs: T::Array[String]).void }
          attr_writer :codecs

          # Default routing method to be used when a number is associated with the
          # connection. Must be one of the routing method types or left blank, other values
          # are not allowed.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DefaultRoutingMethod::TaggedSymbol
              )
            )
          end
          attr_reader :default_routing_method

          sig do
            params(
              default_routing_method:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DefaultRoutingMethod::OrSymbol
            ).void
          end
          attr_writer :default_routing_method

          sig do
            returns(
              T.nilable(
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::TaggedSymbol
              )
            )
          end
          attr_reader :dnis_number_format

          sig do
            params(
              dnis_number_format:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::OrSymbol
            ).void
          end
          attr_writer :dnis_number_format

          # Generate ringback tone through 183 session progress message with early media.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :generate_ringback_tone

          sig { params(generate_ringback_tone: T::Boolean).void }
          attr_writer :generate_ringback_tone

          # When set, inbound phone calls will receive ISUP parameters via SIP headers.
          # (Only when available and only when using TCP or TLS transport.)
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :isup_headers_enabled

          sig { params(isup_headers_enabled: T::Boolean).void }
          attr_writer :isup_headers_enabled

          # Enable PRACK messages as defined in RFC3262.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :prack_enabled

          sig { params(prack_enabled: T::Boolean).void }
          attr_writer :prack_enabled

          # When enabled the SIP Connection will receive the Identity header with
          # Shaken/Stir data in the SIP INVITE message of inbound calls, even when using UDP
          # transport.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :shaken_stir_enabled

          sig { params(shaken_stir_enabled: T::Boolean).void }
          attr_writer :shaken_stir_enabled

          # When enabled, allows multiple devices to ring simultaneously on incoming calls.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SimultaneousRinging::TaggedSymbol
              )
            )
          end
          attr_reader :simultaneous_ringing

          sig do
            params(
              simultaneous_ringing:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SimultaneousRinging::OrSymbol
            ).void
          end
          attr_writer :simultaneous_ringing

          # Defaults to true.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :sip_compact_headers_enabled

          sig { params(sip_compact_headers_enabled: T::Boolean).void }
          attr_writer :sip_compact_headers_enabled

          # The Telnyx-generated SIP subdomain for this UAC connection.
          sig { returns(T.nilable(String)) }
          attr_reader :sip_subdomain

          sig { params(sip_subdomain: String).void }
          attr_writer :sip_subdomain

          # Controls which SIP URI callers may reach this connection.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
              )
            )
          end
          attr_reader :sip_subdomain_receive_settings

          sig do
            params(
              sip_subdomain_receive_settings:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SipSubdomainReceiveSettings::OrSymbol
            ).void
          end
          attr_writer :sip_subdomain_receive_settings

          # Time(sec) before aborting if connection is not made.
          sig { returns(T.nilable(Integer)) }
          attr_reader :timeout_1xx_secs

          sig { params(timeout_1xx_secs: Integer).void }
          attr_writer :timeout_1xx_secs

          # Time(sec) before aborting if call is unanswered (min: 1, max: 600).
          sig { returns(T.nilable(Integer)) }
          attr_reader :timeout_2xx_secs

          sig { params(timeout_2xx_secs: Integer).void }
          attr_writer :timeout_2xx_secs

          sig do
            params(
              ani_number_format:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::OrSymbol,
              channel_limit: Integer,
              codecs: T::Array[String],
              default_routing_method:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DefaultRoutingMethod::OrSymbol,
              dnis_number_format:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::OrSymbol,
              generate_ringback_tone: T::Boolean,
              isup_headers_enabled: T::Boolean,
              prack_enabled: T::Boolean,
              shaken_stir_enabled: T::Boolean,
              simultaneous_ringing:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SimultaneousRinging::OrSymbol,
              sip_compact_headers_enabled: T::Boolean,
              sip_subdomain: String,
              sip_subdomain_receive_settings:
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SipSubdomainReceiveSettings::OrSymbol,
              timeout_1xx_secs: Integer,
              timeout_2xx_secs: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # This setting allows you to set the format with which the caller's number (ANI)
            # is sent for inbound phone calls.
            ani_number_format: nil,
            # When set, this will limit the total number of inbound calls to phone numbers
            # associated with this connection.
            channel_limit: nil,
            # Defines the list of codecs that Telnyx will send for inbound calls to a specific
            # number on your portal account, in priority order. This only works when the
            # Connection the number is assigned to uses Media Handling mode: default. OPUS and
            # H.264 codecs are available only when using TCP or TLS transport for SIP.
            codecs: nil,
            # Default routing method to be used when a number is associated with the
            # connection. Must be one of the routing method types or left blank, other values
            # are not allowed.
            default_routing_method: nil,
            dnis_number_format: nil,
            # Generate ringback tone through 183 session progress message with early media.
            generate_ringback_tone: nil,
            # When set, inbound phone calls will receive ISUP parameters via SIP headers.
            # (Only when available and only when using TCP or TLS transport.)
            isup_headers_enabled: nil,
            # Enable PRACK messages as defined in RFC3262.
            prack_enabled: nil,
            # When enabled the SIP Connection will receive the Identity header with
            # Shaken/Stir data in the SIP INVITE message of inbound calls, even when using UDP
            # transport.
            shaken_stir_enabled: nil,
            # When enabled, allows multiple devices to ring simultaneously on incoming calls.
            simultaneous_ringing: nil,
            # Defaults to true.
            sip_compact_headers_enabled: nil,
            # The Telnyx-generated SIP subdomain for this UAC connection.
            sip_subdomain: nil,
            # Controls which SIP URI callers may reach this connection.
            sip_subdomain_receive_settings: nil,
            # Time(sec) before aborting if connection is not made.
            timeout_1xx_secs: nil,
            # Time(sec) before aborting if call is unanswered (min: 1, max: 600).
            timeout_2xx_secs: nil
          )
          end

          sig do
            override.returns(
              {
                ani_number_format:
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::TaggedSymbol,
                channel_limit: Integer,
                codecs: T::Array[String],
                default_routing_method:
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DefaultRoutingMethod::TaggedSymbol,
                dnis_number_format:
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::TaggedSymbol,
                generate_ringback_tone: T::Boolean,
                isup_headers_enabled: T::Boolean,
                prack_enabled: T::Boolean,
                shaken_stir_enabled: T::Boolean,
                simultaneous_ringing:
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SimultaneousRinging::TaggedSymbol,
                sip_compact_headers_enabled: T::Boolean,
                sip_subdomain: String,
                sip_subdomain_receive_settings:
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SipSubdomainReceiveSettings::TaggedSymbol,
                timeout_1xx_secs: Integer,
                timeout_2xx_secs: Integer
              }
            )
          end
          def to_hash
          end

          # This setting allows you to set the format with which the caller's number (ANI)
          # is sent for inbound phone calls.
          module AniNumberFormat
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLUS_E_164 =
              T.let(
                :"+E.164",
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::TaggedSymbol
              )
            E_164 =
              T.let(
                :"E.164",
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::TaggedSymbol
              )
            PLUS_E_164_NATIONAL =
              T.let(
                :"+E.164-national",
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::TaggedSymbol
              )
            E_164_NATIONAL =
              T.let(
                :"E.164-national",
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::AniNumberFormat::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Default routing method to be used when a number is associated with the
          # connection. Must be one of the routing method types or left blank, other values
          # are not allowed.
          module DefaultRoutingMethod
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DefaultRoutingMethod
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SEQUENTIAL =
              T.let(
                :sequential,
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DefaultRoutingMethod::TaggedSymbol
              )
            ROUND_ROBIN =
              T.let(
                :"round-robin",
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DefaultRoutingMethod::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DefaultRoutingMethod::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module DnisNumberFormat
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PLUS_E164 =
              T.let(
                :"+e164",
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::TaggedSymbol
              )
            E164 =
              T.let(
                :e164,
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::TaggedSymbol
              )
            NATIONAL =
              T.let(
                :national,
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::TaggedSymbol
              )
            SIP_USERNAME =
              T.let(
                :sip_username,
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::DnisNumberFormat::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # When enabled, allows multiple devices to ring simultaneously on incoming calls.
          module SimultaneousRinging
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SimultaneousRinging
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DISABLED =
              T.let(
                :disabled,
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SimultaneousRinging::TaggedSymbol
              )
            ENABLED =
              T.let(
                :enabled,
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SimultaneousRinging::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SimultaneousRinging::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Controls which SIP URI callers may reach this connection.
          module SipSubdomainReceiveSettings
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SipSubdomainReceiveSettings
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ONLY_MY_CONNECTIONS =
              T.let(
                :only_my_connections,
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
              )
            FROM_ANYONE =
              T.let(
                :from_anyone,
                Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::UacConnectionCreateResponse::Data::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class InternalUacSettings < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::UacConnectionCreateResponse::Data::InternalUacSettings,
                Telnyx::Internal::AnyHash
              )
            end

          # The SIP URI that Telnyx will call when handling an inbound request from the
          # external peer. Do not include a `sip:` prefix. The value must be in the format
          # `userinfo@[subdomain.]sip.telnyx.com` or
          # `userinfo@[subdomain.]sipdev.telnyx.com`; the userinfo portion may contain only
          # letters, digits, hyphens, and underscores.
          sig { returns(T.nilable(String)) }
          attr_reader :destination_uri

          sig { params(destination_uri: String).void }
          attr_writer :destination_uri

          # Internal Telnyx-side settings for a UAC connection.
          sig { params(destination_uri: String).returns(T.attached_class) }
          def self.new(
            # The SIP URI that Telnyx will call when handling an inbound request from the
            # external peer. Do not include a `sip:` prefix. The value must be in the format
            # `userinfo@[subdomain.]sip.telnyx.com` or
            # `userinfo@[subdomain.]sipdev.telnyx.com`; the userinfo portion may contain only
            # letters, digits, hyphens, and underscores.
            destination_uri: nil
          )
          end

          sig { override.returns({ destination_uri: String }) }
          def to_hash
          end
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
                Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::TaggedSymbol
            )
          BOTH =
            T.let(
              :both,
              Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::TaggedSymbol
            )
          DISABLED =
            T.let(
              :disabled,
              Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::UacConnectionCreateResponse::Data::NoiseSuppression::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        class Outbound < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound,
                Telnyx::Internal::AnyHash
              )
            end

          # Set a phone number as the ani_override value to override caller id number on
          # outbound calls.
          sig { returns(T.nilable(String)) }
          attr_reader :ani_override

          sig { params(ani_override: String).void }
          attr_writer :ani_override

          # Specifies when we apply your ani_override setting. Only applies when
          # ani_override is not blank.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType::TaggedSymbol
              )
            )
          end
          attr_reader :ani_override_type

          sig do
            params(
              ani_override_type:
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType::OrSymbol
            ).void
          end
          attr_writer :ani_override_type

          # Forces all SIP calls originated on this connection to be "parked" instead of
          # "bridged" to the destination specified on the URI. Parked calls will return
          # ringback to the caller and will await for a Call Control command to define which
          # action will be taken next.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :call_parking_enabled

          # When set, this will limit the total number of outbound calls to phone numbers
          # associated with this connection.
          sig { returns(T.nilable(Integer)) }
          attr_reader :channel_limit

          sig { params(channel_limit: Integer).void }
          attr_writer :channel_limit

          # Generate ringback tone through 183 session progress message with early media.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :generate_ringback_tone

          sig { params(generate_ringback_tone: T::Boolean).void }
          attr_writer :generate_ringback_tone

          # When set, ringback will not wait for indication before sending ringback tone to
          # calling party.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :instant_ringback_enabled

          sig { params(instant_ringback_enabled: T::Boolean).void }
          attr_writer :instant_ringback_enabled

          # A 2-character country code specifying the country whose national dialing rules
          # should be used. For example, if set to `US` then any US number can be dialed
          # without preprending +1 to the number. When left blank, Telnyx will try US and GB
          # dialing rules, in that order, by default.
          sig { returns(T.nilable(String)) }
          attr_reader :localization

          sig { params(localization: String).void }
          attr_writer :localization

          # Identifies the associated outbound voice profile.
          sig { returns(T.nilable(String)) }
          attr_reader :outbound_voice_profile_id

          sig { params(outbound_voice_profile_id: String).void }
          attr_writer :outbound_voice_profile_id

          # This setting only affects connections with Fax-type Outbound Voice Profiles. The
          # setting dictates whether or not Telnyx sends a t.38 reinvite.<br/><br/> By
          # default, Telnyx will send the re-invite. If set to `customer`, the caller is
          # expected to send the t.38 reinvite.
          sig do
            returns(
              T.nilable(
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
              )
            )
          end
          attr_reader :t38_reinvite_source

          sig do
            params(
              t38_reinvite_source:
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::OrSymbol
            ).void
          end
          attr_writer :t38_reinvite_source

          sig do
            params(
              ani_override: String,
              ani_override_type:
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType::OrSymbol,
              call_parking_enabled: T.nilable(T::Boolean),
              channel_limit: Integer,
              generate_ringback_tone: T::Boolean,
              instant_ringback_enabled: T::Boolean,
              localization: String,
              outbound_voice_profile_id: String,
              t38_reinvite_source:
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(
            # Set a phone number as the ani_override value to override caller id number on
            # outbound calls.
            ani_override: nil,
            # Specifies when we apply your ani_override setting. Only applies when
            # ani_override is not blank.
            ani_override_type: nil,
            # Forces all SIP calls originated on this connection to be "parked" instead of
            # "bridged" to the destination specified on the URI. Parked calls will return
            # ringback to the caller and will await for a Call Control command to define which
            # action will be taken next.
            call_parking_enabled: nil,
            # When set, this will limit the total number of outbound calls to phone numbers
            # associated with this connection.
            channel_limit: nil,
            # Generate ringback tone through 183 session progress message with early media.
            generate_ringback_tone: nil,
            # When set, ringback will not wait for indication before sending ringback tone to
            # calling party.
            instant_ringback_enabled: nil,
            # A 2-character country code specifying the country whose national dialing rules
            # should be used. For example, if set to `US` then any US number can be dialed
            # without preprending +1 to the number. When left blank, Telnyx will try US and GB
            # dialing rules, in that order, by default.
            localization: nil,
            # Identifies the associated outbound voice profile.
            outbound_voice_profile_id: nil,
            # This setting only affects connections with Fax-type Outbound Voice Profiles. The
            # setting dictates whether or not Telnyx sends a t.38 reinvite.<br/><br/> By
            # default, Telnyx will send the re-invite. If set to `customer`, the caller is
            # expected to send the t.38 reinvite.
            t38_reinvite_source: nil
          )
          end

          sig do
            override.returns(
              {
                ani_override: String,
                ani_override_type:
                  Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType::TaggedSymbol,
                call_parking_enabled: T.nilable(T::Boolean),
                channel_limit: Integer,
                generate_ringback_tone: T::Boolean,
                instant_ringback_enabled: T::Boolean,
                localization: String,
                outbound_voice_profile_id: String,
                t38_reinvite_source:
                  Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
              }
            )
          end
          def to_hash
          end

          # Specifies when we apply your ani_override setting. Only applies when
          # ani_override is not blank.
          module AniOverrideType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            ALWAYS =
              T.let(
                :always,
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType::TaggedSymbol
              )
            NORMAL =
              T.let(
                :normal,
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType::TaggedSymbol
              )
            EMERGENCY =
              T.let(
                :emergency,
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::AniOverrideType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # This setting only affects connections with Fax-type Outbound Voice Profiles. The
          # setting dictates whether or not Telnyx sends a t.38 reinvite.<br/><br/> By
          # default, Telnyx will send the re-invite. If set to `customer`, the caller is
          # expected to send the t.38 reinvite.
          module T38ReinviteSource
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TELNYX =
              T.let(
                :telnyx,
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
              )
            CUSTOMER =
              T.let(
                :customer,
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
              )
            DISABLED =
              T.let(
                :disabled,
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
              )
            PASSTHRU =
              T.let(
                :passthru,
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
              )
            CALLER_PASSTHRU =
              T.let(
                :"caller-passthru",
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
              )
            CALLEE_PASSTHRU =
              T.let(
                :"callee-passthru",
                Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Models::UacConnectionCreateResponse::Data::Outbound::T38ReinviteSource::TaggedSymbol
                ]
              )
            end
            def self.values
            end
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
                Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DISABLED =
            T.let(
              :disabled,
              Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference::TaggedSymbol
            )
          UNRESTRICTED =
            T.let(
              :unrestricted,
              Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference::TaggedSymbol
            )
          INTERNAL =
            T.let(
              :internal,
              Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::UacConnectionCreateResponse::Data::SipUriCallingPreference::TaggedSymbol
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
                Telnyx::Models::UacConnectionCreateResponse::Data::WebhookAPIVersion
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          V1 =
            T.let(
              :"1",
              Telnyx::Models::UacConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
            )
          V2 =
            T.let(
              :"2",
              Telnyx::Models::UacConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::UacConnectionCreateResponse::Data::WebhookAPIVersion::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
