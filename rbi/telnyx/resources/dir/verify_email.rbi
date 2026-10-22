# typed: strong

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
        sig do
          params(
            dir_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Dir::EmailVerificationStatusWrapped)
        end
        def create(
          # The DIR id. Lowercase UUID.
          dir_id,
          request_options: {}
        )
        end

        # Whether the DIR's current authorizer email has been verified.
        sig do
          params(
            dir_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Dir::EmailVerificationStatusWrapped)
        end
        def list(
          # The DIR id. Lowercase UUID.
          dir_id,
          request_options: {}
        )
        end

        # Submit the 6-digit code that was emailed to the DIR's authorizer email. On
        # success the authorizer email is marked verified.
        #
        # For security, any failure (wrong, expired, already-used, or too many attempts)
        # returns the same generic message.
        sig do
          params(
            dir_id: String,
            code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Dir::EmailVerificationStatusWrapped)
        end
        def confirm(
          # The DIR id. Lowercase UUID.
          dir_id,
          # The 6-digit code sent to the authorizer email.
          code:,
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
