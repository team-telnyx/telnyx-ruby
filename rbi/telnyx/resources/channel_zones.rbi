# typed: strong

module Telnyx
  module Resources
    class ChannelZones
      # Update the number of Voice Channels for the Non-US Zones. This allows your
      # account to handle multiple simultaneous inbound calls to Non-US numbers. Use
      # this endpoint to increase or decrease your capacity based on expected call
      # volume.
      sig do
        params(
          channel_zone_id: String,
          channels: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ChannelZoneUpdateResponse)
      end
      def update(
        # Channel zone identifier
        channel_zone_id,
        # The number of reserved channels
        channels:,
        request_options: {}
      )
      end

      # Returns the non-US voice channels for your account. voice channels allow you to
      # use Channel Billing for calls to your Telnyx phone numbers. Please check the
      # <a href="https://support.telnyx.com/en/articles/8428806-global-channel-billing">Telnyx
      # Support Articles</a> section for full information and examples of how to utilize
      # Channel Billing.
      sig do
        params(
          page: Telnyx::ChannelZoneListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[
            Telnyx::Models::ChannelZoneListResponse
          ]
        )
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
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
