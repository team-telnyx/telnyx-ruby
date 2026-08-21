# typed: strong

module Telnyx
  module Resources
    # Notification settings operations
    class NotificationSettings
      # Adds a notification setting that enables delivery of a notification event type
      # to a notification profile.
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

      # Returns the details of a single notification setting by its identifier.
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

      # Returns a paginated list of your notification settings, which map notification
      # event types to profiles and channels.
      sig do
        params(
          filter: Telnyx::NotificationSettingListParams::Filter::OrHash,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::NotificationSetting]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[associated_record_type][eq], filter[channel_type_id][eq],
        # filter[notification_profile_id][eq], filter[notification_channel][eq],
        # filter[notification_event_condition_id][eq], filter[status][eq]
        filter: nil,
        page_number: nil,
        page_size: nil,
        request_options: {}
      )
      end

      # Deletes the specified notification setting, disabling that notification
      # delivery.
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
