# frozen_string_literal: true

module Telnyx
  module Resources
    class Enterprises
      # Verify ownership of a DIR's authorizer email. A short code is emailed and
      # confirmed; the email must be verified before references can be submitted.
      class VerifyEmail
        # Email a 6-digit code to the enterprise account's contact email to confirm
        # ownership of that address.
        #
        # A BPO (Business Process Outsourcer) account has no DIR, so it proves ownership
        # of its own contact email here rather than through a DIR. A BPO account cannot be
        # approved for use until this contact email is verified.
        #
        # The code expires in 15 minutes. Requesting a new code invalidates any previous
        # one. Resends are rate limited (a short cooldown plus a daily cap). Submit the
        # code to `POST /enterprises/{enterprise_id}/verify_email/confirm`.
        #
        # @overload create(enterprise_id, request_options: {})
        #
        # @param enterprise_id [String] The enterprise id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatusWrapped]
        #
        # @see Telnyx::Models::Enterprises::VerifyEmailCreateParams
        def create(enterprise_id, params = {})
          @client.request(
            method: :post,
            path: ["enterprises/%1$s/verify_email", enterprise_id],
            model: Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped,
            options: params[:request_options]
          )
        end

        # Submit the 6-digit code that was emailed to the enterprise account's contact
        # email. On success the contact email is marked verified.
        #
        # For security, any failure (wrong, expired, already-used, or too many attempts)
        # returns the same generic message.
        #
        # @overload confirm(enterprise_id, code:, request_options: {})
        #
        # @param enterprise_id [String] The enterprise id. Lowercase UUID.
        #
        # @param code [String] The 6-digit code sent to the enterprise account's contact email.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Enterprises::EnterpriseEmailVerificationStatusWrapped]
        #
        # @see Telnyx::Models::Enterprises::VerifyEmailConfirmParams
        def confirm(enterprise_id, params)
          parsed, options = Telnyx::Enterprises::VerifyEmailConfirmParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["enterprises/%1$s/verify_email/confirm", enterprise_id],
            body: parsed,
            model: Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped,
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
