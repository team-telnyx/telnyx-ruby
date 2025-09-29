# typed: strong

module Telnyx
  module Models
    class OutboundIP < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Telnyx::OutboundIP, Telnyx::Internal::AnyHash) }

      # Set a phone number as the ani_override value to override caller id number on
      # outbound calls.
      sig { returns(T.nilable(String)) }
      attr_reader :ani_override

      sig { params(ani_override: String).void }
      attr_writer :ani_override

      # Specifies when we apply your ani_override setting. Only applies when
      # ani_override is not blank.
      sig { returns(T.nilable(Telnyx::OutboundIP::AniOverrideType::OrSymbol)) }
      attr_reader :ani_override_type

      sig do
        params(
          ani_override_type: Telnyx::OutboundIP::AniOverrideType::OrSymbol
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

      sig do
        returns(T.nilable(Telnyx::OutboundIP::IPAuthenticationMethod::OrSymbol))
      end
      attr_reader :ip_authentication_method

      sig do
        params(
          ip_authentication_method:
            Telnyx::OutboundIP::IPAuthenticationMethod::OrSymbol
        ).void
      end
      attr_writer :ip_authentication_method

      sig { returns(T.nilable(String)) }
      attr_reader :ip_authentication_token

      sig { params(ip_authentication_token: String).void }
      attr_writer :ip_authentication_token

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
        returns(T.nilable(Telnyx::OutboundIP::T38ReinviteSource::OrSymbol))
      end
      attr_reader :t38_reinvite_source

      sig do
        params(
          t38_reinvite_source: Telnyx::OutboundIP::T38ReinviteSource::OrSymbol
        ).void
      end
      attr_writer :t38_reinvite_source

      # Numerical chars only, exactly 4 characters.
      sig { returns(T.nilable(String)) }
      attr_reader :tech_prefix

      sig { params(tech_prefix: String).void }
      attr_writer :tech_prefix

      sig do
        params(
          ani_override: String,
          ani_override_type: Telnyx::OutboundIP::AniOverrideType::OrSymbol,
          call_parking_enabled: T.nilable(T::Boolean),
          channel_limit: Integer,
          generate_ringback_tone: T::Boolean,
          instant_ringback_enabled: T::Boolean,
          ip_authentication_method:
            Telnyx::OutboundIP::IPAuthenticationMethod::OrSymbol,
          ip_authentication_token: String,
          localization: String,
          outbound_voice_profile_id: String,
          t38_reinvite_source: Telnyx::OutboundIP::T38ReinviteSource::OrSymbol,
          tech_prefix: String
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
        ip_authentication_method: nil,
        ip_authentication_token: nil,
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
        t38_reinvite_source: nil,
        # Numerical chars only, exactly 4 characters.
        tech_prefix: nil
      )
      end

      sig do
        override.returns(
          {
            ani_override: String,
            ani_override_type: Telnyx::OutboundIP::AniOverrideType::OrSymbol,
            call_parking_enabled: T.nilable(T::Boolean),
            channel_limit: Integer,
            generate_ringback_tone: T::Boolean,
            instant_ringback_enabled: T::Boolean,
            ip_authentication_method:
              Telnyx::OutboundIP::IPAuthenticationMethod::OrSymbol,
            ip_authentication_token: String,
            localization: String,
            outbound_voice_profile_id: String,
            t38_reinvite_source:
              Telnyx::OutboundIP::T38ReinviteSource::OrSymbol,
            tech_prefix: String
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
          T.type_alias { T.all(Symbol, Telnyx::OutboundIP::AniOverrideType) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ALWAYS =
          T.let(:always, Telnyx::OutboundIP::AniOverrideType::TaggedSymbol)
        NORMAL =
          T.let(:normal, Telnyx::OutboundIP::AniOverrideType::TaggedSymbol)
        EMERGENCY =
          T.let(:emergency, Telnyx::OutboundIP::AniOverrideType::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::OutboundIP::AniOverrideType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module IPAuthenticationMethod
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::OutboundIP::IPAuthenticationMethod)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TECH_PREFIXP_CHARGE_INFO =
          T.let(
            :"tech-prefixp-charge-info",
            Telnyx::OutboundIP::IPAuthenticationMethod::TaggedSymbol
          )
        TOKEN =
          T.let(
            :token,
            Telnyx::OutboundIP::IPAuthenticationMethod::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::OutboundIP::IPAuthenticationMethod::TaggedSymbol]
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
          T.type_alias { T.all(Symbol, Telnyx::OutboundIP::T38ReinviteSource) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TELNYX =
          T.let(:telnyx, Telnyx::OutboundIP::T38ReinviteSource::TaggedSymbol)
        CUSTOMER =
          T.let(:customer, Telnyx::OutboundIP::T38ReinviteSource::TaggedSymbol)
        DISABLED =
          T.let(:disabled, Telnyx::OutboundIP::T38ReinviteSource::TaggedSymbol)
        PASSTHRU =
          T.let(:passthru, Telnyx::OutboundIP::T38ReinviteSource::TaggedSymbol)
        CALLER_PASSTHRU =
          T.let(
            :"caller-passthru",
            Telnyx::OutboundIP::T38ReinviteSource::TaggedSymbol
          )
        CALLEE_PASSTHRU =
          T.let(
            :"callee-passthru",
            Telnyx::OutboundIP::T38ReinviteSource::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::OutboundIP::T38ReinviteSource::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
