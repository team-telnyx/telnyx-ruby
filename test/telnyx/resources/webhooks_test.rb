# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WebhooksTest < Telnyx::Test::ResourceTest
  def setup
    super
    @ed25519_key = OpenSSL::PKey.generate_key("ED25519")
    @public_key = Base64.strict_encode64(@ed25519_key.public_to_der[-32..])
  end

  def test_generator_native_verifier_is_module_api
    assert_respond_to(Telnyx::Lib::WebhookVerification, :verify_signature!)
  end

  def test_unwrap_verifies_exact_payload_with_case_insensitive_headers
    payload = valid_payload
    headers = signed_headers(payload, header_case: :mixed)
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)

    event = client.webhooks.unwrap(payload, headers: headers)

    assert_pattern do
      event => Telnyx::Internal::Type::BaseModel
    end
  end

  def test_unwrap_rejects_missing_headers_before_parsing
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)

    assert_raises(ArgumentError) { client.webhooks.unwrap("not json") }
  end

  def test_unwrap_rejects_missing_public_key
    payload = valid_payload
    client = Telnyx::Client.new(api_key: "test")

    error = assert_raises(ArgumentError) do
      client.webhooks.unwrap(payload, headers: signed_headers(payload))
    end
    assert_match(/public[_ ]key/i, error.message)
  end

  def test_unwrap_rejects_missing_signature_header
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)

    error = assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(valid_payload, headers: {"telnyx-timestamp" => Time.now.to_i.to_s})
    end
    assert_match(/telnyx-signature-ed25519/i, error.message)
  end

  def test_unwrap_rejects_missing_timestamp_header
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)

    error = assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(valid_payload, headers: {"telnyx-signature-ed25519" => "signature"})
    end
    assert_match(/telnyx-timestamp/i, error.message)
  end

  def test_unwrap_rejects_malformed_timestamp
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)
    headers = {
      "telnyx-signature-ed25519" => Base64.strict_encode64("x" * 64),
      "telnyx-timestamp" => "not-an-integer"
    }

    error = assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(valid_payload, headers: headers)
    end
    assert_match(/invalid webhook timestamp/i, error.message)
  end

  def test_unwrap_rejects_expired_and_future_timestamps
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)

    [-600, 600].each do |offset|
      timestamp = (Time.now.to_i + offset).to_s
      assert_raises(Telnyx::Errors::WebhookVerificationError) do
        client.webhooks.unwrap(
          valid_payload,
          headers: signed_headers(valid_payload, timestamp: timestamp)
        )
      end
    end
  end

  def test_unwrap_rejects_tampered_payload
    headers = signed_headers(valid_payload)
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap("#{valid_payload} ", headers: headers)
    end
  end

  def test_unwrap_rejects_wrong_key_and_malformed_signature
    payload = valid_payload
    headers = signed_headers(payload)
    wrong_key = OpenSSL::PKey.generate_key("ED25519")
    wrong_public_key = Base64.strict_encode64(wrong_key.public_to_der[-32..])
    wrong_key_client = Telnyx::Client.new(api_key: "test", public_key: wrong_public_key)

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      wrong_key_client.webhooks.unwrap(payload, headers: headers)
    end

    malformed_headers = headers.merge("telnyx-signature-ed25519" => "not-base64!")
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)
    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(payload, headers: malformed_headers)
    end
  end

  def test_unwrap_accepts_per_call_key_override
    payload = valid_payload
    client = Telnyx::Client.new(api_key: "test")

    event = client.webhooks.unwrap(
      payload,
      headers: signed_headers(payload),
      key: @public_key
    )

    assert_pattern do
      event => Telnyx::Internal::Type::BaseModel
    end
  end

  def test_unwrap_verifies_before_json_parsing
    payload = "not json"
    client = Telnyx::Client.new(api_key: "test", public_key: @public_key)

    assert_raises(JSON::ParserError) do
      client.webhooks.unwrap(payload, headers: signed_headers(payload))
    end
  end

  def test_unsafe_unwrap_is_the_explicit_verification_bypass
    client = Telnyx::Client.new(api_key: "test")

    event = client.webhooks.unsafe_unwrap(valid_payload)

    assert_pattern do
      event => Telnyx::Internal::Type::BaseModel
    end
  end

  private

  def signed_headers(payload, timestamp: Time.now.to_i.to_s, header_case: :lower)
    signature = Base64.strict_encode64(@ed25519_key.sign(nil, "#{timestamp}|#{payload}"))
    if header_case == :mixed
      {
        "Telnyx-Signature-Ed25519" => signature,
        "Telnyx-Timestamp" => timestamp
      }
    else
      {
        "telnyx-signature-ed25519" => signature,
        "telnyx-timestamp" => timestamp
      }
    end
  end

  def valid_payload
    JSON.generate(
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
  end
end
