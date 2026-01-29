# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationSettings#list
    class NotificationSettingListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[associated_record_type][eq], filter[channel_type_id][eq],
      #   filter[notification_profile_id][eq], filter[notification_channel][eq],
      #   filter[notification_event_condition_id][eq], filter[status][eq]
      #
      #   @return [Telnyx::Models::NotificationSettingListParams::Filter, nil]
      optional :filter, -> { Telnyx::NotificationSettingListParams::Filter }

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
      #   {Telnyx::Models::NotificationSettingListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NotificationSettingListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
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
        #   @return [Telnyx::Models::NotificationSettingListParams::Filter::AssociatedRecordType, nil]
        optional :associated_record_type,
                 -> { Telnyx::NotificationSettingListParams::Filter::AssociatedRecordType }

        # @!attribute channel_type_id
        #
        #   @return [Telnyx::Models::NotificationSettingListParams::Filter::ChannelTypeID, nil]
        optional :channel_type_id, -> { Telnyx::NotificationSettingListParams::Filter::ChannelTypeID }

        # @!attribute notification_channel
        #
        #   @return [Telnyx::Models::NotificationSettingListParams::Filter::NotificationChannel, nil]
        optional :notification_channel, -> { Telnyx::NotificationSettingListParams::Filter::NotificationChannel }

        # @!attribute notification_event_condition_id
        #
        #   @return [Telnyx::Models::NotificationSettingListParams::Filter::NotificationEventConditionID, nil]
        optional :notification_event_condition_id,
                 -> { Telnyx::NotificationSettingListParams::Filter::NotificationEventConditionID }

        # @!attribute notification_profile_id
        #
        #   @return [Telnyx::Models::NotificationSettingListParams::Filter::NotificationProfileID, nil]
        optional :notification_profile_id,
                 -> { Telnyx::NotificationSettingListParams::Filter::NotificationProfileID }

        # @!attribute status
        #
        #   @return [Telnyx::Models::NotificationSettingListParams::Filter::Status, nil]
        optional :status, -> { Telnyx::NotificationSettingListParams::Filter::Status }

        # @!method initialize(associated_record_type: nil, channel_type_id: nil, notification_channel: nil, notification_event_condition_id: nil, notification_profile_id: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[associated_record_type][eq], filter[channel_type_id][eq],
        #   filter[notification_profile_id][eq], filter[notification_channel][eq],
        #   filter[notification_event_condition_id][eq], filter[status][eq]
        #
        #   @param associated_record_type [Telnyx::Models::NotificationSettingListParams::Filter::AssociatedRecordType]
        #   @param channel_type_id [Telnyx::Models::NotificationSettingListParams::Filter::ChannelTypeID]
        #   @param notification_channel [Telnyx::Models::NotificationSettingListParams::Filter::NotificationChannel]
        #   @param notification_event_condition_id [Telnyx::Models::NotificationSettingListParams::Filter::NotificationEventConditionID]
        #   @param notification_profile_id [Telnyx::Models::NotificationSettingListParams::Filter::NotificationProfileID]
        #   @param status [Telnyx::Models::NotificationSettingListParams::Filter::Status]

        # @see Telnyx::Models::NotificationSettingListParams::Filter#associated_record_type
        class AssociatedRecordType < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the associated record type
          #
          #   @return [Symbol, Telnyx::Models::NotificationSettingListParams::Filter::AssociatedRecordType::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationSettingListParams::Filter::AssociatedRecordType::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationSettingListParams::Filter::AssociatedRecordType::Eq] Filter by the associated record type

          # Filter by the associated record type
          #
          # @see Telnyx::Models::NotificationSettingListParams::Filter::AssociatedRecordType#eq
          module Eq
            extend Telnyx::Internal::Type::Enum

            ACCOUNT = :account
            PHONE_NUMBER = :phone_number

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::NotificationSettingListParams::Filter#channel_type_id
        class ChannelTypeID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a channel type
          #
          #   @return [Symbol, Telnyx::Models::NotificationSettingListParams::Filter::ChannelTypeID::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationSettingListParams::Filter::ChannelTypeID::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationSettingListParams::Filter::ChannelTypeID::Eq] Filter by the id of a channel type

          # Filter by the id of a channel type
          #
          # @see Telnyx::Models::NotificationSettingListParams::Filter::ChannelTypeID#eq
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

        # @see Telnyx::Models::NotificationSettingListParams::Filter#notification_channel
        class NotificationChannel < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification channel
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification channel
        end

        # @see Telnyx::Models::NotificationSettingListParams::Filter#notification_event_condition_id
        class NotificationEventConditionID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification channel
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification channel
        end

        # @see Telnyx::Models::NotificationSettingListParams::Filter#notification_profile_id
        class NotificationProfileID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification profile
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification profile
        end

        # @see Telnyx::Models::NotificationSettingListParams::Filter#status
        class Status < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   The status of a notification setting
          #
          #   @return [Symbol, Telnyx::Models::NotificationSettingListParams::Filter::Status::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationSettingListParams::Filter::Status::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationSettingListParams::Filter::Status::Eq] The status of a notification setting

          # The status of a notification setting
          #
          # @see Telnyx::Models::NotificationSettingListParams::Filter::Status#eq
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
