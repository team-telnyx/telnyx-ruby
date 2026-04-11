# frozen_string_literal: true

require_relative "../../telnyx/test_helper"

class Telnyx::Lib::WebhookVerificationTest < Minitest::Test
  # Generate a test ED25519 keypair for signing/verification
  def setup
    @ed25519_key = OpenSSL::PKey.generate_key("ED25519")
    # Extract raw 32-byte public key from SPKI DER (last 32 bytes)
    @public_key_bytes = @ed25519_key.public_to_der[-32..]
    @public_key_b64 = Base64.strict_encode64(@public_key_bytes)
  end

  def test_unwrap_with_ed25519
    payload = JSON.generate(
      {
        id: "0ccc7b54-4df3-4bca-a65a-3da1ecc777f0",
        event_type: "conference.floor.changed",
        payload: {
          call_control_id: "v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg",
          call_leg_id: "428c31b6-7af4-4bcb-b7f5-5013ef9657c1",
          call_session_id: "428c31b6-7af4-4bcb-b7f5-5013ef9657c1",
          client_state: "aGF2ZSBhIG5pY2UgZGF5ID1d",
          conference_id: "428c31b6-abf3-3bc1-b7f4-5013ef9657c1",
          connection_id: "7267xxxxxxxxxxxxxx",
          occurred_at: "2018-02-02T22:25:27.521Z"
        },
        record_type: "event"
      }
    )
    timestamp = Time.now.to_i.to_s

    # Sign the payload: timestamp|payload
    signed_payload = "#{timestamp}|#{payload}"
    signature_bytes = @ed25519_key.sign(nil, signed_payload)
    signature_b64 = Base64.strict_encode64(signature_bytes)

    headers = {
      "telnyx-signature-ed25519" => signature_b64,
      "telnyx-timestamp" => timestamp
    }

    client = Telnyx::Client.new(api_key: "test", public_key: @public_key_b64)
    result = client.webhooks.unwrap(payload, headers: headers)

    assert(result.is_a?(Telnyx::Internal::Type::BaseModel))
  end

  def test_unwrap_rejects_invalid_signature
    payload = '{"id":"test","event_type":"test","record_type":"event"}'
    timestamp = Time.now.to_i.to_s

    # Sign with correct key, then tamper with the signature
    signed_payload = "#{timestamp}|#{payload}"
    signature_bytes = @ed25519_key.sign(nil, signed_payload)
    signature_bytes = signature_bytes.dup
    signature_bytes.setbyte(0, signature_bytes.getbyte(0) ^ 0xFF)
    signature_b64 = Base64.strict_encode64(signature_bytes)

    headers = {
      "telnyx-signature-ed25519" => signature_b64,
      "telnyx-timestamp" => timestamp
    }

    client = Telnyx::Client.new(api_key: "test", public_key: @public_key_b64)

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(payload, headers: headers)
    end
  end

  def test_unwrap_rejects_expired_timestamp
    payload = '{"id":"test","event_type":"test","record_type":"event"}'
    # 10 minutes ago — beyond the 5-minute tolerance
    timestamp = (Time.now.to_i - 600).to_s

    signed_payload = "#{timestamp}|#{payload}"
    signature_bytes = @ed25519_key.sign(nil, signed_payload)
    signature_b64 = Base64.strict_encode64(signature_bytes)

    headers = {
      "telnyx-signature-ed25519" => signature_b64,
      "telnyx-timestamp" => timestamp
    }

    client = Telnyx::Client.new(api_key: "test", public_key: @public_key_b64)

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(payload, headers: headers)
    end
  end

  def test_unwrap_rejects_missing_signature_header
    payload = '{"id":"test","event_type":"test","record_type":"event"}'
    timestamp = Time.now.to_i.to_s

    headers = {
      "telnyx-timestamp" => timestamp
    }

    client = Telnyx::Client.new(api_key: "test", public_key: @public_key_b64)

    error = assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(payload, headers: headers)
    end
    assert_match(/telnyx-signature-ed25519/i, error.message)
  end

  def test_unwrap_rejects_missing_timestamp_header
    payload = '{"id":"test","event_type":"test","record_type":"event"}'
    timestamp = Time.now.to_i.to_s

    signed_payload = "#{timestamp}|#{payload}"
    signature_bytes = @ed25519_key.sign(nil, signed_payload)
    signature_b64 = Base64.strict_encode64(signature_bytes)

    headers = {
      "telnyx-signature-ed25519" => signature_b64
    }

    client = Telnyx::Client.new(api_key: "test", public_key: @public_key_b64)

    error = assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(payload, headers: headers)
    end
    assert_match(/telnyx-timestamp/i, error.message)
  end

  def test_unwrap_with_key_override
    payload = '{"id":"test","event_type":"test","record_type":"event"}'
    timestamp = Time.now.to_i.to_s

    signed_payload = "#{timestamp}|#{payload}"
    signature_bytes = @ed25519_key.sign(nil, signed_payload)
    signature_b64 = Base64.strict_encode64(signature_bytes)

    headers = {
      "telnyx-signature-ed25519" => signature_b64,
      "telnyx-timestamp" => timestamp
    }

    # Client with no public_key, but key override in unwrap call
    client = Telnyx::Client.new(api_key: "test")
    result = client.webhooks.unwrap(payload, headers: headers, key: @public_key_b64)

    assert(result.is_a?(Telnyx::Internal::Type::BaseModel))
  end

  def test_unwrap_case_insensitive_headers
    payload = '{"id":"test","event_type":"test","record_type":"event"}'
    timestamp = Time.now.to_i.to_s

    signed_payload = "#{timestamp}|#{payload}"
    signature_bytes = @ed25519_key.sign(nil, signed_payload)
    signature_b64 = Base64.strict_encode64(signature_bytes)

    # Use mixed-case headers
    headers = {
      "Telnyx-Signature-Ed25519" => signature_b64,
      "Telnyx-Timestamp" => timestamp
    }

    client = Telnyx::Client.new(api_key: "test", public_key: @public_key_b64)
    result = client.webhooks.unwrap(payload, headers: headers)

    assert(result.is_a?(Telnyx::Internal::Type::BaseModel))
  end
end
