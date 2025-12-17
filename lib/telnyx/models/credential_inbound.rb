# frozen_string_literal: true

module Telnyx
  module Models
    class CredentialInbound < Telnyx::Internal::Type::BaseModel
      # @!attribute ani_number_format
      #   This setting allows you to set the format with which the caller's number (ANI)
      #   is sent for inbound phone calls.
      #
      #   @return [Symbol, Telnyx::Models::CredentialInbound::AniNumberFormat, nil]
      optional :ani_number_format, enum: -> { Telnyx::CredentialInbound::AniNumberFormat }

      # @!attribute channel_limit
      #   When set, this will limit the total number of inbound calls to phone numbers
      #   associated with this connection.
      #
      #   @return [Integer, nil]
      optional :channel_limit, Integer

      # @!attribute codecs
      #   Defines the list of codecs that Telnyx will send for inbound calls to a specific
      #   number on your portal account, in priority order. This only works when the
      #   Connection the number is assigned to uses Media Handling mode: default. OPUS and
      #   H.264 codecs are available only when using TCP or TLS transport for SIP.
      #
      #   @return [Array<String>, nil]
      optional :codecs, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute dnis_number_format
      #
      #   @return [Symbol, Telnyx::Models::CredentialInbound::DnisNumberFormat, nil]
      optional :dnis_number_format, enum: -> { Telnyx::CredentialInbound::DnisNumberFormat }

      # @!attribute generate_ringback_tone
      #   Generate ringback tone through 183 session progress message with early media.
      #
      #   @return [Boolean, nil]
      optional :generate_ringback_tone, Telnyx::Internal::Type::Boolean

      # @!attribute isup_headers_enabled
      #   When set, inbound phone calls will receive ISUP parameters via SIP headers.
      #   (Only when available and only when using TCP or TLS transport.)
      #
      #   @return [Boolean, nil]
      optional :isup_headers_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute prack_enabled
      #   Enable PRACK messages as defined in RFC3262.
      #
      #   @return [Boolean, nil]
      optional :prack_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute shaken_stir_enabled
      #   When enabled the SIP Connection will receive the Identity header with
      #   Shaken/Stir data in the SIP INVITE message of inbound calls, even when using UDP
      #   transport.
      #
      #   @return [Boolean, nil]
      optional :shaken_stir_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute simultaneous_ringing
      #   When enabled, allows multiple devices to ring simultaneously on incoming calls.
      #
      #   @return [Symbol, Telnyx::Models::CredentialInbound::SimultaneousRinging, nil]
      optional :simultaneous_ringing, enum: -> { Telnyx::CredentialInbound::SimultaneousRinging }

      # @!attribute sip_compact_headers_enabled
      #   Defaults to true.
      #
      #   @return [Boolean, nil]
      optional :sip_compact_headers_enabled, Telnyx::Internal::Type::Boolean

      # @!attribute timeout_1xx_secs
      #   Time(sec) before aborting if connection is not made.
      #
      #   @return [Integer, nil]
      optional :timeout_1xx_secs, Integer

      # @!attribute timeout_2xx_secs
      #   Time(sec) before aborting if call is unanswered (min: 1, max: 600).
      #
      #   @return [Integer, nil]
      optional :timeout_2xx_secs, Integer

      # @!method initialize(ani_number_format: nil, channel_limit: nil, codecs: nil, dnis_number_format: nil, generate_ringback_tone: nil, isup_headers_enabled: nil, prack_enabled: nil, shaken_stir_enabled: nil, simultaneous_ringing: nil, sip_compact_headers_enabled: nil, timeout_1xx_secs: nil, timeout_2xx_secs: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::CredentialInbound} for more details.
      #
      #   @param ani_number_format [Symbol, Telnyx::Models::CredentialInbound::AniNumberFormat] This setting allows you to set the format with which the caller's number (ANI) i
      #
      #   @param channel_limit [Integer] When set, this will limit the total number of inbound calls to phone numbers ass
      #
      #   @param codecs [Array<String>] Defines the list of codecs that Telnyx will send for inbound calls to a specific
      #
      #   @param dnis_number_format [Symbol, Telnyx::Models::CredentialInbound::DnisNumberFormat]
      #
      #   @param generate_ringback_tone [Boolean] Generate ringback tone through 183 session progress message with early media.
      #
      #   @param isup_headers_enabled [Boolean] When set, inbound phone calls will receive ISUP parameters via SIP headers. (Onl
      #
      #   @param prack_enabled [Boolean] Enable PRACK messages as defined in RFC3262.
      #
      #   @param shaken_stir_enabled [Boolean] When enabled the SIP Connection will receive the Identity header with Shaken/Sti
      #
      #   @param simultaneous_ringing [Symbol, Telnyx::Models::CredentialInbound::SimultaneousRinging] When enabled, allows multiple devices to ring simultaneously on incoming calls.
      #
      #   @param sip_compact_headers_enabled [Boolean] Defaults to true.
      #
      #   @param timeout_1xx_secs [Integer] Time(sec) before aborting if connection is not made.
      #
      #   @param timeout_2xx_secs [Integer] Time(sec) before aborting if call is unanswered (min: 1, max: 600).

      # This setting allows you to set the format with which the caller's number (ANI)
      # is sent for inbound phone calls.
      #
      # @see Telnyx::Models::CredentialInbound#ani_number_format
      module AniNumberFormat
        extend Telnyx::Internal::Type::Enum

        PLUS_E_164 = :"+E.164"
        E_164 = :"E.164"
        PLUS_E_164_NATIONAL = :"+E.164-national"
        E_164_NATIONAL = :"E.164-national"

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CredentialInbound#dnis_number_format
      module DnisNumberFormat
        extend Telnyx::Internal::Type::Enum

        PLUS_E164 = :"+e164"
        E164 = :e164
        NATIONAL = :national
        SIP_USERNAME = :sip_username

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # When enabled, allows multiple devices to ring simultaneously on incoming calls.
      #
      # @see Telnyx::Models::CredentialInbound#simultaneous_ringing
      module SimultaneousRinging
        extend Telnyx::Internal::Type::Enum

        DISABLED = :disabled
        ENABLED = :enabled

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
