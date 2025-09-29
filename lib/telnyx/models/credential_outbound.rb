# frozen_string_literal: true

module Telnyx
  module Models
    class CredentialOutbound < Telnyx::Internal::Type::BaseModel
      # @!attribute ani_override
      #   Set a phone number as the ani_override value to override caller id number on
      #   outbound calls.
      #
      #   @return [String, nil]
      optional :ani_override, String

      # @!attribute ani_override_type
      #   Specifies when we apply your ani_override setting. Only applies when
      #   ani_override is not blank.
      #
      #   @return [Symbol, Telnyx::Models::CredentialOutbound::AniOverrideType, nil]
      optional :ani_override_type, enum: -> { Telnyx::CredentialOutbound::AniOverrideType }

      # @!attribute call_parking_enabled
      #   Forces all SIP calls originated on this connection to be "parked" instead of
      #   "bridged" to the destination specified on the URI. Parked calls will return
      #   ringback to the caller and will await for a Call Control command to define which
      #   action will be taken next.
      #
      #   @return [Boolean, nil]
      optional :call_parking_enabled, Telnyx::Internal::Type::Boolean, nil?: true

      # @!attribute channel_limit
      #   When set, this will limit the total number of outbound calls to phone numbers
      #   associated with this connection.
      #
      #   @return [Integer, nil]
      optional :channel_limit, Integer

      # @!attribute generate_ringback_tone
      #   Generate ringback tone through 183 session progress message with early media.
      #
      #   @return [Boolean, nil]
      optional :generate_ringback_tone, Telnyx::Internal::Type::Boolean

      # @!attribute instant_ringback_enabled
      #   When set, ringback will not wait for indication before sending ringback tone to
      #   calling party.
      #
      #   @return [Boolean, nil]
      optional :instant_ringback_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute localization
      #   A 2-character country code specifying the country whose national dialing rules
      #   should be used. For example, if set to `US` then any US number can be dialed
      #   without preprending +1 to the number. When left blank, Telnyx will try US and GB
      #   dialing rules, in that order, by default.
      #
      #   @return [String, nil]
      optional :localization, String

      # @!attribute outbound_voice_profile_id
      #   Identifies the associated outbound voice profile.
      #
      #   @return [String, nil]
      optional :outbound_voice_profile_id, String

      # @!attribute t38_reinvite_source
      #   This setting only affects connections with Fax-type Outbound Voice Profiles. The
      #   setting dictates whether or not Telnyx sends a t.38 reinvite.<br/><br/> By
      #   default, Telnyx will send the re-invite. If set to `customer`, the caller is
      #   expected to send the t.38 reinvite.
      #
      #   @return [Symbol, Telnyx::Models::CredentialOutbound::T38ReinviteSource, nil]
      optional :t38_reinvite_source, enum: -> { Telnyx::CredentialOutbound::T38ReinviteSource }

      # @!method initialize(ani_override: nil, ani_override_type: nil, call_parking_enabled: nil, channel_limit: nil, generate_ringback_tone: nil, instant_ringback_enabled: nil, localization: nil, outbound_voice_profile_id: nil, t38_reinvite_source: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CredentialOutbound} for more details.
      #
      #   @param ani_override [String] Set a phone number as the ani_override value to override caller id number on out
      #
      #   @param ani_override_type [Symbol, Telnyx::Models::CredentialOutbound::AniOverrideType] Specifies when we apply your ani_override setting. Only applies when ani_overrid
      #
      #   @param call_parking_enabled [Boolean, nil] Forces all SIP calls originated on this connection to be "parked" instead of "br
      #
      #   @param channel_limit [Integer] When set, this will limit the total number of outbound calls to phone numbers as
      #
      #   @param generate_ringback_tone [Boolean] Generate ringback tone through 183 session progress message with early media.
      #
      #   @param instant_ringback_enabled [Boolean] When set, ringback will not wait for indication before sending ringback tone to
      #
      #   @param localization [String] A 2-character country code specifying the country whose national dialing rules s
      #
      #   @param outbound_voice_profile_id [String] Identifies the associated outbound voice profile.
      #
      #   @param t38_reinvite_source [Symbol, Telnyx::Models::CredentialOutbound::T38ReinviteSource] This setting only affects connections with Fax-type Outbound Voice Profiles. The

      # Specifies when we apply your ani_override setting. Only applies when
      # ani_override is not blank.
      #
      # @see Telnyx::Models::CredentialOutbound#ani_override_type
      module AniOverrideType
        extend Telnyx::Internal::Type::Enum

        ALWAYS = :always
        NORMAL = :normal
        EMERGENCY = :emergency

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # This setting only affects connections with Fax-type Outbound Voice Profiles. The
      # setting dictates whether or not Telnyx sends a t.38 reinvite.<br/><br/> By
      # default, Telnyx will send the re-invite. If set to `customer`, the caller is
      # expected to send the t.38 reinvite.
      #
      # @see Telnyx::Models::CredentialOutbound#t38_reinvite_source
      module T38ReinviteSource
        extend Telnyx::Internal::Type::Enum

        TELNYX = :telnyx
        CUSTOMER = :customer
        DISABLED = :disabled
        PASSTHRU = :passthru
        CALLER_PASSTHRU = :"caller-passthru"
        CALLEE_PASSTHRU = :"callee-passthru"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
