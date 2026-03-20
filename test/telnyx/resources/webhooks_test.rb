# frozen_string_literal: true

require_relative "../test_helper"

class Telnyx::Test::Resources::WebhooksTest < Telnyx::Test::ResourceTest
  def test_unwrap
    key = "whsec_c2VjcmV0Cg=="

    webhook = StandardWebhooks::Webhook.new(key)

    data =
      "{\"data\":{\"id\":\"0ccc7b54-4df3-4bca-a65a-3da1ecc777f0\",\"event_type\":\"call.ai_gather.ended\",\"occurred_at\":\"2018-02-02T22:25:27.521992Z\",\"payload\":{\"call_control_id\":\"v2:T02llQxIyaRkhfRKxgAP8nY511EhFLizdvdUKJiSw8d6A9BborherQ\",\"call_leg_id\":\"428c31b6-7af4-4bcb-b7f5-5013ef9657c1\",\"call_session_id\":\"428c31b6-7af4-4bcb-b7f5-5013ef9657c1\",\"client_state\":\"aGF2ZSBhIG5pY2UgZGF5ID1d\",\"connection_id\":\"7267xxxxxxxxxxxxxx\",\"from\":\"+35319605860\",\"message_history\":[{\"content\":\"Hello, can you tell me your age and where you live?\",\"role\":\"assistant\"},{\"content\":\"Hello, I'm 29 and I live in Paris?\",\"role\":\"user\"}],\"result\":{\"age\":\"bar\",\"city\":\"bar\"},\"status\":\"valid\",\"to\":\"+35319605860\"},\"record_type\":\"event\"}}"
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
