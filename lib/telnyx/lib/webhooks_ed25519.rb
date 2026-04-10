# frozen_string_literal: true

require_relative "webhook_verification"
require_relative "webhook_verification_error"

module Telnyx
  module Resources
    # Extends the generated Webhooks class with ED25519 signature verification.
    #
    # This reopens the Webhooks class to include the WebhookVerification module,
    # which adds ED25519 signature verification matching Python, Node, Go, and Java SDKs.
    #
    # Usage:
    #
    #   require "telnyx"
    #   # ED25519 verification is now loaded by default — no extra require needed
    #
    #   client = Telnyx::Client.new(
    #     api_key: ENV["TELNYX_API_KEY"],
    #     public_key: ENV["TELNYX_PUBLIC_KEY"]  # Base64 from Mission Control
    #   )
    #
    #   # Verify signature only (raises WebhookVerificationError on failure)
    #   client.webhooks.verify!(payload, headers)
    #
    #   # Verify and parse (ED25519 verification, then parse)
    #   event = client.webhooks.unwrap(payload, headers: headers)
    #
    class Webhooks
      include Telnyx::Lib::WebhookVerification

      # Override unwrap to use ED25519 verification instead of StandardWebhooks.
      #
      # @param payload [String] The raw webhook payload as a string
      # @param headers [Hash{String=>String}] The raw HTTP headers
      # @param key [String, nil] Optional public key override (base64-encoded ED25519)
      #
      # @return [Telnyx::Models::UnwrapWebhookEvent]
      # @raise [Telnyx::Errors::WebhookVerificationError] If verification fails
      def unwrap(payload, headers:, key: nil)
        # Use ED25519 verification
        do_verify_signature(payload, headers, key || @client.public_key)

        # Parse the payload
        parsed = JSON.parse(payload, symbolize_names: true)
        Telnyx::Internal::Type::Converter.coerce(Telnyx::Models::UnwrapWebhookEvent, parsed)
      end
    end
  end
end
