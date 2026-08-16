# typed: strong

module Telnyx
  module Resources
    class PhoneNumbers
      # Voicemail API
      class Voicemail
        # Create voicemail settings for a phone number. You can also configure a custom
        # greeting by setting the `greeting` object: use `mode` `custom_greeting` together
        # with a `media_name` that points to an audio file uploaded through the Media
        # Storage API, or `mode` `default` to use the standard system greeting.
        sig do
          params(
            phone_number_id: String,
            enabled: T::Boolean,
            greeting: Telnyx::PhoneNumbers::VoicemailRequest::Greeting::OrHash,
            pin: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::VoicemailCreateResponse)
        end
        def create(
          # The ID of the phone number.
          phone_number_id,
          # Whether voicemail is enabled.
          enabled: nil,
          # Controls the greeting a caller hears before leaving a voicemail. Set `mode` to
          # `default` to play the standard system greeting, or to `custom_greeting` to play
          # your own audio. When `mode` is `custom_greeting`, `media_name` is required and
          # must reference an audio file already uploaded to your account through the Media
          # Storage API.
          greeting: nil,
          # The pin used for voicemail
          pin: nil,
          request_options: {}
        )
        end

        # Returns the voicemail settings for a phone number
        sig do
          params(
            phone_number_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::VoicemailRetrieveResponse)
        end
        def retrieve(
          # The ID of the phone number.
          phone_number_id,
          request_options: {}
        )
        end

        # Update voicemail settings for a phone number. You can also configure a custom
        # greeting by setting the `greeting` object: use `mode` `custom_greeting` together
        # with a `media_name` that points to an audio file uploaded through the Media
        # Storage API, or `mode` `default` to use the standard system greeting.
        sig do
          params(
            phone_number_id: String,
            enabled: T::Boolean,
            greeting: Telnyx::PhoneNumbers::VoicemailRequest::Greeting::OrHash,
            pin: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::VoicemailUpdateResponse)
        end
        def update(
          # The ID of the phone number.
          phone_number_id,
          # Whether voicemail is enabled.
          enabled: nil,
          # Controls the greeting a caller hears before leaving a voicemail. Set `mode` to
          # `default` to play the standard system greeting, or to `custom_greeting` to play
          # your own audio. When `mode` is `custom_greeting`, `media_name` is required and
          # must reference an audio file already uploaded to your account through the Media
          # Storage API.
          greeting: nil,
          # The pin used for voicemail
          pin: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
