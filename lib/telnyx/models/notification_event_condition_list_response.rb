# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationEventConditions#list
    class NotificationEventConditionListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::NotificationEventConditionListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NotificationEventConditionListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::NotificationEventConditionListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute allow_multiple_channels
        #   Dictates whether a notification channel id needs to be provided when creating a
        #   notficiation setting.
        #
        #   @return [Boolean, nil]
        optional :allow_multiple_channels, Telnyx::Internal::Type::Boolean

        # @!attribute associated_record_type
        #
        #   @return [Symbol, Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType, nil]
        optional :associated_record_type,
                 enum: -> { Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType }

        # @!attribute asynchronous
        #   Dictates whether a notification setting will take effect immediately.
        #
        #   @return [Boolean, nil]
        optional :asynchronous, Telnyx::Internal::Type::Boolean

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute enabled
        #
        #   @return [Boolean, nil]
        optional :enabled, Telnyx::Internal::Type::Boolean

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute notification_event_id
        #
        #   @return [String, nil]
        optional :notification_event_id, String

        # @!attribute parameters
        #
        #   @return [Array<Telnyx::Models::NotificationEventConditionListResponse::Data::Parameter>, nil]
        optional :parameters,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::NotificationEventConditionListResponse::Data::Parameter] }

        # @!attribute supported_channels
        #   Dictates the supported notification channel types that can be emitted.
        #
        #   @return [Array<String>, nil]
        optional :supported_channels, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        response_only do
          # @!attribute id
          #   A UUID.
          #
          #   @return [String, nil]
          optional :id, String
        end

        # @!method initialize(id: nil, allow_multiple_channels: nil, associated_record_type: nil, asynchronous: nil, created_at: nil, description: nil, enabled: nil, name: nil, notification_event_id: nil, parameters: nil, supported_channels: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::NotificationEventConditionListResponse::Data} for more details.
        #
        #   @param id [String] A UUID.
        #
        #   @param allow_multiple_channels [Boolean] Dictates whether a notification channel id needs to be provided when creating a
        #
        #   @param associated_record_type [Symbol, Telnyx::Models::NotificationEventConditionListResponse::Data::AssociatedRecordType]
        #
        #   @param asynchronous [Boolean] Dictates whether a notification setting will take effect immediately.
        #
        #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
        #
        #   @param description [String]
        #
        #   @param enabled [Boolean]
        #
        #   @param name [String]
        #
        #   @param notification_event_id [String]
        #
        #   @param parameters [Array<Telnyx::Models::NotificationEventConditionListResponse::Data::Parameter>]
        #
        #   @param supported_channels [Array<String>] Dictates the supported notification channel types that can be emitted.
        #
        #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

        # @see Telnyx::Models::NotificationEventConditionListResponse::Data#associated_record_type
        module AssociatedRecordType
          extend Telnyx::Internal::Type::Enum

          ACCOUNT = :account
          PHONE_NUMBER = :phone_number

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        class Parameter < Telnyx::Internal::Type::BaseModel
          # @!attribute data_type
          #
          #   @return [String, nil]
          optional :data_type, String

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute optional
          #
          #   @return [Boolean, nil]
          optional :optional, Telnyx::Internal::Type::Boolean

          # @!method initialize(data_type: nil, name: nil, optional: nil)
          #   @param data_type [String]
          #   @param name [String]
          #   @param optional [Boolean]
        end
      end
    end
  end
end
