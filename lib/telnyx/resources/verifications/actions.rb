# frozen_string_literal: true

module Telnyx
  module Resources
    class Verifications
      class Actions
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Verifications::ActionVerifyParams} for more details.
        #
        # Verify verification code by ID
        #
        # @overload verify(verification_id, code: nil, status: nil, request_options: {})
        #
        # @param verification_id [String] The identifier of the verification to retrieve.
        #
        # @param code [String] This is the code the user submits for verification.
        #
        # @param status [Symbol, Telnyx::Models::Verifications::ActionVerifyParams::Status] Identifies if the verification code has been accepted or rejected. Only permitte
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Verifications::ByPhoneNumber::VerifyVerificationCodeResponse]
        #
        # @see Telnyx::Models::Verifications::ActionVerifyParams
        def verify(verification_id, params = {})
          parsed, options = Telnyx::Verifications::ActionVerifyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["verifications/%1$s/actions/verify", verification_id],
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
