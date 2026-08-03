# frozen_string_literal: true

module Telnyx
  module Resources
    class EmailValidations
      # Validate email addresses synchronously or in asynchronous batches.
      class Batch
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::EmailValidations::BatchCreateParams} for more details.
        #
        # Creates an asynchronous batch validation job for up to 1,000 email addresses.
        #
        # @overload create(emails:, webhook_url: nil, idempotency_key: nil, request_options: {})
        #
        # @param emails [Array<String>] Body param
        #
        # @param webhook_url [String] Body param: URL for batch completion webhook. Empty string is treated as omitted
        #
        # @param idempotency_key [String] Header param: Optional opaque, unquoted key for safely retrying the same logical
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailValidations::BatchCreateResponse]
        #
        # @see Telnyx::Models::EmailValidations::BatchCreateParams
        def create(params)
          parsed, options = Telnyx::EmailValidations::BatchCreateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key"}
          @client.request(
            method: :post,
            path: "email_validations/batch",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::Models::EmailValidations::BatchCreateResponse,
            options: options
          )
        end

        # Retrieves the current status and, once completed, validation results for a batch
        # job.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Email validation batch UUID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::EmailValidations::BatchRetrieveResponse]
        #
        # @see Telnyx::Models::EmailValidations::BatchRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["email_validations/batch/%1$s", id],
            model: Telnyx::Models::EmailValidations::BatchRetrieveResponse,
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
