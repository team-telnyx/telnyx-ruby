# typed: strong

module Telnyx
  module Resources
    class PhoneNumbers
      class Voicemail
        # Create voicemail settings for a phone number
        sig do
          params(
            phone_number_id: String,
            enabled: T::Boolean,
            pin: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::VoicemailCreateResponse)
        end
        def create(
          # The ID of the phone number.
          phone_number_id,
          # Whether voicemail is enabled.
          enabled: nil,
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

        # Update voicemail settings for a phone number
        sig do
          params(
            phone_number_id: String,
            enabled: T::Boolean,
            pin: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::PhoneNumbers::VoicemailUpdateResponse)
        end
        def update(
          # The ID of the phone number.
          phone_number_id,
          # Whether voicemail is enabled.
          enabled: nil,
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
