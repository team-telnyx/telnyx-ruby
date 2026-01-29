# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationEventConditions#list
    class NotificationEventConditionListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[associated_record_type][eq], filter[channel_type_id][eq],
      #   filter[notification_profile_id][eq], filter[notification_channel][eq],
      #   filter[notification_event_condition_id][eq], filter[status][eq]
      #
      #   @return [Telnyx::Models::NotificationEventConditionListParams::Filter, nil]
      optional :filter, -> { Telnyx::NotificationEventConditionListParams::Filter }

      # @!attribute page_number
      #
      #   @return [Integer, nil]
      optional :page_number, Integer

      # @!attribute page_size
      #
      #   @return [Integer, nil]
      optional :page_size, Integer

      # @!method initialize(filter: nil, page_number: nil, page_size: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NotificationEventConditionListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NotificationEventConditionListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      #   filter[associated\_
      #
      #   @param page_number [Integer]
      #
      #   @param page_size [Integer]
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute associated_record_type
        #
        #   @return [Telnyx::Models::NotificationEventConditionListParams::Filter::AssociatedRecordType, nil]
        optional :associated_record_type,
                 -> { Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType }

        # @!attribute channel_type_id
        #
        #   @return [Telnyx::Models::NotificationEventConditionListParams::Filter::ChannelTypeID, nil]
        optional :channel_type_id, -> { Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID }

        # @!attribute notification_channel
        #
        #   @return [Telnyx::Models::NotificationEventConditionListParams::Filter::NotificationChannel, nil]
        optional :notification_channel,
                 -> { Telnyx::NotificationEventConditionListParams::Filter::NotificationChannel }

        # @!attribute notification_event_condition_id
        #
        #   @return [Telnyx::Models::NotificationEventConditionListParams::Filter::NotificationEventConditionID, nil]
        optional :notification_event_condition_id,
                 -> { Telnyx::NotificationEventConditionListParams::Filter::NotificationEventConditionID }

        # @!attribute notification_profile_id
        #
        #   @return [Telnyx::Models::NotificationEventConditionListParams::Filter::NotificationProfileID, nil]
        optional :notification_profile_id,
                 -> { Telnyx::NotificationEventConditionListParams::Filter::NotificationProfileID }

        # @!attribute status
        #
        #   @return [Telnyx::Models::NotificationEventConditionListParams::Filter::Status, nil]
        optional :status, -> { Telnyx::NotificationEventConditionListParams::Filter::Status }

        # @!method initialize(associated_record_type: nil, channel_type_id: nil, notification_channel: nil, notification_event_condition_id: nil, notification_profile_id: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[associated_record_type][eq], filter[channel_type_id][eq],
        #   filter[notification_profile_id][eq], filter[notification_channel][eq],
        #   filter[notification_event_condition_id][eq], filter[status][eq]
        #
        #   @param associated_record_type [Telnyx::Models::NotificationEventConditionListParams::Filter::AssociatedRecordType]
        #   @param channel_type_id [Telnyx::Models::NotificationEventConditionListParams::Filter::ChannelTypeID]
        #   @param notification_channel [Telnyx::Models::NotificationEventConditionListParams::Filter::NotificationChannel]
        #   @param notification_event_condition_id [Telnyx::Models::NotificationEventConditionListParams::Filter::NotificationEventConditionID]
        #   @param notification_profile_id [Telnyx::Models::NotificationEventConditionListParams::Filter::NotificationProfileID]
        #   @param status [Telnyx::Models::NotificationEventConditionListParams::Filter::Status]

        # @see Telnyx::Models::NotificationEventConditionListParams::Filter#associated_record_type
        class AssociatedRecordType < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the associated record type
          #
          #   @return [Symbol, Telnyx::Models::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationEventConditionListParams::Filter::AssociatedRecordType::Eq] Filter by the associated record type

          # Filter by the associated record type
          #
          # @see Telnyx::Models::NotificationEventConditionListParams::Filter::AssociatedRecordType#eq
          module Eq
            extend Telnyx::Internal::Type::Enum

            ACCOUNT = :account
            PHONE_NUMBER = :phone_number

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::NotificationEventConditionListParams::Filter#channel_type_id
        class ChannelTypeID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a channel type
          #
          #   @return [Symbol, Telnyx::Models::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationEventConditionListParams::Filter::ChannelTypeID::Eq] Filter by the id of a channel type

          # Filter by the id of a channel type
          #
          # @see Telnyx::Models::NotificationEventConditionListParams::Filter::ChannelTypeID#eq
          module Eq
            extend Telnyx::Internal::Type::Enum

            WEBHOOK = :webhook
            SMS = :sms
            EMAIL = :email
            VOICE = :voice

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::NotificationEventConditionListParams::Filter#notification_channel
        class NotificationChannel < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification channel
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification channel
        end

        # @see Telnyx::Models::NotificationEventConditionListParams::Filter#notification_event_condition_id
        class NotificationEventConditionID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification channel
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification channel
        end

        # @see Telnyx::Models::NotificationEventConditionListParams::Filter#notification_profile_id
        class NotificationProfileID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification profile
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification profile
        end

        # @see Telnyx::Models::NotificationEventConditionListParams::Filter#status
        class Status < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   The status of a notification setting
          #
          #   @return [Symbol, Telnyx::Models::NotificationEventConditionListParams::Filter::Status::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationEventConditionListParams::Filter::Status::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationEventConditionListParams::Filter::Status::Eq] The status of a notification setting

          # The status of a notification setting
          #
          # @see Telnyx::Models::NotificationEventConditionListParams::Filter::Status#eq
          module Eq
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
  end
end
