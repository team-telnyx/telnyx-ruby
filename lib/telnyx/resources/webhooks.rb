# frozen_string_literal: true

require "base64"
require "json"
require "openssl"

module Telnyx
  module Resources
    # Telnyx webhook verification using ED25519 signatures.
    #
    # This class provides ED25519 signature verification for Telnyx webhooks,
    # matching the implementation pattern used in the Python and Node SDKs.
    #
    # Example usage:
    #
    #   client = Telnyx::Client.new(
    #     api_key: ENV["TELNYX_API_KEY"],
    #     public_key: ENV["TELNYX_PUBLIC_KEY"]  # Base64 from Mission Control
    #   )
    #
    #   # In your webhook handler:
    #   event = client.webhooks.unwrap(payload, headers)
    #
    class Webhooks
      # Telnyx webhook signature headers (case-insensitive per HTTP spec)
      SIGNATURE_HEADER = "telnyx-signature-ed25519"
      TIMESTAMP_HEADER = "telnyx-timestamp"

      # Tolerance for timestamp validation (5 minutes)
      TIMESTAMP_TOLERANCE_SECONDS = 300

      # Unwraps a webhook event from its JSON representation without verifying the signature.
      #
      # @param payload [String] The raw webhook payload as a string
      #
      # @return [Telnyx::Models::UnsafeUnwrapWebhookEvent]
      def unsafe_unwrap(payload)
        parsed = JSON.parse(payload, symbolize_names: true)
        Telnyx::Internal::Type::Converter.coerce(Telnyx::Models::UnsafeUnwrapWebhookEvent, parsed)
      end

      # Unwraps a webhook event from its JSON representation, verifying the signature if headers are provided.
      #
      # When headers are provided and the client has a public_key configured, this method will verify
      # the ED25519 signature to ensure the webhook came from Telnyx.
      #
      # @param payload [String] The raw webhook payload as a string
      # @param headers [Hash, nil] Optional HTTP headers from the webhook request
      # @param key [String, nil] Optional public key override (base64-encoded)
      #
      # @return [Telnyx::Models::UnwrapWebhookEvent]
      #
      # @raise [Telnyx::Errors::WebhookVerificationError] If signature verification fails
      def unwrap(payload, headers = nil, key: nil)
        # Get public key from argument or client
        public_key = key || @client.public_key

        # If we have headers and a public key, verify the signature
        if headers && !headers.empty? && public_key && !public_key.empty?
          verify_signature(payload, headers, public_key)
        end

        parsed = JSON.parse(payload, symbolize_names: true)
        Telnyx::Internal::Type::Converter.coerce(Telnyx::Models::UnwrapWebhookEvent, parsed)
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end

      private

      # Get header value case-insensitively
      #
      # @param headers [Hash] The headers hash
      # @param key [String] The header key to find
      #
      # @return [String, nil]
      def get_header(headers, key)
        key_lower = key.downcase
        headers.each do |header_key, header_value|
          return header_value if header_key.to_s.downcase == key_lower
        end
        nil
      end

      # Verify the webhook signature using ED25519 cryptography
      #
      # @param payload [String] The raw webhook payload
      # @param headers [Hash] The webhook headers
      # @param public_key [String] The ED25519 public key (base64-encoded)
      #
      # @raise [Telnyx::Errors::WebhookVerificationError] If verification fails
      def verify_signature(payload, headers, public_key)
        # Extract required headers (case-insensitive)
        signature_header = get_header(headers, SIGNATURE_HEADER)
        timestamp_header = get_header(headers, TIMESTAMP_HEADER)

        unless signature_header
          raise Telnyx::Errors::WebhookVerificationError.new(
            message: "Missing required header: #{SIGNATURE_HEADER}"
          )
        end

        unless timestamp_header
          raise Telnyx::Errors::WebhookVerificationError.new(
            message: "Missing required header: #{TIMESTAMP_HEADER}"
          )
        end

        # Validate timestamp to prevent replay attacks (5 minute tolerance)
        begin
          webhook_time = Integer(timestamp_header)
          current_time = Time.now.to_i
          time_diff = (current_time - webhook_time).abs

          if time_diff > TIMESTAMP_TOLERANCE_SECONDS
            raise Telnyx::Errors::WebhookVerificationError.new(
              message: "Webhook timestamp is too old or too new (#{time_diff}s difference)"
            )
          end
        rescue ArgumentError => e
          raise Telnyx::Errors::WebhookVerificationError.new(
            message: "Invalid timestamp format: #{timestamp_header}"
          )
        end

        # Decode public key from base64
        begin
          public_key_bytes = Base64.strict_decode64(public_key)

          if public_key_bytes.bytesize != 32
            raise Telnyx::Errors::WebhookVerificationError.new(
              message: "Invalid public key: expected 32 bytes, got #{public_key_bytes.bytesize} bytes"
            )
          end
        rescue ArgumentError => e
          raise Telnyx::Errors::WebhookVerificationError.new(
            message: "Invalid public key format: #{e.message}"
          )
        end

        # Decode signature from base64
        begin
          signature_bytes = Base64.strict_decode64(signature_header)

          if signature_bytes.bytesize != 64
            raise Telnyx::Errors::WebhookVerificationError.new(
              message: "Invalid signature length: expected 64 bytes, got #{signature_bytes.bytesize} bytes"
            )
          end
        rescue ArgumentError => e
          raise Telnyx::Errors::WebhookVerificationError.new(
            message: "Invalid signature format: #{e.message}"
          )
        end

        # Create the signed payload: timestamp|payload
        signed_payload = "#{timestamp_header}|#{payload}"

        # Build ED25519 public key for verification
        # The raw 32-byte key needs to be wrapped in X.509 SubjectPublicKeyInfo format
        # ED25519 OID: 1.3.101.112 = 06 03 2b 65 70
        # X.509 SPKI header for ED25519: 30 2a 30 05 06 03 2b 65 70 03 21 00
        ed25519_spki_header = [0x30, 0x2a, 0x30, 0x05, 0x06, 0x03, 0x2b, 0x65, 0x70, 0x03, 0x21, 0x00].pack("C*")
        der_key = ed25519_spki_header + public_key_bytes

        begin
          pkey = OpenSSL::PKey.read(der_key)
          valid = pkey.verify(nil, signature_bytes, signed_payload)

          unless valid
            raise Telnyx::Errors::WebhookVerificationError.new(
              message: "Signature verification failed: signature does not match payload"
            )
          end
        rescue OpenSSL::PKey::PKeyError => e
          raise Telnyx::Errors::WebhookVerificationError.new(
            message: "Signature verification failed: #{e.message}"
          )
        end
      end
    end
  end
end
