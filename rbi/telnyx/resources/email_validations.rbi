# typed: strong

module Telnyx
  module Resources
    # Validate email addresses synchronously or in asynchronous batches.
    class EmailValidations
      # Validate email addresses synchronously or in asynchronous batches.
      sig { returns(Telnyx::Resources::EmailValidations::Batch) }
      attr_reader :batch

      # Validates a single email address and returns deliverability checks.
      sig do
        params(
          email: String,
          idempotency_key: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::EmailValidationCreateResponse)
      end
      def create(
        # Body param: Email address to validate. Any non-empty string is accepted; invalid
        # syntax returns valid=false rather than a request error.
        email:,
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

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
