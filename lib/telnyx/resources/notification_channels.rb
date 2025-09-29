# frozen_string_literal: true

module Telnyx
  module Resources
    class NotificationChannels
      # Create a notification channel.
      #
      # @overload create(channel_destination: nil, channel_type_id: nil, notification_profile_id: nil, request_options: {})
      #
      # @param channel_destination [String] The destination associated with the channel type.
      #
      # @param channel_type_id [Symbol, Telnyx::Models::NotificationChannel::ChannelTypeID] A Channel Type ID
      #
      # @param notification_profile_id [String] A UUID reference to the associated Notification Profile.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationChannelCreateResponse]
      #
      # @see Telnyx::Models::NotificationChannelCreateParams
      def create(params = {})
        parsed, options = Telnyx::NotificationChannelCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "notification_channels",
          body: parsed,
          model: Telnyx::Models::NotificationChannelCreateResponse,
          options: options
        )
      end

      # Get a notification channel.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The id of the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationChannelRetrieveResponse]
      #
      # @see Telnyx::Models::NotificationChannelRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["notification_channels/%1$s", id],
          model: Telnyx::Models::NotificationChannelRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a notification channel.
      #
      # @overload update(id, channel_destination: nil, channel_type_id: nil, notification_profile_id: nil, request_options: {})
      #
      # @param id [String] The id of the resource.
      #
      # @param channel_destination [String] The destination associated with the channel type.
      #
      # @param channel_type_id [Symbol, Telnyx::Models::NotificationChannel::ChannelTypeID] A Channel Type ID
      #
      # @param notification_profile_id [String] A UUID reference to the associated Notification Profile.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationChannelUpdateResponse]
      #
      # @see Telnyx::Models::NotificationChannelUpdateParams
      def update(id, params = {})
        parsed, options = Telnyx::NotificationChannelUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["notification_channels/%1$s", id],
          body: parsed,
          model: Telnyx::Models::NotificationChannelUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NotificationChannelListParams} for more details.
      #
      # List notification channels.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NotificationChannelListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      # filter[associated\_
      #
      # @param page [Telnyx::Models::NotificationChannelListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationChannelListResponse]
      #
      # @see Telnyx::Models::NotificationChannelListParams
      def list(params = {})
        parsed, options = Telnyx::NotificationChannelListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "notification_channels",
          query: parsed,
          model: Telnyx::Models::NotificationChannelListResponse,
          options: options
        )
      end

      # Delete a notification channel.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The id of the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NotificationChannelDeleteResponse]
      #
      # @see Telnyx::Models::NotificationChannelDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["notification_channels/%1$s", id],
          model: Telnyx::Models::NotificationChannelDeleteResponse,
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
