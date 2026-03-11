# typed: strong

module Telnyx
  module Resources
    class Whatsapp
      class BusinessAccounts
        class PhoneNumbers
          # List phone numbers for a WABA
          sig do
            params(
              id: String,
              page_number: Integer,
              page_size: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Internal::DefaultFlatPagination[
                Telnyx::Models::Whatsapp::BusinessAccounts::PhoneNumberListResponse
              ]
            )
          end
          def list(
            # Whatsapp Business Account ID
            id,
            page_number: nil,
            page_size: nil,
            request_options: {}
          )
          end

          # Initialize Whatsapp phone number verification
          sig do
            params(
              id: String,
              display_name: String,
              phone_number: String,
              language: String,
              verification_method:
                Telnyx::Whatsapp::BusinessAccounts::PhoneNumberInitializeVerificationParams::VerificationMethod::OrSymbol,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def initialize_verification(
            # Whatsapp Business Account ID
            id,
            display_name:,
            phone_number:,
            language: nil,
            verification_method: nil,
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
