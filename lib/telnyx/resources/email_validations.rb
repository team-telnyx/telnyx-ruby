# frozen_string_literal: true

module Telnyx
  module Resources
    # Validate email addresses synchronously or in asynchronous batches.
    class EmailValidations
      # Validate email addresses synchronously or in asynchronous batches.
      # @return [Telnyx::Resources::EmailValidations::Batch]
      attr_reader :batch

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::EmailValidationCreateParams} for more details.
      #
      # Validates a single email address and returns deliverability checks.
      #
      # @overload create(email:, idempotency_key: nil, request_options: {})
      #
      # @param email [String] Body param: Email address to validate. Any non-empty string is accepted; invalid
      #
      # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::EmailValidationCreateResponse]
      #
      # @see Telnyx::Models::EmailValidationCreateParams
      def create(params)
        parsed, options = Telnyx::EmailValidationCreateParams.dump_request(params)
        header_params = {idempotency_key: "idempotency-key"}
        @client.request(
          method: :post,
          path: "email_validations",
          headers: parsed.slice(*header_params.keys).transform_keys(header_params),
          body: parsed.except(*header_params.keys),
          model: Telnyx::Models::EmailValidationCreateResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @batch = Telnyx::Resources::EmailValidations::Batch.new(client: client)
      end
    end
  end
end
