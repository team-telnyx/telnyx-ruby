# typed: strong

module Telnyx
  module Resources
    class Messages
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

        # Send an RCS message
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
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Messages::RcSendResponse)
        end
        def send_(
          # RCS Agent ID
          agent_id:,
          agent_message:,
          # A valid messaging profile ID
          messaging_profile_id:,
          # Phone number in +E.164 format
          to:,
          mms_fallback: nil,
          sms_fallback: nil,
          # Message type - must be set to "RCS"
          type: nil,
          # The URL where webhooks related to this message will be sent.
          webhook_url: nil,
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
