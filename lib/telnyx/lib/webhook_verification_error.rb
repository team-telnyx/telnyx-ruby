# frozen_string_literal: true

module Telnyx
  module Errors
    # Error raised when webhook signature verification fails.
    #
    # This error is raised by the webhook verification module when:
    # - No public key is configured
    # - Required headers are missing (telnyx-signature-ed25519, telnyx-timestamp)
    # - Timestamp is too old or too new (outside 5-minute tolerance)
    # - Signature verification fails
    # - Public key or signature format is invalid
    #
    # @example Handling verification errors
    #   begin
    #     client.webhooks.verify!(payload, headers)
    #   rescue Telnyx::Errors::WebhookVerificationError => e
    #     puts "Webhook verification failed: #{e.message}"
    #   end
    class WebhookVerificationError < StandardError
      # @param message [String] The error message describing the verification failure
      def initialize(message:)
        super(message)
      end
    end
  end
end
