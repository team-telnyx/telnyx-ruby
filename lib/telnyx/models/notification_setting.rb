# frozen_string_literal: true

module Telnyx
  module Models
    class NotificationSetting < Telnyx::Internal::Type::BaseModel
      # @!attribute notification_channel_id
      #   A UUID reference to the associated Notification Channel.
      #
      #   @return [String, nil]
      optional :notification_channel_id, String

      # @!attribute notification_event_condition_id
      #   A UUID reference to the associated Notification Event Condition.
      #
      #   @return [String, nil]
      optional :notification_event_condition_id, String

      # @!attribute notification_profile_id
      #   A UUID reference to the associated Notification Profile.
      #
      #   @return [String, nil]
      optional :notification_profile_id, String

      # @!attribute parameters
      #
      #   @return [Array<Telnyx::Models::NotificationSetting::Parameter>, nil]
      optional :parameters, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NotificationSetting::Parameter] }

      response_only do
        # @!attribute id
        #   A UUID.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute associated_record_type
        #
        #   @return [String, nil]
        optional :associated_record_type, String

        # @!attribute associated_record_type_value
        #
        #   @return [String, nil]
        optional :associated_record_type_value, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute status
        #   Most preferences apply immediately; however, other may needs to propagate.
        #
        #   @return [Symbol, Telnyx::Models::NotificationSetting::Status, nil]
        optional :status, enum: -> { Telnyx::NotificationSetting::Status }

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, associated_record_type: nil, associated_record_type_value: nil, created_at: nil, notification_channel_id: nil, notification_event_condition_id: nil, notification_profile_id: nil, parameters: nil, status: nil, updated_at: nil)
      #   @param id [String] A UUID.
      #
      #   @param associated_record_type [String]
      #
      #   @param associated_record_type_value [String]
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param notification_channel_id [String] A UUID reference to the associated Notification Channel.
      #
      #   @param notification_event_condition_id [String] A UUID reference to the associated Notification Event Condition.
      #
      #   @param notification_profile_id [String] A UUID reference to the associated Notification Profile.
      #
      #   @param parameters [Array<Telnyx::Models::NotificationSetting::Parameter>]
      #
      #   @param status [Symbol, Telnyx::Models::NotificationSetting::Status] Most preferences apply immediately; however, other may needs to propagate.
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

      class Parameter < Telnyx::Internal::Type::BaseModel
        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute value
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(name: nil, value: nil)
        #   @param name [String]
        #   @param value [String]
      end

      # Most preferences apply immediately; however, other may needs to propagate.
      #
      # @see Telnyx::Models::NotificationSetting#status
      module Status
        extend Telnyx::Internal::Type::Enum

        ENABLED = :enabled
        ENABLE_RECEIVED = :"enable-received"
        ENABLE_PENDING = :"enable-pending"
        ENABLE_SUBMTITED = :"enable-submtited"
        DELETE_RECEIVED = :"delete-received"
        DELETE_PENDING = :"delete-pending"
        DELETE_SUBMITTED = :"delete-submitted"
        DELETED = :deleted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
