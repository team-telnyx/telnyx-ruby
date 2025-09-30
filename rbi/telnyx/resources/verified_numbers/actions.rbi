# typed: strong

module Telnyx
  module Resources
    class VerifiedNumbers
      class Actions
        # Submit verification code
        sig do
          params(
            phone_number: String,
            verification_code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::VerifiedNumberDataWrapper)
        end
        def submit_verification_code(
          # +E164 formatted phone number.
          phone_number,
          verification_code:,
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
