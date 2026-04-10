# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WebhooksTest < Telnyx::Test::ResourceTest
  def test_unwrap
    key = "whsec_c2VjcmV0Cg=="

    webhook = StandardWebhooks::Webhook.new(key)

    data =
      "{\"id\":\"0ccc7b54-4df3-4bca-a65a-3da1ecc777f0\",\"event_type\":\"conference.floor.changed\",\"payload\":{\"call_control_id\":\"v3:MdI91X4lWFEs7IgbBEOT9M4AigoY08M0WWZFISt1Yw2axZ_IiE4pqg\",\"call_leg_id\":\"428c31b6-7af4-4bcb-b7f5-5013ef9657c1\",\"call_session_id\":\"428c31b6-7af4-4bcb-b7f5-5013ef9657c1\",\"client_state\":\"aGF2ZSBhIG5pY2UgZGF5ID1d\",\"conference_id\":\"428c31b6-abf3-3bc1-b7f4-5013ef9657c1\",\"connection_id\":\"7267xxxxxxxxxxxxxx\",\"occurred_at\":\"2018-02-02T22:25:27.521Z\"},\"record_type\":\"event\"}"
    message_id = "1"
    timestamp = Time.now.to_i.to_s
    signature = webhook.sign(message_id, timestamp, data)
    headers =
      {"webhook-id" => message_id, "webhook-timestamp" => timestamp, "webhook-signature" => signature}

    @telnyx.webhooks.unwrap(data, headers: headers, key: key)

    bad_headers = [
      headers.merge("webhook-id" => "bad"),
      headers.merge("webhook-timestamp" => "0"),
      headers.merge("webhook-signature" => webhook.sign(message_id, timestamp, "xxx"))
    ]
    bad_headers.each do |bad_header|
      assert_raises(StandardWebhooks::WebhookVerificationError) do
        @telnyx.webhooks.unwrap(data, headers: bad_header, key: key)
      end
    end
  end
end
