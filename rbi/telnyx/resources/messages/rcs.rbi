# typed: strong

module Telnyx
  module Resources
    class Messages
      # Send RCS messages
      class Rcs
        # Generate a deeplink URL that can be used to start an RCS conversation with a
        # specific agent.
        sig do
          params(
            agent_id: String,
            body: String,
            phone_number: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messages::RcGenerateDeeplinkResponse)
        end
        def generate_deeplink(
          # RCS agent ID
          agent_id,
          # Pre-filled message body (URL encoded)
          body: nil,
          # Phone number in E164 format (URL encoded)
          phone_number: nil,
          request_options: {}
        )
        end

        # Queues an outbound RCS message through the selected RCS agent. Check recipient
        # capabilities before sending features that require RCS support.
        sig do
          params(
            agent_id: String,
            agent_message: Telnyx::RcsAgentMessage::OrHash,
            messaging_profile_id: String,
            to: String,
            mms_fallback: Telnyx::Messages::RcSendParams::MmsFallback::OrHash,
            sms_fallback: Telnyx::Messages::RcSendParams::SMSFallback::OrHash,
            type: Telnyx::Messages::RcSendParams::Type::OrSymbol,
            webhook_url: String,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messages::RcSendResponse)
        end
        def send_(
          # Body param: RCS Agent ID
          agent_id:,
          # Body param
          agent_message:,
          # Body param: A valid messaging profile ID
          messaging_profile_id:,
          # Body param: Phone number in +E.164 format
          to:,
          # Body param
          mms_fallback: nil,
          # Body param
          sms_fallback: nil,
          # Body param: Message type - must be set to "RCS"
          type: nil,
          # Body param: The URL where webhooks related to this message will be sent.
          webhook_url: nil,
          # Header param: Optional opaque, unquoted key for safely retrying the same logical
          # request. Keys must contain 1 to 255 letters, numbers, hyphens, or underscores.
          # Generate a unique UUID v4 for each operation and reuse it only when retrying
          # that operation with the same request. Invalid headers—including duplicate,
          # empty, malformed, or overlong values—return 400 with error code 10015. A request
          # already in progress with the same key returns 409; reusing the key with a
          # different request returns 422. Only successful responses are replayed, for up to
          # 24 hours. Do not include sensitive data in the key.
          idempotency_key: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
