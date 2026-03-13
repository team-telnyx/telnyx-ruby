# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        class CallingSettings
          # Get calling settings for a phone number
          sig do
            params(
              phone_number: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingRetrieveResponse
            )
          end
          def retrieve(
            # Phone number (E.164 format)
            phone_number,
            request_options: {}
          )
          end

          # Enable or disable Whatsapp calling for a phone number
          sig do
            params(
              phone_number: String,
              enabled: T::Boolean,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::PhoneNumbers::CallingSettingUpdateResponse
            )
          end
          def update(
            # Phone number (E.164 format)
            phone_number,
            enabled:,
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
end
