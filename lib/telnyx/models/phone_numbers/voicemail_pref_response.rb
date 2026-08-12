# frozen_string_literal: true

module Telnyx
  module Models
    module PhoneNumbers
      class VoicemailPrefResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute enabled
        #   Whether voicemail is enabled.
        #
        #   @return [Boolean, nil]
        optional :enabled, Telnyx::Internal::Type::Boolean

        # @!attribute greeting
        #   Controls the greeting a caller hears before leaving a voicemail. Set `mode` to
        #   `default` to play the standard system greeting, or to `custom_greeting` to play
        #   your own audio. When `mode` is `custom_greeting`, `media_name` is required and
        #   must reference an audio file already uploaded to your account through the Media
        #   Storage API.
        #
        #   @return [Telnyx::Models::PhoneNumbers::VoicemailPrefResponse::Greeting, nil]
        optional :greeting, -> { Telnyx::PhoneNumbers::VoicemailPrefResponse::Greeting }

        # @!attribute pin
        #   The pin used for the voicemail.
        #
        #   @return [String, nil]
        optional :pin, String

        # @!method initialize(enabled: nil, greeting: nil, pin: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PhoneNumbers::VoicemailPrefResponse} for more details.
        #
        #   @param enabled [Boolean] Whether voicemail is enabled.
        #
        #   @param greeting [Telnyx::Models::PhoneNumbers::VoicemailPrefResponse::Greeting] Controls the greeting a caller hears before leaving a voicemail. Set `mode` to `
        #
        #   @param pin [String] The pin used for the voicemail.

        # @see Telnyx::Models::PhoneNumbers::VoicemailPrefResponse#greeting
        class Greeting < Telnyx::Internal::Type::BaseModel
          # @!attribute media_name
          #   The name of the media file to play as the greeting. Required when `mode` is
          #   `custom_greeting`; ignored when `mode` is `default`. The value must match the
          #   `media_name` of a file you previously uploaded with the Media Storage API
          #   (`POST /v2/media`).
          #
          #   @return [String, nil]
          optional :media_name, String, nil?: true

          # @!attribute mode
          #   The greeting mode. `default` plays the standard system greeting.
          #   `custom_greeting` plays the audio referenced by `media_name`.
          #
          #   @return [Symbol, Telnyx::Models::PhoneNumbers::VoicemailPrefResponse::Greeting::Mode, nil]
          optional :mode, enum: -> { Telnyx::PhoneNumbers::VoicemailPrefResponse::Greeting::Mode }

          # @!method initialize(media_name: nil, mode: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::PhoneNumbers::VoicemailPrefResponse::Greeting} for more
          #   details.
          #
          #   Controls the greeting a caller hears before leaving a voicemail. Set `mode` to
          #   `default` to play the standard system greeting, or to `custom_greeting` to play
          #   your own audio. When `mode` is `custom_greeting`, `media_name` is required and
          #   must reference an audio file already uploaded to your account through the Media
          #   Storage API.
          #
          #   @param media_name [String, nil] The name of the media file to play as the greeting. Required when `mode` is `cus
          #
          #   @param mode [Symbol, Telnyx::Models::PhoneNumbers::VoicemailPrefResponse::Greeting::Mode] The greeting mode. `default` plays the standard system greeting. `custom_greetin

          # The greeting mode. `default` plays the standard system greeting.
          # `custom_greeting` plays the audio referenced by `media_name`.
          #
          # @see Telnyx::Models::PhoneNumbers::VoicemailPrefResponse::Greeting#mode
          module Mode
            extend Telnyx::Internal::Type::Enum

            DEFAULT = :default
            CUSTOM_GREETING = :custom_greeting

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
