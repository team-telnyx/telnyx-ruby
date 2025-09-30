# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NotificationChannels#list
    class NotificationChannelListParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute filter
      #   Consolidated filter parameter (deepObject style). Originally:
      #   filter[associated_record_type][eq], filter[channel_type_id][eq],
      #   filter[notification_profile_id][eq], filter[notification_channel][eq],
      #   filter[notification_event_condition_id][eq], filter[status][eq]
      #
      #   @return [Telnyx::Models::NotificationChannelListParams::Filter, nil]
      optional :filter, -> { Telnyx::NotificationChannelListParams::Filter }

      # @!attribute page
      #   Consolidated page parameter (deepObject style). Originally: page[number],
      #   page[size]
      #
      #   @return [Telnyx::Models::NotificationChannelListParams::Page, nil]
      optional :page, -> { Telnyx::NotificationChannelListParams::Page }

      # @!method initialize(filter: nil, page: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::NotificationChannelListParams} for more details.
      #
      #   @param filter [Telnyx::Models::NotificationChannelListParams::Filter] Consolidated filter parameter (deepObject style). Originally:
      #   filter[associated\_
      #
      #   @param page [Telnyx::Models::NotificationChannelListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      class Filter < Telnyx::Internal::Type::BaseModel
        # @!attribute associated_record_type
        #
        #   @return [Telnyx::Models::NotificationChannelListParams::Filter::AssociatedRecordType, nil]
        optional :associated_record_type,
                 -> { Telnyx::NotificationChannelListParams::Filter::AssociatedRecordType }

        # @!attribute channel_type_id
        #
        #   @return [Telnyx::Models::NotificationChannelListParams::Filter::ChannelTypeID, nil]
        optional :channel_type_id, -> { Telnyx::NotificationChannelListParams::Filter::ChannelTypeID }

        # @!attribute notification_channel
        #
        #   @return [Telnyx::Models::NotificationChannelListParams::Filter::NotificationChannel, nil]
        optional :notification_channel, -> { Telnyx::NotificationChannelListParams::Filter::NotificationChannel }

        # @!attribute notification_event_condition_id
        #
        #   @return [Telnyx::Models::NotificationChannelListParams::Filter::NotificationEventConditionID, nil]
        optional :notification_event_condition_id,
                 -> { Telnyx::NotificationChannelListParams::Filter::NotificationEventConditionID }

        # @!attribute notification_profile_id
        #
        #   @return [Telnyx::Models::NotificationChannelListParams::Filter::NotificationProfileID, nil]
        optional :notification_profile_id,
                 -> { Telnyx::NotificationChannelListParams::Filter::NotificationProfileID }

        # @!attribute status
        #
        #   @return [Telnyx::Models::NotificationChannelListParams::Filter::Status, nil]
        optional :status, -> { Telnyx::NotificationChannelListParams::Filter::Status }

        # @!method initialize(associated_record_type: nil, channel_type_id: nil, notification_channel: nil, notification_event_condition_id: nil, notification_profile_id: nil, status: nil)
        #   Consolidated filter parameter (deepObject style). Originally:
        #   filter[associated_record_type][eq], filter[channel_type_id][eq],
        #   filter[notification_profile_id][eq], filter[notification_channel][eq],
        #   filter[notification_event_condition_id][eq], filter[status][eq]
        #
        #   @param associated_record_type [Telnyx::Models::NotificationChannelListParams::Filter::AssociatedRecordType]
        #   @param channel_type_id [Telnyx::Models::NotificationChannelListParams::Filter::ChannelTypeID]
        #   @param notification_channel [Telnyx::Models::NotificationChannelListParams::Filter::NotificationChannel]
        #   @param notification_event_condition_id [Telnyx::Models::NotificationChannelListParams::Filter::NotificationEventConditionID]
        #   @param notification_profile_id [Telnyx::Models::NotificationChannelListParams::Filter::NotificationProfileID]
        #   @param status [Telnyx::Models::NotificationChannelListParams::Filter::Status]

        # @see Telnyx::Models::NotificationChannelListParams::Filter#associated_record_type
        class AssociatedRecordType < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the associated record type
          #
          #   @return [Symbol, Telnyx::Models::NotificationChannelListParams::Filter::AssociatedRecordType::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationChannelListParams::Filter::AssociatedRecordType::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationChannelListParams::Filter::AssociatedRecordType::Eq] Filter by the associated record type

          # Filter by the associated record type
          #
          # @see Telnyx::Models::NotificationChannelListParams::Filter::AssociatedRecordType#eq
          module Eq
            extend Telnyx::Internal::Type::Enum

            ACCOUNT = :account
            PHONE_NUMBER = :phone_number

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @see Telnyx::Models::NotificationChannelListParams::Filter#channel_type_id
        class ChannelTypeID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a channel type
          #
          #   @return [Symbol, Telnyx::Models::NotificationChannelListParams::Filter::ChannelTypeID::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationChannelListParams::Filter::ChannelTypeID::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationChannelListParams::Filter::ChannelTypeID::Eq] Filter by the id of a channel type

          # Filter by the id of a channel type
          #
          # @see Telnyx::Models::NotificationChannelListParams::Filter::ChannelTypeID#eq
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

        # @see Telnyx::Models::NotificationChannelListParams::Filter#notification_channel
        class NotificationChannel < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification channel
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification channel
        end

        # @see Telnyx::Models::NotificationChannelListParams::Filter#notification_event_condition_id
        class NotificationEventConditionID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification channel
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification channel
        end

        # @see Telnyx::Models::NotificationChannelListParams::Filter#notification_profile_id
        class NotificationProfileID < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   Filter by the id of a notification profile
          #
          #   @return [String, nil]
          optional :eq, String

          # @!method initialize(eq: nil)
          #   @param eq [String] Filter by the id of a notification profile
        end

        # @see Telnyx::Models::NotificationChannelListParams::Filter#status
        class Status < Telnyx::Internal::Type::BaseModel
          # @!attribute eq
          #   The status of a notification setting
          #
          #   @return [Symbol, Telnyx::Models::NotificationChannelListParams::Filter::Status::Eq, nil]
          optional :eq, enum: -> { Telnyx::NotificationChannelListParams::Filter::Status::Eq }

          # @!method initialize(eq: nil)
          #   @param eq [Symbol, Telnyx::Models::NotificationChannelListParams::Filter::Status::Eq] The status of a notification setting

          # The status of a notification setting
          #
          # @see Telnyx::Models::NotificationChannelListParams::Filter::Status#eq
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

      class Page < Telnyx::Internal::Type::BaseModel
        # @!attribute number
        #   The page number to load
        #
        #   @return [Integer, nil]
        optional :number, Integer

        # @!attribute size
        #   The size of the page
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!method initialize(number: nil, size: nil)
        #   Consolidated page parameter (deepObject style). Originally: page[number],
        #   page[size]
        #
        #   @param number [Integer] The page number to load
        #
        #   @param size [Integer] The size of the page
      end
    end
  end
end
