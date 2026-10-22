# frozen_string_literal: true

module Telnyx
  module Resources
    class Dir
      # Verify ownership of a DIR's authorizer email. A short code is emailed and
      # confirmed.
      class VerifyEmail
        # Email a 6-digit code to the DIR's authorizer email to confirm ownership of that
        # address. The code goes to the authorizer, not to the caller. If the authorizer
        # is someone else (for example a client's executive), that person has to share the
        # code with whoever is completing setup.
        #
        # How long the code lasts: 15 minutes by default. 8 hours when the DIR has a call
        # center (BPO) linked through `bpo_authorizations` whose authorization is pending
        # review or approved (a rejected authorization does not count). Link the call
        # center before you send the code: a code sent before the link keeps the 15-minute
        # window, and a code sent after the link lasts 8 hours. The email states the
        # window, and `expires_at` in the response always shows the exact expiry.
        #
        # To resend, call this endpoint again. Each send issues a fresh code and
        # invalidates the previous one. Sends are limited to one every 60 seconds and 10
        # per DIR per UTC day. A throttled send returns `429` with `retry_after_secs` and
        # `sends_remaining_today` in the error `meta`.
        #
        # Submit the code to `POST /dir/{dir_id}/verify_email/confirm`.
        #
        # @overload create(dir_id, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::EmailVerificationStatusWrapped]
        #
        # @see Telnyx::Models::Dir::VerifyEmailCreateParams
        def create(dir_id, params = {})
          @client.request(
            method: :post,
            path: ["dir/%1$s/verify_email", dir_id],
            model: Telnyx::Dir::EmailVerificationStatusWrapped,
            options: params[:request_options]
          )
        end

        # Whether the DIR's current authorizer email has been verified.
        #
        # @overload list(dir_id, request_options: {})
        #
        # @param dir_id [String] The DIR id. Lowercase UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Dir::EmailVerificationStatusWrapped]
        #
        # @see Telnyx::Models::Dir::VerifyEmailListParams
        def list(dir_id, params = {})
          @client.request(
            method: :get,
            path: ["dir/%1$s/verify_email", dir_id],
            model: Telnyx::Dir::EmailVerificationStatusWrapped,
            options: params[:request_options]
          )
        end

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
        # @return [Telnyx::Models::Dir::EmailVerificationStatusWrapped]
        #
        # @see Telnyx::Models::Dir::VerifyEmailConfirmParams
        def confirm(dir_id, params)
          parsed, options = Telnyx::Dir::VerifyEmailConfirmParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["dir/%1$s/verify_email/confirm", dir_id],
            body: parsed,
            model: Telnyx::Dir::EmailVerificationStatusWrapped,
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
