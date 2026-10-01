# typed: strong

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
        sig do
          params(
            enterprise_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped
          )
        end
        def create(
          # The enterprise id. Lowercase UUID.
          enterprise_id,
          request_options: {}
        )
        end

        # Submit the 6-digit code that was emailed to the enterprise account's contact
        # email. On success the contact email is marked verified.
        #
        # For security, any failure (wrong, expired, already-used, or too many attempts)
        # returns the same generic message.
        sig do
          params(
            enterprise_id: String,
            code: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Enterprises::EnterpriseEmailVerificationStatusWrapped
          )
        end
        def confirm(
          # The enterprise id. Lowercase UUID.
          enterprise_id,
          # The 6-digit code sent to the enterprise account's contact email.
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
