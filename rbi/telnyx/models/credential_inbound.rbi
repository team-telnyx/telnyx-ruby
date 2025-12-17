# typed: strong

module Telnyx
  module Models
    class CredentialInbound < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CredentialInbound, Telnyx::Internal::AnyHash)
        end

      # This setting allows you to set the format with which the caller's number (ANI)
      # is sent for inbound phone calls.
      sig do
        returns(T.nilable(Telnyx::CredentialInbound::AniNumberFormat::OrSymbol))
      end
      attr_reader :ani_number_format

      sig do
        params(
          ani_number_format:
            Telnyx::CredentialInbound::AniNumberFormat::OrSymbol
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

      sig do
        returns(
          T.nilable(Telnyx::CredentialInbound::DnisNumberFormat::OrSymbol)
        )
      end
      attr_reader :dnis_number_format

      sig do
        params(
          dnis_number_format:
            Telnyx::CredentialInbound::DnisNumberFormat::OrSymbol
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
          T.nilable(Telnyx::CredentialInbound::SimultaneousRinging::OrSymbol)
        )
      end
      attr_reader :simultaneous_ringing

      sig do
        params(
          simultaneous_ringing:
            Telnyx::CredentialInbound::SimultaneousRinging::OrSymbol
        ).void
      end
      attr_writer :simultaneous_ringing

      # Defaults to true.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sip_compact_headers_enabled

      sig { params(sip_compact_headers_enabled: T::Boolean).void }
      attr_writer :sip_compact_headers_enabled

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
            Telnyx::CredentialInbound::AniNumberFormat::OrSymbol,
          channel_limit: Integer,
          codecs: T::Array[String],
          dnis_number_format:
            Telnyx::CredentialInbound::DnisNumberFormat::OrSymbol,
          generate_ringback_tone: T::Boolean,
          isup_headers_enabled: T::Boolean,
          prack_enabled: T::Boolean,
          shaken_stir_enabled: T::Boolean,
          simultaneous_ringing:
            Telnyx::CredentialInbound::SimultaneousRinging::OrSymbol,
          sip_compact_headers_enabled: T::Boolean,
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
              Telnyx::CredentialInbound::AniNumberFormat::OrSymbol,
            channel_limit: Integer,
            codecs: T::Array[String],
            dnis_number_format:
              Telnyx::CredentialInbound::DnisNumberFormat::OrSymbol,
            generate_ringback_tone: T::Boolean,
            isup_headers_enabled: T::Boolean,
            prack_enabled: T::Boolean,
            shaken_stir_enabled: T::Boolean,
            simultaneous_ringing:
              Telnyx::CredentialInbound::SimultaneousRinging::OrSymbol,
            sip_compact_headers_enabled: T::Boolean,
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
            T.all(Symbol, Telnyx::CredentialInbound::AniNumberFormat)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLUS_E_164 =
          T.let(
            :"+E.164",
            Telnyx::CredentialInbound::AniNumberFormat::TaggedSymbol
          )
        E_164 =
          T.let(
            :"E.164",
            Telnyx::CredentialInbound::AniNumberFormat::TaggedSymbol
          )
        PLUS_E_164_NATIONAL =
          T.let(
            :"+E.164-national",
            Telnyx::CredentialInbound::AniNumberFormat::TaggedSymbol
          )
        E_164_NATIONAL =
          T.let(
            :"E.164-national",
            Telnyx::CredentialInbound::AniNumberFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CredentialInbound::AniNumberFormat::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module DnisNumberFormat
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CredentialInbound::DnisNumberFormat)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PLUS_E164 =
          T.let(
            :"+e164",
            Telnyx::CredentialInbound::DnisNumberFormat::TaggedSymbol
          )
        E164 =
          T.let(
            :e164,
            Telnyx::CredentialInbound::DnisNumberFormat::TaggedSymbol
          )
        NATIONAL =
          T.let(
            :national,
            Telnyx::CredentialInbound::DnisNumberFormat::TaggedSymbol
          )
        SIP_USERNAME =
          T.let(
            :sip_username,
            Telnyx::CredentialInbound::DnisNumberFormat::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CredentialInbound::DnisNumberFormat::TaggedSymbol]
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
            T.all(Symbol, Telnyx::CredentialInbound::SimultaneousRinging)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        DISABLED =
          T.let(
            :disabled,
            Telnyx::CredentialInbound::SimultaneousRinging::TaggedSymbol
          )
        ENABLED =
          T.let(
            :enabled,
            Telnyx::CredentialInbound::SimultaneousRinging::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::CredentialInbound::SimultaneousRinging::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
