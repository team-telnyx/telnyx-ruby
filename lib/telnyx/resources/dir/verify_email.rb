# frozen_string_literal: true

module Telnyx
  module Resources
    class Dir
      # Verify ownership of a DIR's authorizer email. A short code is emailed and
      # confirmed; the email must be verified before references can be submitted.
      class VerifyEmail
        # Submit the 6-digit code that was emailed to the DIR's authorizer email. On
        # success the authorizer email is marked verified.
        #
        # For security, any failure (wrong, expired, already-used, or too many attempts)
        # returns the same generic message.
        #
        # @overload confirm(dir_id, code:, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param code [String] The 6-digit code sent to the authorizer email.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::VerifyEmailConfirmResponse]
        #
        # @see Telnyx::Models::Dir::VerifyEmailConfirmParams
        def confirm(dir_id, params)
          parsed, options = Telnyx::Dir::VerifyEmailConfirmParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["dir/%1$s/verify_email/confirm", dir_id],
            body: parsed,
            model: Telnyx::Models::Dir::VerifyEmailConfirmResponse,
            options: options
          )
        end

        # Email a 6-digit code to the DIR's authorizer email to confirm ownership of that
        # address.
        #
        # The code expires in 15 minutes. Requesting a new code invalidates any previous
        # one. Resends are rate limited (a short cooldown plus a daily cap). Submit the
        # code to `POST /dir/{dir_id}/verify_email/confirm`.
        #
        # @overload send_(dir_id, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::VerifyEmailSendResponse]
        #
        # @see Telnyx::Models::Dir::VerifyEmailSendParams
        def send_(dir_id, params = {})
          @client.request(
            method: :post,
            path: ["dir/%1$s/verify_email", dir_id],
            model: Telnyx::Models::Dir::VerifyEmailSendResponse,
            options: params[:request_options]
          )
        end

        # Whether the DIR's current authorizer email has been verified.
        #
        # @overload status(dir_id, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::VerifyEmailStatusResponse]
        #
        # @see Telnyx::Models::Dir::VerifyEmailStatusParams
        def status(dir_id, params = {})
          @client.request(
            method: :get,
            path: ["dir/%1$s/verify_email", dir_id],
            model: Telnyx::Models::Dir::VerifyEmailStatusResponse,
            options: params[:request_options]
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
