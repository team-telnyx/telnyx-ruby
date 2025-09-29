# typed: strong

module Telnyx
  module Resources
    class Verifications
      class ByPhoneNumber
        class Actions
          # Verify verification code by phone number
          sig do
            params(
              phone_number: String,
              code: String,
              verify_profile_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(
              Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse
            )
          end
          def verify(
            # +E164 formatted phone number.
            phone_number,
            # This is the code the user submits for verification.
            code:,
            # The identifier of the associated Verify profile.
            verify_profile_id:,
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
