# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        class ConversationalComponents
          # Returns the conversational components configured for the specified WhatsApp
          # phone number.
          sig do
            params(
              phone_number: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentListResponse
            )
          end
          def list(
            # Phone number (E.164 format)
            phone_number,
            request_options: {}
          )
          end

          # Updates the conversational components configured for the specified WhatsApp
          # phone number.
          sig do
            params(
              phone_number: String,
              commands:
                T::Array[
                  Telnyx::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllParams::Command::OrHash
                ],
              ice_breakers: T::Array[String],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::PhoneNumbers::ConversationalComponentPatchAllResponse
            )
          end
          def patch_all(
            # Phone number (E.164 format)
            phone_number,
            # List of commands
            commands: nil,
            # List of ice breakers
            ice_breakers: nil,
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
