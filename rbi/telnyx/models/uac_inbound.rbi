# typed: strong

module Telnyx
  module Models
    class UacInbound < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::UacInbound, Telnyx::Internal::AnyHash) }

      # This setting allows you to set the format with which the caller's number (ANI)
      # is sent for inbound phone calls.
      sig do
        returns(T.nilable(Telnyx::UacInbound::AniNumberFormat::TaggedSymbol))
      end
      attr_reader :ani_number_format

      sig do
        params(
          ani_number_format: Telnyx::UacInbound::AniNumberFormat::OrSymbol
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
          T.nilable(Telnyx::UacInbound::DefaultRoutingMethod::TaggedSymbol)
        )
      end
      attr_reader :default_routing_method

      sig do
        params(
          default_routing_method:
            Telnyx::UacInbound::DefaultRoutingMethod::OrSymbol
        ).void
      end
      attr_writer :default_routing_method

      sig do
        returns(T.nilable(Telnyx::UacInbound::DnisNumberFormat::TaggedSymbol))
      end
      attr_reader :dnis_number_format

      sig do
        params(
          dnis_number_format: Telnyx::UacInbound::DnisNumberFormat::OrSymbol
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
          T.nilable(Telnyx::UacInbound::SimultaneousRinging::TaggedSymbol)
        )
      end
      attr_reader :simultaneous_ringing

      sig do
        params(
          simultaneous_ringing:
            Telnyx::UacInbound::SimultaneousRinging::OrSymbol
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
            Telnyx::UacInbound::SipSubdomainReceiveSettings::TaggedSymbol
          )
        )
      end
      attr_reader :sip_subdomain_receive_settings

      sig do
        params(
          sip_subdomain_receive_settings:
            Telnyx::UacInbound::SipSubdomainReceiveSettings::OrSymbol
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
          ani_number_format: Telnyx::UacInbound::AniNumberFormat::OrSymbol,
          channel_limit: Integer,
          codecs: T::Array[String],
          default_routing_method:
            Telnyx::UacInbound::DefaultRoutingMethod::OrSymbol,
          dnis_number_format: Telnyx::UacInbound::DnisNumberFormat::OrSymbol,
          generate_ringback_tone: T::Boolean,
          isup_headers_enabled: T::Boolean,
          prack_enabled: T::Boolean,
          shaken_stir_enabled: T::Boolean,
          simultaneous_ringing:
            Telnyx::UacInbound::SimultaneousRinging::OrSymbol,
          sip_compact_headers_enabled: T::Boolean,
          sip_subdomain: String,
          sip_subdomain_receive_settings:
            Telnyx::UacInbound::SipSubdomainReceiveSettings::OrSymbol,
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
              Telnyx::UacInbound::AniNumberFormat::TaggedSymbol,
            channel_limit: Integer,
            codecs: T::Array[String],
            default_routing_method:
              Telnyx::UacInbound::DefaultRoutingMethod::TaggedSymbol,
            dnis_number_format:
              Telnyx::UacInbound::DnisNumberFormat::TaggedSymbol,
            generate_ringback_tone: T::Boolean,
            isup_headers_enabled: T::Boolean,
            prack_enabled: T::Boolean,
            shaken_stir_enabled: T::Boolean,
            simultaneous_ringing:
              Telnyx::UacInbound::SimultaneousRinging::TaggedSymbol,
            sip_compact_headers_enabled: T::Boolean,
            sip_subdomain: String,
            sip_subdomain_receive_settings:
              Telnyx::UacInbound::SipSubdomainReceiveSettings::TaggedSymbol,
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
          T.type_alias { T.all(Symbol, Telnyx::UacInbound::AniNumberFormat) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLUS_E_164 =
          T.let(:"+E.164", Telnyx::UacInbound::AniNumberFormat::TaggedSymbol)
        E_164 =
          T.let(:"E.164", Telnyx::UacInbound::AniNumberFormat::TaggedSymbol)
        PLUS_E_164_NATIONAL =
          T.let(
            :"+E.164-national",
            Telnyx::UacInbound::AniNumberFormat::TaggedSymbol
          )
        E_164_NATIONAL =
          T.let(
            :"E.164-national",
            Telnyx::UacInbound::AniNumberFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::UacInbound::AniNumberFormat::TaggedSymbol]
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
            T.all(Symbol, Telnyx::UacInbound::DefaultRoutingMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SEQUENTIAL =
          T.let(
            :sequential,
            Telnyx::UacInbound::DefaultRoutingMethod::TaggedSymbol
          )
        ROUND_ROBIN =
          T.let(
            :"round-robin",
            Telnyx::UacInbound::DefaultRoutingMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::UacInbound::DefaultRoutingMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module DnisNumberFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::UacInbound::DnisNumberFormat) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLUS_E164 =
          T.let(:"+e164", Telnyx::UacInbound::DnisNumberFormat::TaggedSymbol)
        E164 = T.let(:e164, Telnyx::UacInbound::DnisNumberFormat::TaggedSymbol)
        NATIONAL =
          T.let(:national, Telnyx::UacInbound::DnisNumberFormat::TaggedSymbol)
        SIP_USERNAME =
          T.let(
            :sip_username,
            Telnyx::UacInbound::DnisNumberFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::UacInbound::DnisNumberFormat::TaggedSymbol]
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
            T.all(Symbol, Telnyx::UacInbound::SimultaneousRinging)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Telnyx::UacInbound::SimultaneousRinging::TaggedSymbol
          )
        ENABLED =
          T.let(:enabled, Telnyx::UacInbound::SimultaneousRinging::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::UacInbound::SimultaneousRinging::TaggedSymbol]
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
            T.all(Symbol, Telnyx::UacInbound::SipSubdomainReceiveSettings)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ONLY_MY_CONNECTIONS =
          T.let(
            :only_my_connections,
            Telnyx::UacInbound::SipSubdomainReceiveSettings::TaggedSymbol
          )
        FROM_ANYONE =
          T.let(
            :from_anyone,
            Telnyx::UacInbound::SipSubdomainReceiveSettings::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::UacInbound::SipSubdomainReceiveSettings::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
