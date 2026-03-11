# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      # Manage Whatsapp phone numbers
      class PhoneNumbers
        # Manage Whatsapp phone numbers
        sig do
          returns(Telnyx::Resources::Whatsapp::PhoneNumbers::CallingSettings)
        end
        attr_reader :calling_settings

        # Manage Whatsapp phone numbers
        sig { returns(Telnyx::Resources::Whatsapp::PhoneNumbers::Profile) }
        attr_reader :profile

        # List Whatsapp phone numbers
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Whatsapp::PhoneNumberListResponse
            ]
          )
        end
        def list(page_number: nil, page_size: nil, request_options: {})
        end

        # Delete a Whatsapp phone number
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

        # Resend verification code
        sig do
          params(
            phone_number: String,
            verification_method:
              Telnyx::Whatsapp::PhoneNumberResendVerificationParams::VerificationMethod::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def resend_verification(
          # Phone number (E.164 format)
          phone_number,
          verification_method: nil,
          request_options: {}
        )
        end

        # Submit verification code for a phone number
        sig do
          params(
            phone_number: String,
            code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def verify(
          # Phone number (E.164 format)
          phone_number,
          code:,
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
