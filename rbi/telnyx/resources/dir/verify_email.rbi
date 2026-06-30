# typed: strong

module Telnyx
  module Resources
    class Dir
      # Verify ownership of a DIR's authorizer email. A short code is emailed and
      # confirmed; the email must be verified before references can be submitted.
      class VerifyEmail
        # Email a 6-digit code to the DIR's authorizer email to confirm ownership of that
        # address.
        #
        # The code expires in 15 minutes. Requesting a new code invalidates any previous
        # one. Resends are rate limited (a short cooldown plus a daily cap). Submit the
        # code to `POST /dir/{dir_id}/verify_email/confirm`.
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
