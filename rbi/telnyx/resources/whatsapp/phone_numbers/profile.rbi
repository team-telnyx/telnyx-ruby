# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        class Profile
          # Manage Whatsapp phone numbers
          sig do
            returns(Telnyx::Resources::Whatsapp::PhoneNumbers::Profile::Photo)
          end
          attr_reader :photo

          # Get phone number business profile
          sig do
            params(
              phone_number: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::PhoneNumbers::ProfileRetrieveResponse
            )
          end
          def retrieve(
            # Phone number (E.164 format)
            phone_number,
            request_options: {}
          )
          end

          # Update phone number business profile
          sig do
            params(
              phone_number: String,
              about: String,
              address: String,
              category: String,
              description: String,
              display_name: String,
              email: String,
              website: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Models::Whatsapp::PhoneNumbers::ProfileUpdateResponse
            )
          end
          def update(
            # Phone number (E.164 format)
            phone_number,
            about: nil,
            address: nil,
            category: nil,
            description: nil,
            display_name: nil,
            email: nil,
            website: nil,
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
