# typed: strong

module Telnyx
  module Models
    class InboundFqdn < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::InboundFqdn, Telnyx::Internal::AnyHash) }

      # This setting allows you to set the format with which the caller's number (ANI)
      # is sent for inbound phone calls.
      sig { returns(T.nilable(Telnyx::InboundFqdn::AniNumberFormat::OrSymbol)) }
      attr_reader :ani_number_format

      sig do
        params(
          ani_number_format: Telnyx::InboundFqdn::AniNumberFormat::OrSymbol
        ).void
      end
      attr_writer :ani_number_format

      # When set, this will limit the total number of inbound calls to phone numbers
      # associated with this connection.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :channel_limit

      # Defines the list of codecs that Telnyx will send for inbound calls to a specific
      # number on your portal account, in priority order. This only works when the
      # Connection the number is assigned to uses Media Handling mode: default. OPUS and
      # H.264 codecs are available only when using TCP or TLS transport for SIP.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :codecs

      sig { params(codecs: T::Array[String]).void }
      attr_writer :codecs

      # The default primary FQDN to use for the number. Only settable if the connection
      # is of FQDN type. Value must be the ID of an FQDN set on the connection.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_primary_fqdn_id

      # Default routing method to be used when a number is associated with the
      # connection. Must be one of the routing method types or null, other values are
      # not allowed.
      sig do
        returns(T.nilable(Telnyx::InboundFqdn::DefaultRoutingMethod::OrSymbol))
      end
      attr_accessor :default_routing_method

      # The default secondary FQDN to use for the number. Only settable if the
      # connection is of FQDN type. Value must be the ID of an FQDN set on the
      # connection.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_secondary_fqdn_id

      # The default tertiary FQDN to use for the number. Only settable if the connection
      # is of FQDN type. Value must be the ID of an FQDN set on the connection.
      sig { returns(T.nilable(String)) }
      attr_accessor :default_tertiary_fqdn_id

      sig do
        returns(T.nilable(Telnyx::InboundFqdn::DnisNumberFormat::OrSymbol))
      end
      attr_reader :dnis_number_format

      sig do
        params(
          dnis_number_format: Telnyx::InboundFqdn::DnisNumberFormat::OrSymbol
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
      sig { returns(T.nilable(Telnyx::InboundFqdn::SipRegion::OrSymbol)) }
      attr_reader :sip_region

      sig { params(sip_region: Telnyx::InboundFqdn::SipRegion::OrSymbol).void }
      attr_writer :sip_region

      # Specifies a subdomain that can be used to receive Inbound calls to a Connection,
      # in the same way a phone number is used, from a SIP endpoint. Example: the
      # subdomain "example.sip.telnyx.com" can be called from any SIP endpoint by using
      # the SIP URI "sip:@example.sip.telnyx.com" where the user part can be any
      # alphanumeric value. Please note TLS encrypted calls are not allowed for
      # subdomain calls.
      sig { returns(T.nilable(String)) }
      attr_accessor :sip_subdomain

      # This option can be enabled to receive calls from: "Anyone" (any SIP endpoint in
      # the public Internet) or "Only my connections" (any connection assigned to the
      # same Telnyx user).
      sig do
        returns(
          T.nilable(Telnyx::InboundFqdn::SipSubdomainReceiveSettings::OrSymbol)
        )
      end
      attr_reader :sip_subdomain_receive_settings

      sig do
        params(
          sip_subdomain_receive_settings:
            Telnyx::InboundFqdn::SipSubdomainReceiveSettings::OrSymbol
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
          ani_number_format: Telnyx::InboundFqdn::AniNumberFormat::OrSymbol,
          channel_limit: T.nilable(Integer),
          codecs: T::Array[String],
          default_primary_fqdn_id: T.nilable(String),
          default_routing_method:
            T.nilable(Telnyx::InboundFqdn::DefaultRoutingMethod::OrSymbol),
          default_secondary_fqdn_id: T.nilable(String),
          default_tertiary_fqdn_id: T.nilable(String),
          dnis_number_format: Telnyx::InboundFqdn::DnisNumberFormat::OrSymbol,
          generate_ringback_tone: T::Boolean,
          isup_headers_enabled: T::Boolean,
          prack_enabled: T::Boolean,
          shaken_stir_enabled: T::Boolean,
          sip_compact_headers_enabled: T::Boolean,
          sip_region: Telnyx::InboundFqdn::SipRegion::OrSymbol,
          sip_subdomain: T.nilable(String),
          sip_subdomain_receive_settings:
            Telnyx::InboundFqdn::SipSubdomainReceiveSettings::OrSymbol,
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
        # The default primary FQDN to use for the number. Only settable if the connection
        # is of FQDN type. Value must be the ID of an FQDN set on the connection.
        default_primary_fqdn_id: nil,
        # Default routing method to be used when a number is associated with the
        # connection. Must be one of the routing method types or null, other values are
        # not allowed.
        default_routing_method: nil,
        # The default secondary FQDN to use for the number. Only settable if the
        # connection is of FQDN type. Value must be the ID of an FQDN set on the
        # connection.
        default_secondary_fqdn_id: nil,
        # The default tertiary FQDN to use for the number. Only settable if the connection
        # is of FQDN type. Value must be the ID of an FQDN set on the connection.
        default_tertiary_fqdn_id: nil,
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
            ani_number_format: Telnyx::InboundFqdn::AniNumberFormat::OrSymbol,
            channel_limit: T.nilable(Integer),
            codecs: T::Array[String],
            default_primary_fqdn_id: T.nilable(String),
            default_routing_method:
              T.nilable(Telnyx::InboundFqdn::DefaultRoutingMethod::OrSymbol),
            default_secondary_fqdn_id: T.nilable(String),
            default_tertiary_fqdn_id: T.nilable(String),
            dnis_number_format: Telnyx::InboundFqdn::DnisNumberFormat::OrSymbol,
            generate_ringback_tone: T::Boolean,
            isup_headers_enabled: T::Boolean,
            prack_enabled: T::Boolean,
            shaken_stir_enabled: T::Boolean,
            sip_compact_headers_enabled: T::Boolean,
            sip_region: Telnyx::InboundFqdn::SipRegion::OrSymbol,
            sip_subdomain: T.nilable(String),
            sip_subdomain_receive_settings:
              Telnyx::InboundFqdn::SipSubdomainReceiveSettings::OrSymbol,
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
          T.type_alias { T.all(Symbol, Telnyx::InboundFqdn::AniNumberFormat) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLUS_E_164 =
          T.let(:"+E.164", Telnyx::InboundFqdn::AniNumberFormat::TaggedSymbol)
        E_164 =
          T.let(:"E.164", Telnyx::InboundFqdn::AniNumberFormat::TaggedSymbol)
        PLUS_E_164_NATIONAL =
          T.let(
            :"+E.164-national",
            Telnyx::InboundFqdn::AniNumberFormat::TaggedSymbol
          )
        E_164_NATIONAL =
          T.let(
            :"E.164-national",
            Telnyx::InboundFqdn::AniNumberFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InboundFqdn::AniNumberFormat::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Default routing method to be used when a number is associated with the
      # connection. Must be one of the routing method types or null, other values are
      # not allowed.
      module DefaultRoutingMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::InboundFqdn::DefaultRoutingMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEQUENTIAL =
          T.let(
            :sequential,
            Telnyx::InboundFqdn::DefaultRoutingMethod::TaggedSymbol
          )
        ROUND_ROBIN =
          T.let(
            :"round-robin",
            Telnyx::InboundFqdn::DefaultRoutingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InboundFqdn::DefaultRoutingMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module DnisNumberFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundFqdn::DnisNumberFormat) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLUS_E164 =
          T.let(:"+e164", Telnyx::InboundFqdn::DnisNumberFormat::TaggedSymbol)
        E164 = T.let(:e164, Telnyx::InboundFqdn::DnisNumberFormat::TaggedSymbol)
        NATIONAL =
          T.let(:national, Telnyx::InboundFqdn::DnisNumberFormat::TaggedSymbol)
        SIP_USERNAME =
          T.let(
            :sip_username,
            Telnyx::InboundFqdn::DnisNumberFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InboundFqdn::DnisNumberFormat::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, Telnyx::InboundFqdn::SipRegion) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US = T.let(:US, Telnyx::InboundFqdn::SipRegion::TaggedSymbol)
        EUROPE = T.let(:Europe, Telnyx::InboundFqdn::SipRegion::TaggedSymbol)
        AUSTRALIA =
          T.let(:Australia, Telnyx::InboundFqdn::SipRegion::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::InboundFqdn::SipRegion::TaggedSymbol]
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
            T.all(Symbol, Telnyx::InboundFqdn::SipSubdomainReceiveSettings)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONLY_MY_CONNECTIONS =
          T.let(
            :only_my_connections,
            Telnyx::InboundFqdn::SipSubdomainReceiveSettings::TaggedSymbol
          )
        FROM_ANYONE =
          T.let(
            :from_anyone,
            Telnyx::InboundFqdn::SipSubdomainReceiveSettings::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::InboundFqdn::SipSubdomainReceiveSettings::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
