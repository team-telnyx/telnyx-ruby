# typed: strong

module Telnyx
  module Resources
    class Messsages
      # Send an RCS message
      sig do
        params(
          agent_id: String,
          agent_message: Telnyx::RcsAgentMessage::OrHash,
          messaging_profile_id: String,
          to: String,
          mms_fallback: Telnyx::MesssageRcsParams::MmsFallback::OrHash,
          sms_fallback: Telnyx::MesssageRcsParams::SMSFallback::OrHash,
          type: Telnyx::MesssageRcsParams::Type::OrSymbol,
          webhook_url: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::MesssageRcsResponse)
      end
      def rcs(
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
