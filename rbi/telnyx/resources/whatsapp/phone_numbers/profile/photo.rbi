# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        class Profile
          # Manage Whatsapp phone numbers
          class Photo
            # Returns the current business-profile photo for the specified WhatsApp phone
            # number.
            sig do
              params(
                phone_number: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoRetrieveResponse
              )
            end
            def retrieve(
              # Phone number (E.164 format)
              phone_number,
              request_options: {}
            )
            end

            # Removes the business-profile photo from the specified WhatsApp phone number.
            sig do
              params(
                phone_number: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).void
            end
            def delete(
              # Phone number (E.164 format)
              phone_number,
              request_options: {}
            )
            end

            # Uploads and assigns a business-profile photo to the specified WhatsApp phone
            # number.
            sig do
              params(
                phone_number: String,
                file: Telnyx::Internal::FileInput,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::Whatsapp::PhoneNumbers::Profile::PhotoUploadResponse
              )
            end
            def upload(
              # Phone number (E.164 format)
              phone_number,
              # Image file (JPEG recommended, max 10 MB)
              file:,
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
end
