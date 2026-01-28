# frozen_string_literal: true

module Telnyx
  module Resources
    class ChannelZones
      # Update the number of Voice Channels for the Non-US Zones. This allows your
      # account to handle multiple simultaneous inbound calls to Non-US numbers. Use
      # this endpoint to increase or decrease your capacity based on expected call
      # volume.
      #
      # @overload update(channel_zone_id, channels:, request_options: {})
      #
      # @param channel_zone_id [String] Channel zone identifier
      #
      # @param channels [Integer] The number of reserved channels
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::ChannelZoneUpdateResponse]
      #
      # @see Telnyx::Models::ChannelZoneUpdateParams
      def update(channel_zone_id, params)
        parsed, options = Telnyx::ChannelZoneUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["channel_zones/%1$s", channel_zone_id],
          body: parsed,
          model: Telnyx::Models::ChannelZoneUpdateResponse,
          options: options
        )
      end

      # Returns the non-US voice channels for your account. voice channels allow you to
      # use Channel Billing for calls to your Telnyx phone numbers. Please check the
      # <a href="https://support.telnyx.com/en/articles/8428806-global-channel-billing">Telnyx
      # Support Articles</a> section for full information and examples of how to utilize
      # Channel Billing.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::ChannelZoneListResponse>]
      #
      # @see Telnyx::Models::ChannelZoneListParams
      def list(params = {})
        parsed, options = Telnyx::ChannelZoneListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "channel_zones",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::Models::ChannelZoneListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
