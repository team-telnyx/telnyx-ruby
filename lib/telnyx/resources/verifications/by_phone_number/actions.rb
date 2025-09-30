# frozen_string_literal: true

module Telnyx
  module Resources
    class Verifications
      class ByPhoneNumber
        class Actions
          # Verify verification code by phone number
          #
          # @overload verify(phone_number, code:, verify_profile_id:, request_options: {})
          #
          # @param phone_number [String] +E164 formatted phone number.
          #
          # @param code [String] This is the code the user submits for verification.
          #
          # @param verify_profile_id [String] The identifier of the associated Verify profile.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse]
          #
          # @see Telnyx::Models::Verifications::ByPhoneNumber::ActionVerifyParams
          def verify(phone_number, params)
            parsed, options = Telnyx::Verifications::ByPhoneNumber::ActionVerifyParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["verifications/by_phone_number/%1$s/actions/verify", phone_number],
              body: parsed,
              model: Telnyx::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
