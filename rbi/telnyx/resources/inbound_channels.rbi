# typed: strong

module Telnyx
  module Resources
    class InboundChannels
      # Update the number of Voice Channels for the US Zone. This allows your account to
      # handle multiple simultaneous inbound calls to US numbers. Use this endpoint to
      # increase or decrease your capacity based on expected call volume.
      sig do
        params(
          channels: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InboundChannelUpdateResponse)
      end
      def update(
        # The new number of concurrent channels for the account
        channels:,
        request_options: {}
      )
      end

      # Returns the US Zone voice channels for your account. voice channels allows you
      # to use Channel Billing for calls to your Telnyx phone numbers. Please check the
      # <a href="https://support.telnyx.com/en/articles/8428806-global-channel-billing">Telnyx
      # Support Articles</a> section for full information and examples of how to utilize
      # Channel Billing.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::InboundChannelListResponse
        )
      end
      def list(request_options: {})
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
