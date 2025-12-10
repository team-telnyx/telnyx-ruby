# typed: strong

module Telnyx
  module Resources
    class NotificationSettings
      # Add a notification setting.
      sig do
        params(
          notification_channel_id: String,
          notification_event_condition_id: String,
          notification_profile_id: String,
          parameters: T::Array[Telnyx::NotificationSetting::Parameter::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationSettingCreateResponse)
      end
      def create(
        # A UUID reference to the associated Notification Channel.
        notification_channel_id: nil,
        # A UUID reference to the associated Notification Event Condition.
        notification_event_condition_id: nil,
        # A UUID reference to the associated Notification Profile.
        notification_profile_id: nil,
        parameters: nil,
        request_options: {}
      )
      end

      # Get a notification setting.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationSettingRetrieveResponse)
      end
      def retrieve(
        # The id of the resource.
        id,
        request_options: {}
      )
      end

      # List notification settings.
      sig do
        params(
          filter: Telnyx::NotificationSettingListParams::Filter::OrHash,
          page: Telnyx::NotificationSettingListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationSettingListResponse)
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

      # Delete a notification setting.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationSettingDeleteResponse)
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
