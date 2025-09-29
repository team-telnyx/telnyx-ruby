# frozen_string_literal: true

module Telnyx
  module Resources
    class InboundChannels
      # Update the number of Voice Channels for the US Zone. This allows your account to
      # handle multiple simultaneous inbound calls to US numbers. Use this endpoint to
      # increase or decrease your capacity based on expected call volume.
      #
      # @overload update(channels:, request_options: {})
      #
      # @param channels [Integer] The new number of concurrent channels for the account
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InboundChannelUpdateResponse]
      #
      # @see Telnyx::Models::InboundChannelUpdateParams
      def update(params)
        parsed, options = Telnyx::InboundChannelUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: "inbound_channels",
          body: parsed,
          model: Telnyx::Models::InboundChannelUpdateResponse,
          options: options
        )
      end

      # Returns the US Zone voice channels for your account. voice channels allows you
      # to use Channel Billing for calls to your Telnyx phone numbers. Please check the
      # <a href="https://support.telnyx.com/en/articles/8428806-global-channel-billing">Telnyx
      # Support Articles</a> section for full information and examples of how to utilize
      # Channel Billing.
      #
      # @overload list(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InboundChannelListResponse]
      #
      # @see Telnyx::Models::InboundChannelListParams
      def list(params = {})
        @client.request(
          method: :get,
          path: "inbound_channels",
          model: Telnyx::Models::InboundChannelListResponse,
          options: params[:request_options]
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
