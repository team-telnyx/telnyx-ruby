# frozen_string_literal: true

require "base64"
require "openssl"

module Telnyx
  module Lib
    # Telnyx Ed25519 webhook verification over the exact raw payload bytes.
    module WebhookVerification
      SIGNATURE_HEADER = "telnyx-signature-ed25519"
      TIMESTAMP_HEADER = "telnyx-timestamp"
      DEFAULT_TOLERANCE = 300
      ED25519_SPKI_PREFIX = ["302a300506032b6570032100"].pack("H*").freeze

      class << self
        # Verify a Telnyx webhook signature before the caller parses the payload.
        #
        # @param payload [String] exact raw request body
        # @param headers [Hash] request headers (looked up case-insensitively)
        # @param public_key [String] Base64-encoded raw 32-byte Ed25519 public key
        # @return [true]
        # @raise [Telnyx::Errors::WebhookVerificationError] if verification fails
        def verify_signature!(payload, headers, public_key)
          signature_header = get_header(headers, SIGNATURE_HEADER)
          timestamp = get_header(headers, TIMESTAMP_HEADER)

          fail_verification("Missing required header: telnyx-signature-ed25519") if signature_header.nil? || signature_header.empty?
          fail_verification("Missing required header: telnyx-timestamp") if timestamp.nil? || timestamp.empty?
          fail_verification("Public key is required for webhook verification") if public_key.nil? || public_key.empty?

          timestamp_int = parse_timestamp(timestamp)
          if (Time.now.to_i - timestamp_int).abs > DEFAULT_TOLERANCE
            fail_verification("Webhook timestamp is too old or too far in the future")
          end

          key = parse_public_key(public_key)
          signature = Base64.strict_decode64(signature_header)
          signed_payload = "#{timestamp}|#{payload}"

          fail_verification("Invalid webhook signature") unless key.verify(nil, signature, signed_payload)

          true
        rescue Telnyx::Errors::WebhookVerificationError
          raise
        rescue ArgumentError => e
          fail_verification("Invalid webhook signature or public key encoding: #{e.message}")
        rescue OpenSSL::PKey::PKeyError => e
          fail_verification("Invalid Ed25519 public key: #{e.message}")
        rescue OpenSSL::OpenSSLError => e
          fail_verification("Webhook verification failed: #{e.message}")
        end

        private

        def fail_verification(message)
          raise Telnyx::Errors::WebhookVerificationError.new(message: message)
        end

        def get_header(headers, name)
          headers.each do |key, value|
            return value if key.to_s.downcase == name
          end
          nil
        end

        def parse_timestamp(timestamp)
          Integer(timestamp, 10)
        rescue ArgumentError, TypeError
          fail_verification("Invalid webhook timestamp: #{timestamp.inspect}")
        end

        def parse_public_key(public_key)
          decoded_key = Base64.strict_decode64(public_key)
          unless decoded_key.bytesize == 32
            fail_verification(
              "Invalid Ed25519 public key length: expected 32 bytes, got #{decoded_key.bytesize}"
            )
          end

          OpenSSL::PKey.read(ED25519_SPKI_PREFIX + decoded_key)
        end
      end
    end
  end
end
