# frozen_string_literal: true

module Telnyx
  module Resources
    class VerifiedNumbers
      class Actions
        # Submit verification code
        #
        # @overload submit_verification_code(phone_number, verification_code:, request_options: {})
        #
        # @param phone_number [String] +E164 formatted phone number.
        #
        # @param verification_code [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::VerifiedNumberDataWrapper]
        #
        # @see Telnyx::Models::VerifiedNumbers::ActionSubmitVerificationCodeParams
        def submit_verification_code(phone_number, params)
          parsed, options = Telnyx::VerifiedNumbers::ActionSubmitVerificationCodeParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["verified_numbers/%1$s/actions/verify", phone_number],
            body: parsed,
            model: Telnyx::VerifiedNumberDataWrapper,
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
