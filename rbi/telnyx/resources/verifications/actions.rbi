# typed: strong

module Telnyx
  module Resources
    class Verifications
      class Actions
        # Verify verification code by ID
        sig do
          params(
            verification_id: String,
            code: String,
            status: Telnyx::Verifications::ActionVerifyParams::Status::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse
          )
        end
        def verify(
          # The identifier of the verification to retrieve.
          verification_id,
          # This is the code the user submits for verification.
          code: nil,
          # Identifies if the verification code has been accepted or rejected. Only
          # permitted if custom_code was used for the verification.
          status: nil,
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
