# typed: strong

module Telnyx
  module Resources
    class NotificationChannels
      # Create a notification channel.
      sig do
        params(
          channel_destination: String,
          channel_type_id: Telnyx::NotificationChannel::ChannelTypeID::OrSymbol,
          notification_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationChannelCreateResponse)
      end
      def create(
        # The destination associated with the channel type.
        channel_destination: nil,
        # A Channel Type ID
        channel_type_id: nil,
        # A UUID reference to the associated Notification Profile.
        notification_profile_id: nil,
        request_options: {}
      )
      end

      # Get a notification channel.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationChannelRetrieveResponse)
      end
      def retrieve(
        # The id of the resource.
        id,
        request_options: {}
      )
      end

      # Update a notification channel.
      sig do
        params(
          id: String,
          channel_destination: String,
          channel_type_id: Telnyx::NotificationChannel::ChannelTypeID::OrSymbol,
          notification_profile_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationChannelUpdateResponse)
      end
      def update(
        # The id of the resource.
        id,
        # The destination associated with the channel type.
        channel_destination: nil,
        # A Channel Type ID
        channel_type_id: nil,
        # A UUID reference to the associated Notification Profile.
        notification_profile_id: nil,
        request_options: {}
      )
      end

      # List notification channels.
      sig do
        params(
          filter: Telnyx::NotificationChannelListParams::Filter::OrHash,
          page: Telnyx::NotificationChannelListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationChannelListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[associated_record_type][eq], filter[channel_type_id][eq],
        # filter[notification_profile_id][eq], filter[notification_channel][eq],
        # filter[notification_event_condition_id][eq], filter[status][eq]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Delete a notification channel.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationChannelDeleteResponse)
      end
      def delete(
        # The id of the resource.
        id,
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
