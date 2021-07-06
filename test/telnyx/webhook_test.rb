# frozen_string_literal: true

require_relative "../test_helper"
require "securerandom"

module Telnyx
  class WebhookTest < Test::Unit::TestCase
    EVENT_PAYLOAD = <<-PAYLOAD.freeze
      {
        "data": {
          "event_type": "message.received",
          "id": "39547d14-fe28-4759-8650-0a974f80a612",
          "occurred_at": "2019-07-30T23:07:36.628+00:00",
          "payload": {
            "completed_at": null,
            "cost": null,
            "direction": "inbound",
            "encoding": "GSM-7",
            "errors": [],
            "from": {
              "carrier": "T-Mobile USA",
              "line_type": "long_code",
              "phone_number": "+15745203340",
              "status": "webhook_delivered"
            },
            "id": "1e9ee507-56a5-4d1a-b26b-db3cebcc267b",
            "media": [],
            "messaging_profile_id": "13c22476-7a37-4b79-b432-e629fc3b529c",
            "organization_id": "4fc14b9e-5f17-493d-bb3d-01a8e575566d",
            "parts": 1,
            "received_at": "2019-07-30T23:07:36.623+00:00",
            "record_type": "message",
            "sent_at": null,
            "text": "And again",
            "to": "+18446087849",
            "type": "SMS",
            "valid_until": null,
            "webhook_failover_url": null,
            "webhook_url": "http://webhook.site/b041b025-0111-49dc-be4f-6b5f4bca31e4"
          },
          "record_type": "event"
        },
        "meta": {
          "attempt": 1,
          "delivered_to": "http://webhook.site/b041b025-0111-49dc-be4f-6b5f4bca31e4"
        }
      }
    PAYLOAD

    def timestamp
      @timestamp ||= Time.now.to_i
    end

    def generate_signature(opts = {})
      opts[:timestamp] ||= timestamp
      opts[:payload] ||= EVENT_PAYLOAD
      opts[:private_key] ||= signing_key

      stamped_payload = "#{opts[:timestamp]}|#{opts[:payload]}"
      Base64.encode64 opts[:private_key].sign(stamped_payload)
    end

    def signing_key
      @signing_key ||= Ed25519::SigningKey.generate
    end

    def setup
      super
      ENV["TELNYX_PUBLIC_KEY"] = Base64.encode64(signing_key.verify_key.to_bytes)
      Telnyx::Webhook::Signature.reload_verify_key
    end

    context "generated test keys" do
      should "sign and verify" do
        message = "foobar"
        signature = signing_key.sign message
        verify_key = Ed25519::VerifyKey.new(Base64.decode64(ENV.fetch("TELNYX_PUBLIC_KEY")))
        assert verify_key.verify(signature, message)
      end

      should "create and decode signature" do
        message = "lorem ipsum"
        stamped_message = "#{timestamp}|#{message}"
        signature = generate_signature(payload: message)
        verify_key = signing_key.verify_key
        assert verify_key.verify(Base64.decode64(signature), stamped_message)
      end
    end

    context ".construct_event" do
      should "return an Event instance from a valid JSON payload and valid signature header" do
        signature = generate_signature
        event = Telnyx::Webhook.construct_event(EVENT_PAYLOAD, signature, timestamp)
        assert event.is_a?(Telnyx::Event)
      end

      should "raise a JSON::ParserError from an invalid JSON payload" do
        assert_raises JSON::ParserError do
          payload = "this is not valid JSON"
          signature = generate_signature payload: payload
          Telnyx::Webhook.construct_event(payload, signature, timestamp)
        end
      end

      should "raise a SignatureVerificationError from a valid JSON payload and an invalid signature header" do
        signature = SecureRandom.base64(64)
        assert_raises Telnyx::SignatureVerificationError do
          Telnyx::Webhook.construct_event(EVENT_PAYLOAD, signature, timestamp)
        end
      end
    end

    context ".verify" do
      should "raise a SignatureVerificationError when the signature does not have the expected format" do
        signature = SecureRandom.base64(64)
        e = assert_raises(Telnyx::SignatureVerificationError) do
          Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp)
        end
        assert_match("Signature is invalid and does not match the payload", e.message)
      end

      should "raise a SignatureVerificationError when there are no valid signatures for the payload" do
        signature = generate_signature(payload: "foo", timestamp: timestamp)
        e = assert_raises(Telnyx::SignatureVerificationError) do
          Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp)
        end
        assert_match("Signature is invalid and does not match the payload", e.message)
      end

      should "raise a SignatureVerificationError when the timestamp is not within the tolerance" do
        signature = generate_signature(timestamp: Time.now.to_i - 15)
        e = assert_raises(Telnyx::SignatureVerificationError) do
          Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp - 15, tolerance: 10)
        end
        assert_match("Timestamp outside the tolerance zone", e.message)
      end

      should "return true when the signature is valid and the timestamp is within the tolerance" do
        signature = generate_signature
        assert(Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp, tolerance: 10))
      end

      should "return true when the signature is valid and the timestamp is off but no tolerance is provided" do
        timestamp = 12_345
        signature = generate_signature(timestamp: timestamp)
        assert(Telnyx::Webhook::Signature.verify(EVENT_PAYLOAD, signature, timestamp))
      end
    end
  end
end
