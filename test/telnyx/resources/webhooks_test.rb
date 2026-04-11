# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WebhooksTest < Telnyx::Test::ResourceTest
  def test_unwrap
    # Generate an ED25519 keypair for testing
    ed25519_key = OpenSSL::PKey.generate_key("ED25519")
    public_key_bytes = ed25519_key.public_to_der[-32..]
    public_key_b64 = Base64.strict_encode64(public_key_bytes)

    data = JSON.generate(
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

    # Sign the payload with ED25519: timestamp|payload
    signed_payload = "#{timestamp}|#{data}"
    signature_bytes = ed25519_key.sign(nil, signed_payload)
    signature_b64 = Base64.strict_encode64(signature_bytes)

    headers = {
      "telnyx-signature-ed25519" => signature_b64,
      "telnyx-timestamp" => timestamp
    }

    client = Telnyx::Client.new(api_key: "test", public_key: public_key_b64)
    result = client.webhooks.unwrap(data, headers: headers)
    assert(result.is_a?(Telnyx::Internal::Type::BaseModel))

    # Verify that tampered signatures are rejected
    bad_sig = Base64.strict_encode64(signature_bytes[0..31] + ("x" * 32).bytes.pack("C*"))
    bad_headers = [
      headers.merge("telnyx-signature-ed25519" => Base64.strict_encode64("x" * 64)),
      headers.merge("telnyx-timestamp" => (Time.now.to_i - 600).to_s),
      headers.merge("telnyx-signature-ed25519" => bad_sig)
    ]
    bad_headers.each do |bad_header|
      assert_raises(Telnyx::Errors::WebhookVerificationError) do
        client.webhooks.unwrap(data, headers: bad_header)
      end
    end
  end
end
