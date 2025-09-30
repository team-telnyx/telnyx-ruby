# typed: strong

module Telnyx
  module Models
    class InboundIP < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::InboundIP, Telnyx::Internal::AnyHash) }

      # This setting allows you to set the format with which the caller's number (ANI)
      # is sent for inbound phone calls.
      sig { returns(T.nilable(Telnyx::InboundIP::AniNumberFormat::OrSymbol)) }
      attr_reader :ani_number_format

      sig do
        params(
          ani_number_format: Telnyx::InboundIP::AniNumberFormat::OrSymbol
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

      # The default primary IP to use for the number. Only settable if the connection is
      # of IP authentication type. Value must be the ID of an authorized IP set on the
      # connection.
      sig { returns(T.nilable(String)) }
      attr_reader :default_primary_ip_id

      sig { params(default_primary_ip_id: String).void }
      attr_writer :default_primary_ip_id

      # Default routing method to be used when a number is associated with the
      # connection. Must be one of the routing method types or left blank, other values
      # are not allowed.
      sig do
        returns(T.nilable(Telnyx::InboundIP::DefaultRoutingMethod::OrSymbol))
      end
      attr_reader :default_routing_method

      sig do
        params(
          default_routing_method:
            Telnyx::InboundIP::DefaultRoutingMethod::OrSymbol
        ).void
      end
      attr_writer :default_routing_method

      # The default secondary IP to use for the number. Only settable if the connection
      # is of IP authentication type. Value must be the ID of an authorized IP set on
      # the connection.
      sig { returns(T.nilable(String)) }
      attr_reader :default_secondary_ip_id

      sig { params(default_secondary_ip_id: String).void }
      attr_writer :default_secondary_ip_id

      # The default tertiary IP to use for the number. Only settable if the connection
      # is of IP authentication type. Value must be the ID of an authorized IP set on
      # the connection.
      sig { returns(T.nilable(String)) }
      attr_reader :default_tertiary_ip_id

      sig { params(default_tertiary_ip_id: String).void }
      attr_writer :default_tertiary_ip_id

      sig { returns(T.nilable(Telnyx::InboundIP::DnisNumberFormat::OrSymbol)) }
      attr_reader :dnis_number_format

      sig do
        params(
          dnis_number_format: Telnyx::InboundIP::DnisNumberFormat::OrSymbol
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
      sig { returns(T.nilable(Telnyx::InboundIP::SipRegion::OrSymbol)) }
      attr_reader :sip_region

      sig { params(sip_region: Telnyx::InboundIP::SipRegion::OrSymbol).void }
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
          T.nilable(Telnyx::InboundIP::SipSubdomainReceiveSettings::OrSymbol)
        )
      end
      attr_reader :sip_subdomain_receive_settings

      sig do
        params(
          sip_subdomain_receive_settings:
            Telnyx::InboundIP::SipSubdomainReceiveSettings::OrSymbol
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
          ani_number_format: Telnyx::InboundIP::AniNumberFormat::OrSymbol,
          channel_limit: Integer,
          codecs: T::Array[String],
          default_primary_ip_id: String,
          default_routing_method:
            Telnyx::InboundIP::DefaultRoutingMethod::OrSymbol,
          default_secondary_ip_id: String,
          default_tertiary_ip_id: String,
          dnis_number_format: Telnyx::InboundIP::DnisNumberFormat::OrSymbol,
          generate_ringback_tone: T::Boolean,
          isup_headers_enabled: T::Boolean,
          prack_enabled: T::Boolean,
          shaken_stir_enabled: T::Boolean,
          sip_compact_headers_enabled: T::Boolean,
          sip_region: Telnyx::InboundIP::SipRegion::OrSymbol,
          sip_subdomain: String,
          sip_subdomain_receive_settings:
            Telnyx::InboundIP::SipSubdomainReceiveSettings::OrSymbol,
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
        # The default primary IP to use for the number. Only settable if the connection is
        # of IP authentication type. Value must be the ID of an authorized IP set on the
        # connection.
        default_primary_ip_id: nil,
        # Default routing method to be used when a number is associated with the
        # connection. Must be one of the routing method types or left blank, other values
        # are not allowed.
        default_routing_method: nil,
        # The default secondary IP to use for the number. Only settable if the connection
        # is of IP authentication type. Value must be the ID of an authorized IP set on
        # the connection.
        default_secondary_ip_id: nil,
        # The default tertiary IP to use for the number. Only settable if the connection
        # is of IP authentication type. Value must be the ID of an authorized IP set on
        # the connection.
        default_tertiary_ip_id: nil,
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
            ani_number_format: Telnyx::InboundIP::AniNumberFormat::OrSymbol,
            channel_limit: Integer,
            codecs: T::Array[String],
            default_primary_ip_id: String,
            default_routing_method:
              Telnyx::InboundIP::DefaultRoutingMethod::OrSymbol,
            default_secondary_ip_id: String,
            default_tertiary_ip_id: String,
            dnis_number_format: Telnyx::InboundIP::DnisNumberFormat::OrSymbol,
            generate_ringback_tone: T::Boolean,
            isup_headers_enabled: T::Boolean,
            prack_enabled: T::Boolean,
            shaken_stir_enabled: T::Boolean,
            sip_compact_headers_enabled: T::Boolean,
            sip_region: Telnyx::InboundIP::SipRegion::OrSymbol,
            sip_subdomain: String,
            sip_subdomain_receive_settings:
              Telnyx::InboundIP::SipSubdomainReceiveSettings::OrSymbol,
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
          T.type_alias { T.all(Symbol, Telnyx::InboundIP::AniNumberFormat) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLUS_E_164 =
          T.let(:"+E.164", Telnyx::InboundIP::AniNumberFormat::TaggedSymbol)
        E_164 =
          T.let(:"E.164", Telnyx::InboundIP::AniNumberFormat::TaggedSymbol)
        PLUS_E_164_NATIONAL =
          T.let(
            :"+E.164-national",
            Telnyx::InboundIP::AniNumberFormat::TaggedSymbol
          )
        E_164_NATIONAL =
          T.let(
            :"E.164-national",
            Telnyx::InboundIP::AniNumberFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InboundIP::AniNumberFormat::TaggedSymbol]
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
            T.all(Symbol, Telnyx::InboundIP::DefaultRoutingMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEQUENTIAL =
          T.let(
            :sequential,
            Telnyx::InboundIP::DefaultRoutingMethod::TaggedSymbol
          )
        ROUND_ROBIN =
          T.let(
            :"round-robin",
            Telnyx::InboundIP::DefaultRoutingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InboundIP::DefaultRoutingMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module DnisNumberFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::InboundIP::DnisNumberFormat) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLUS_E164 =
          T.let(:"+e164", Telnyx::InboundIP::DnisNumberFormat::TaggedSymbol)
        E164 = T.let(:e164, Telnyx::InboundIP::DnisNumberFormat::TaggedSymbol)
        NATIONAL =
          T.let(:national, Telnyx::InboundIP::DnisNumberFormat::TaggedSymbol)
        SIP_USERNAME =
          T.let(
            :sip_username,
            Telnyx::InboundIP::DnisNumberFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::InboundIP::DnisNumberFormat::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, Telnyx::InboundIP::SipRegion) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US = T.let(:US, Telnyx::InboundIP::SipRegion::TaggedSymbol)
        EUROPE = T.let(:Europe, Telnyx::InboundIP::SipRegion::TaggedSymbol)
        AUSTRALIA =
          T.let(:Australia, Telnyx::InboundIP::SipRegion::TaggedSymbol)

        sig do
          override.returns(T::Array[Telnyx::InboundIP::SipRegion::TaggedSymbol])
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
            T.all(Symbol, Telnyx::InboundIP::SipSubdomainReceiveSettings)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONLY_MY_CONNECTIONS =
          T.let(
            :only_my_connections,
            Telnyx::InboundIP::SipSubdomainReceiveSettings::TaggedSymbol
          )
        FROM_ANYONE =
          T.let(
            :from_anyone,
            Telnyx::InboundIP::SipSubdomainReceiveSettings::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::InboundIP::SipSubdomainReceiveSettings::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
