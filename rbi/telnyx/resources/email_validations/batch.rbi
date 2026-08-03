# typed: strong

module Telnyx
  module Resources
    class EmailValidations
      # Validate email addresses synchronously or in asynchronous batches.
      class Batch
        # Creates an asynchronous batch validation job for up to 1,000 email addresses.
        sig do
          params(
            emails: T::Array[String],
            webhook_url: String,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailValidations::BatchCreateResponse)
        end
        def create(
          # Body param
          emails:,
          # Body param: URL for batch completion webhook. Empty string is treated as
          # omitted. SSRF-protected; private/reserved IPs and internal hostnames are
          # rejected.
          webhook_url: nil,
          # Header param: Optional opaque, unquoted key for safely retrying the same logical
          # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
          # Generate a unique UUID v4 for each operation and reuse it only when retrying
          # that operation with the same request. Invalid headers—including duplicate,
          # empty, malformed, or overlong values—return 400 with error code 10015. A request
          # already in progress with the same key returns 409; reusing the key with a
          # different request returns 422. Only successful responses are replayed, for up to
          # 24 hours. Do not include sensitive data in the key.
          idempotency_key: nil,
          request_options: {}
        )
        end

        # Retrieves the current status and, once completed, validation results for a batch
        # job.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::EmailValidations::BatchRetrieveResponse)
        end
        def retrieve(
          # Email validation batch UUID.
          id,
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
