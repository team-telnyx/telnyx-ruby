# frozen_string_literal: true

require_relative "../test_helper"
require "openssl"
require "base64"

class Telnyx::Test::Resources::WebhooksTest < Telnyx::Test::ResourceTest
  def setup
    # Generate a test ED25519 keypair
    @private_key = OpenSSL::PKey.generate_key("ED25519")

    # Extract the raw 32-byte public key from the DER encoding
    # ED25519 public keys in X.509 SPKI format have a 12-byte header
    public_key_der = @private_key.public_to_der
    @public_key_bytes = public_key_der[-32, 32]
    @public_key_b64 = Base64.strict_encode64(@public_key_bytes)

    @payload = '{"data":{"id":"test-123","event_type":"message.received",' \
               '"occurred_at":"2026-02-10T17:30:00Z","payload":{"text":"Hello"},' \
               '"record_type":"event"}}'
  end

  def sign_payload(timestamp, payload)
    signed_payload = "#{timestamp}|#{payload}"
    signature = @private_key.sign(nil, signed_payload)
    Base64.strict_encode64(signature)
  end

  def test_unsafe_unwrap
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key"
    )

    event = client.webhooks.unsafe_unwrap(@payload)
    # UnsafeUnwrapWebhookEvent is a Union, so check that result is one of its variants
    assert(Telnyx::Models::UnsafeUnwrapWebhookEvent.variants.any? { |v| event.is_a?(v) })
  end

  def test_unwrap_without_headers
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key"
    )

    # Without headers, unwrap should just parse the payload
    event = client.webhooks.unwrap(@payload)
    # UnwrapWebhookEvent is a Union, so check that result is one of its variants
    assert(Telnyx::Models::UnwrapWebhookEvent.variants.any? { |v| event.is_a?(v) })
  end

  def test_unwrap_with_valid_signature
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: @public_key_b64
    )

    timestamp = Time.now.to_i
    signature = sign_payload(timestamp, @payload)

    headers = {
      "telnyx-signature-ed25519" => signature,
      "telnyx-timestamp" => timestamp.to_s
    }

    event = client.webhooks.unwrap(@payload, headers)
    # UnwrapWebhookEvent is a Union, so check that result is one of its variants
    assert(Telnyx::Models::UnwrapWebhookEvent.variants.any? { |v| event.is_a?(v) })
  end

  def test_unwrap_with_case_insensitive_headers
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: @public_key_b64
    )

    timestamp = Time.now.to_i
    signature = sign_payload(timestamp, @payload)

    # Use different case for headers
    headers = {
      "Telnyx-Signature-Ed25519" => signature,
      "Telnyx-Timestamp" => timestamp.to_s
    }

    event = client.webhooks.unwrap(@payload, headers)
    # UnwrapWebhookEvent is a Union, so check that result is one of its variants
    assert(Telnyx::Models::UnwrapWebhookEvent.variants.any? { |v| event.is_a?(v) })
  end

  def test_unwrap_with_wrong_public_key
    # Generate a different keypair
    wrong_private_key = OpenSSL::PKey.generate_key("ED25519")
    wrong_public_key_der = wrong_private_key.public_to_der
    wrong_public_key_b64 = Base64.strict_encode64(wrong_public_key_der[-32, 32])

    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: wrong_public_key_b64
    )

    timestamp = Time.now.to_i
    signature = sign_payload(timestamp, @payload)

    headers = {
      "telnyx-signature-ed25519" => signature,
      "telnyx-timestamp" => timestamp.to_s
    }

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(@payload, headers)
    end
  end

  def test_unwrap_with_bad_signature
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: @public_key_b64
    )

    timestamp = Time.now.to_i
    # Sign a different payload
    bad_signature = sign_payload(timestamp, "some other payload")

    headers = {
      "telnyx-signature-ed25519" => bad_signature,
      "telnyx-timestamp" => timestamp.to_s
    }

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(@payload, headers)
    end
  end

  def test_unwrap_with_old_timestamp
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: @public_key_b64
    )

    # Timestamp 10 minutes ago (beyond 5 minute tolerance)
    old_timestamp = Time.now.to_i - 600
    signature = sign_payload(old_timestamp, @payload)

    headers = {
      "telnyx-signature-ed25519" => signature,
      "telnyx-timestamp" => old_timestamp.to_s
    }

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(@payload, headers)
    end
  end

  def test_unwrap_with_missing_signature_header
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: @public_key_b64
    )

    timestamp = Time.now.to_i

    headers = {
      "telnyx-timestamp" => timestamp.to_s
    }

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(@payload, headers)
    end
  end

  def test_unwrap_with_missing_timestamp_header
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: @public_key_b64
    )

    timestamp = Time.now.to_i
    signature = sign_payload(timestamp, @payload)

    headers = {
      "telnyx-signature-ed25519" => signature
    }

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.unwrap(@payload, headers)
    end
  end

  def test_unwrap_with_key_override
    # Client has no public key
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key"
    )

    timestamp = Time.now.to_i
    signature = sign_payload(timestamp, @payload)

    headers = {
      "telnyx-signature-ed25519" => signature,
      "telnyx-timestamp" => timestamp.to_s
    }

    # Pass key as argument
    event = client.webhooks.unwrap(@payload, headers, key: @public_key_b64)
    # UnwrapWebhookEvent is a Union, so check that result is one of its variants
    assert(Telnyx::Models::UnwrapWebhookEvent.variants.any? { |v| event.is_a?(v) })
  end

  # Tests for the standalone verify!() method (Node SDK consistency)

  def test_verify_with_valid_signature
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: @public_key_b64
    )

    timestamp = Time.now.to_i
    signature = sign_payload(timestamp, @payload)

    headers = {
      "telnyx-signature-ed25519" => signature,
      "telnyx-timestamp" => timestamp.to_s
    }

    # verify! returns nil on success, raises on failure
    assert_nil(client.webhooks.verify!(@payload, headers))
  end

  def test_verify_with_invalid_signature
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key",
      public_key: @public_key_b64
    )

    timestamp = Time.now.to_i
    bad_signature = sign_payload(timestamp, "different payload")

    headers = {
      "telnyx-signature-ed25519" => bad_signature,
      "telnyx-timestamp" => timestamp.to_s
    }

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.verify!(@payload, headers)
    end
  end

  def test_verify_with_key_override
    # Client has no public key
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key"
    )

    timestamp = Time.now.to_i
    signature = sign_payload(timestamp, @payload)

    headers = {
      "telnyx-signature-ed25519" => signature,
      "telnyx-timestamp" => timestamp.to_s
    }

    # verify! returns nil on success, raises on failure
    assert_nil(client.webhooks.verify!(@payload, headers, key: @public_key_b64))
  end

  def test_verify_without_public_key
    # Client has no public key and no key provided
    client = Telnyx::Client.new(
      base_url: Telnyx::Test::SingletonClient::TEST_API_BASE_URL,
      api_key: "My API Key"
    )

    timestamp = Time.now.to_i
    signature = sign_payload(timestamp, @payload)

    headers = {
      "telnyx-signature-ed25519" => signature,
      "telnyx-timestamp" => timestamp.to_s
    }

    assert_raises(Telnyx::Errors::WebhookVerificationError) do
      client.webhooks.verify!(@payload, headers)
    end
  end
end
