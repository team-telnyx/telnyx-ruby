# typed: strong

module Telnyx
  module Models
    class IPConnectionCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::IPConnectionCreateParams, Telnyx::Internal::AnyHash)
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

      sig { returns(T.nilable(Telnyx::IPConnectionCreateParams::Inbound)) }
      attr_reader :inbound

      sig do
        params(inbound: Telnyx::IPConnectionCreateParams::Inbound::OrHash).void
      end
      attr_writer :inbound

      # The uuid of the push credential for Ios
      sig { returns(T.nilable(String)) }
      attr_accessor :ios_push_credential_id

      # Enable on-net T38 if you prefer the sender and receiver negotiating T38 directly
      # if both are on the Telnyx network. If this is disabled, Telnyx will be able to
      # use T38 on just one leg of the call depending on each leg's settings.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :onnet_t38_passthrough_enabled

      sig { params(onnet_t38_passthrough_enabled: T::Boolean).void }
      attr_writer :onnet_t38_passthrough_enabled

      sig { returns(T.nilable(Telnyx::OutboundIP)) }
      attr_reader :outbound

      sig { params(outbound: Telnyx::OutboundIP::OrHash).void }
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
      sig do
        returns(
          T.nilable(
            Telnyx::IPConnectionCreateParams::TransportProtocol::OrSymbol
          )
        )
      end
      attr_reader :transport_protocol

      sig do
        params(
          transport_protocol:
            Telnyx::IPConnectionCreateParams::TransportProtocol::OrSymbol
        ).void
      end
      attr_writer :transport_protocol

      # Determines which webhook format will be used, Telnyx API v1 or v2.
      sig do
        returns(
          T.nilable(
            Telnyx::IPConnectionCreateParams::WebhookAPIVersion::OrSymbol
          )
        )
      end
      attr_reader :webhook_api_version

      sig do
        params(
          webhook_api_version:
            Telnyx::IPConnectionCreateParams::WebhookAPIVersion::OrSymbol
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
          connection_name: String,
          default_on_hold_comfort_noise_enabled: T::Boolean,
          dtmf_type: Telnyx::DtmfType::OrSymbol,
          encode_contact_header_enabled: T::Boolean,
          encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
          inbound: Telnyx::IPConnectionCreateParams::Inbound::OrHash,
          ios_push_credential_id: T.nilable(String),
          onnet_t38_passthrough_enabled: T::Boolean,
          outbound: Telnyx::OutboundIP::OrHash,
          rtcp_settings: Telnyx::ConnectionRtcpSettings::OrHash,
          tags: T::Array[String],
          transport_protocol:
            Telnyx::IPConnectionCreateParams::TransportProtocol::OrSymbol,
          webhook_api_version:
            Telnyx::IPConnectionCreateParams::WebhookAPIVersion::OrSymbol,
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
            active: T::Boolean,
            anchorsite_override: Telnyx::AnchorsiteOverride::OrSymbol,
            android_push_credential_id: T.nilable(String),
            connection_name: String,
            default_on_hold_comfort_noise_enabled: T::Boolean,
            dtmf_type: Telnyx::DtmfType::OrSymbol,
            encode_contact_header_enabled: T::Boolean,
            encrypted_media: T.nilable(Telnyx::EncryptedMedia::OrSymbol),
            inbound: Telnyx::IPConnectionCreateParams::Inbound,
            ios_push_credential_id: T.nilable(String),
            onnet_t38_passthrough_enabled: T::Boolean,
            outbound: Telnyx::OutboundIP,
            rtcp_settings: Telnyx::ConnectionRtcpSettings,
            tags: T::Array[String],
            transport_protocol:
              Telnyx::IPConnectionCreateParams::TransportProtocol::OrSymbol,
            webhook_api_version:
              Telnyx::IPConnectionCreateParams::WebhookAPIVersion::OrSymbol,
            webhook_event_failover_url: T.nilable(String),
            webhook_event_url: String,
            webhook_timeout_secs: T.nilable(Integer),
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Inbound < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::IPConnectionCreateParams::Inbound,
              Telnyx::Internal::AnyHash
            )
          end

        # This setting allows you to set the format with which the caller's number (ANI)
        # is sent for inbound phone calls.
        sig do
          returns(
            T.nilable(
              Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::OrSymbol
            )
          )
        end
        attr_reader :ani_number_format

        sig do
          params(
            ani_number_format:
              Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::OrSymbol
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
              Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod::OrSymbol
            )
          )
        end
        attr_reader :default_routing_method

        sig do
          params(
            default_routing_method:
              Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod::OrSymbol
          ).void
        end
        attr_writer :default_routing_method

        sig do
          returns(
            T.nilable(
              Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::OrSymbol
            )
          )
        end
        attr_reader :dnis_number_format

        sig do
          params(
            dnis_number_format:
              Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::OrSymbol
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

        # Defaults to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :sip_compact_headers_enabled

        sig { params(sip_compact_headers_enabled: T::Boolean).void }
        attr_writer :sip_compact_headers_enabled

        # Selects which `sip_region` to receive inbound calls from. If null, the default
        # region (US) will be used.
        sig do
          returns(
            T.nilable(
              Telnyx::IPConnectionCreateParams::Inbound::SipRegion::OrSymbol
            )
          )
        end
        attr_reader :sip_region

        sig do
          params(
            sip_region:
              Telnyx::IPConnectionCreateParams::Inbound::SipRegion::OrSymbol
          ).void
        end
        attr_writer :sip_region

        # Specifies a subdomain that can be used to receive Inbound calls to a Connection,
        # in the same way a phone number is used, from a SIP endpoint. Example: the
        # subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
        # the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
        # alphanumeric value. Please note TLS encrypted calls are not allowed for
        # subdomain calls.
        sig { returns(T.nilable(String)) }
        attr_reader :sip_subdomain

        sig { params(sip_subdomain: String).void }
        attr_writer :sip_subdomain

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        sig do
          returns(
            T.nilable(
              Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
            )
          )
        end
        attr_reader :sip_subdomain_receive_settings

        sig do
          params(
            sip_subdomain_receive_settings:
              Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol
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
              Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::OrSymbol,
            channel_limit: Integer,
            codecs: T::Array[String],
            default_routing_method:
              Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod::OrSymbol,
            dnis_number_format:
              Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::OrSymbol,
            generate_ringback_tone: T::Boolean,
            isup_headers_enabled: T::Boolean,
            prack_enabled: T::Boolean,
            shaken_stir_enabled: T::Boolean,
            sip_compact_headers_enabled: T::Boolean,
            sip_region:
              Telnyx::IPConnectionCreateParams::Inbound::SipRegion::OrSymbol,
            sip_subdomain: String,
            sip_subdomain_receive_settings:
              Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol,
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
          # Defaults to true.
          sip_compact_headers_enabled: nil,
          # Selects which `sip_region` to receive inbound calls from. If null, the default
          # region (US) will be used.
          sip_region: nil,
          # Specifies a subdomain that can be used to receive Inbound calls to a Connection,
          # in the same way a phone number is used, from a SIP endpoint. Example: the
          # subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
          # the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
          # alphanumeric value. Please note TLS encrypted calls are not allowed for
          # subdomain calls.
          sip_subdomain: nil,
          # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
          # the public Internet) or "Only my connections" (any connection assigned to the
          # same Telnyx user).
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
                Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::OrSymbol,
              channel_limit: Integer,
              codecs: T::Array[String],
              default_routing_method:
                Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod::OrSymbol,
              dnis_number_format:
                Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::OrSymbol,
              generate_ringback_tone: T::Boolean,
              isup_headers_enabled: T::Boolean,
              prack_enabled: T::Boolean,
              shaken_stir_enabled: T::Boolean,
              sip_compact_headers_enabled: T::Boolean,
              sip_region:
                Telnyx::IPConnectionCreateParams::Inbound::SipRegion::OrSymbol,
              sip_subdomain: String,
              sip_subdomain_receive_settings:
                Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings::OrSymbol,
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
                Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLUS_E_164 =
            T.let(
              :"+E.164",
              Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::TaggedSymbol
            )
          E_164 =
            T.let(
              :"E.164",
              Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::TaggedSymbol
            )
          PLUS_E_164_NATIONAL =
            T.let(
              :"+E.164-national",
              Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::TaggedSymbol
            )
          E_164_NATIONAL =
            T.let(
              :"E.164-national",
              Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::IPConnectionCreateParams::Inbound::AniNumberFormat::TaggedSymbol
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
                Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SEQUENTIAL =
            T.let(
              :sequential,
              Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod::TaggedSymbol
            )
          ROUND_ROBIN =
            T.let(
              :"round-robin",
              Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::IPConnectionCreateParams::Inbound::DefaultRoutingMethod::TaggedSymbol
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
                Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PLUS_E164 =
            T.let(
              :"+e164",
              Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::TaggedSymbol
            )
          E164 =
            T.let(
              :e164,
              Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::TaggedSymbol
            )
          NATIONAL =
            T.let(
              :national,
              Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::TaggedSymbol
            )
          SIP_USERNAME =
            T.let(
              :sip_username,
              Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::IPConnectionCreateParams::Inbound::DnisNumberFormat::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Selects which `sip_region` to receive inbound calls from. If null, the default
        # region (US) will be used.
        module SipRegion
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::IPConnectionCreateParams::Inbound::SipRegion
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          US =
            T.let(
              :US,
              Telnyx::IPConnectionCreateParams::Inbound::SipRegion::TaggedSymbol
            )
          EUROPE =
            T.let(
              :Europe,
              Telnyx::IPConnectionCreateParams::Inbound::SipRegion::TaggedSymbol
            )
          AUSTRALIA =
            T.let(
              :Australia,
              Telnyx::IPConnectionCreateParams::Inbound::SipRegion::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::IPConnectionCreateParams::Inbound::SipRegion::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
        # the public Internet) or "Only my connections" (any connection assigned to the
        # same Telnyx user).
        module SipSubdomainReceiveSettings
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ONLY_MY_CONNECTIONS =
            T.let(
              :only_my_connections,
              Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )
          FROM_ANYONE =
            T.let(
              :from_anyone,
              Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::IPConnectionCreateParams::Inbound::SipSubdomainReceiveSettings::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      # One of UDP, TLS, or TCP. Applies only to connections with IP authentication or
      # FQDN authentication.
      module TransportProtocol
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::IPConnectionCreateParams::TransportProtocol)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        UDP =
          T.let(
            :UDP,
            Telnyx::IPConnectionCreateParams::TransportProtocol::TaggedSymbol
          )
        TCP =
          T.let(
            :TCP,
            Telnyx::IPConnectionCreateParams::TransportProtocol::TaggedSymbol
          )
        TLS =
          T.let(
            :TLS,
            Telnyx::IPConnectionCreateParams::TransportProtocol::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::IPConnectionCreateParams::TransportProtocol::TaggedSymbol
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
            T.all(Symbol, Telnyx::IPConnectionCreateParams::WebhookAPIVersion)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WEBHOOK_API_VERSION_1 =
          T.let(
            :"1",
            Telnyx::IPConnectionCreateParams::WebhookAPIVersion::TaggedSymbol
          )
        WEBHOOK_API_VERSION_2 =
          T.let(
            :"2",
            Telnyx::IPConnectionCreateParams::WebhookAPIVersion::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::IPConnectionCreateParams::WebhookAPIVersion::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
