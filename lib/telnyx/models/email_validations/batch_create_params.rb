# frozen_string_literal: true

module Telnyx
  module Models
    module EmailValidations
      # @see Telnyx::Resources::EmailValidations::Batch#create
      class BatchCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute emails
        #
        #   @return [Array<String>]
        required :emails, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute webhook_url
        #   URL for batch completion webhook. Empty string is treated as omitted.
        #   SSRF-protected; private/reserved IPs and internal hostnames are rejected.
        #
        #   @return [String, nil]
        optional :webhook_url, String

        # @!attribute idempotency_key
        #
        #   @return [String, nil]
        optional :idempotency_key, String

        # @!method initialize(emails:, webhook_url: nil, idempotency_key: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::EmailValidations::BatchCreateParams} for more details.
        #
        #   @param emails [Array<String>]
        #
        #   @param webhook_url [String] URL for batch completion webhook. Empty string is treated as omitted. SSRF-prote
        #
        #   @param idempotency_key [String]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
