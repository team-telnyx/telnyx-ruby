# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::DetailRecords#list
    class DetailRecordListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::ConferenceDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::ConferenceParticipantDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::SimCardUsageDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::MediaStorageDetailRecord>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::Models::DetailRecordListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::DetailRecordListResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::DetailRecordListResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::ConferenceDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::ConferenceParticipantDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::SimCardUsageDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::MediaStorageDetailRecord>]
      #   @param meta [Telnyx::Models::DetailRecordListResponse::Meta]

      # An object following one of the schemas published in
      # https://developers.telnyx.com/docs/api/v2/detail-records
      module Data
        extend Telnyx::Internal::Type::Union

        discriminator :record_type

        variant -> { Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord }

        variant -> { Telnyx::Models::DetailRecordListResponse::Data::ConferenceDetailRecord }

        variant -> { Telnyx::Models::DetailRecordListResponse::Data::ConferenceParticipantDetailRecord }

        variant -> { Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord }

        variant -> { Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord }

        variant -> { Telnyx::Models::DetailRecordListResponse::Data::SimCardUsageDetailRecord }

        variant -> { Telnyx::Models::DetailRecordListResponse::Data::MediaStorageDetailRecord }

        class MessageDetailRecord < Telnyx::Internal::Type::BaseModel
          # @!attribute record_type
          #   Identifies the record schema
          #
          #   @return [String]
          required :record_type, String

          # @!attribute carrier
          #   Country-specific carrier used to send or receive the message
          #
          #   @return [String, nil]
          optional :carrier, String

          # @!attribute carrier_fee
          #   Fee charged by certain carriers in order to deliver certain message types.
          #   Telnyx passes this fee on to the customer according to our pricing table
          #
          #   @return [String, nil]
          optional :carrier_fee, String

          # @!attribute cld
          #   The recipient of the message (to parameter in the Messaging API)
          #
          #   @return [String, nil]
          optional :cld, String

          # @!attribute cli
          #   The sender of the message (from parameter in the Messaging API). For
          #   Alphanumeric ID messages, this is the sender ID value
          #
          #   @return [String, nil]
          optional :cli, String

          # @!attribute completed_at
          #   Message completion time
          #
          #   @return [Time, nil]
          optional :completed_at, Time

          # @!attribute cost
          #   Amount, in the user currency, for the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :cost, String

          # @!attribute country_code
          #   Two-letter representation of the country of the cld property using the ISO
          #   3166-1 alpha-2 format
          #
          #   @return [String, nil]
          optional :country_code, String

          # @!attribute created_at
          #   Message creation time
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute currency
          #   Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute delivery_status
          #   Final webhook delivery status
          #
          #   @return [String, nil]
          optional :delivery_status, String

          # @!attribute delivery_status_failover_url
          #   Failover customer-provided URL which Telnyx posts delivery status webhooks to
          #
          #   @return [String, nil]
          optional :delivery_status_failover_url, String

          # @!attribute delivery_status_webhook_url
          #   Primary customer-provided URL which Telnyx posts delivery status webhooks to
          #
          #   @return [String, nil]
          optional :delivery_status_webhook_url, String

          # @!attribute direction
          #   Logical direction of the message from the Telnyx customer's perspective. It's
          #   inbound when the Telnyx customer receives the message, or outbound otherwise
          #
          #   @return [Symbol, Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::Direction, nil]
          optional :direction,
                   enum: -> { Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::Direction }

          # @!attribute errors
          #   Telnyx API error codes returned by the Telnyx gateway
          #
          #   @return [Array<String>, nil]
          optional :errors, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute fteu
          #   Indicates whether this is a Free-To-End-User (FTEU) short code message
          #
          #   @return [Boolean, nil]
          optional :fteu, Telnyx::Internal::Type::Boolean

          # @!attribute mcc
          #   Mobile country code. Only available for certain products, such as Global
          #   Outbound-Only from Alphanumeric Sender ID
          #
          #   @return [String, nil]
          optional :mcc, String

          # @!attribute message_type
          #   Describes the Messaging service used to send the message. Available services
          #   are: Short Message Service (SMS), Multimedia Messaging Service (MMS), and Rich
          #   Communication Services (RCS)
          #
          #   @return [Symbol, Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::MessageType, nil]
          optional :message_type,
                   enum: -> { Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::MessageType }

          # @!attribute mnc
          #   Mobile network code. Only available for certain products, such as Global
          #   Outbound-Only from Alphanumeric Sender ID
          #
          #   @return [String, nil]
          optional :mnc, String

          # @!attribute on_net
          #   Indicates whether both sender and recipient numbers are Telnyx-managed
          #
          #   @return [Boolean, nil]
          optional :on_net, Telnyx::Internal::Type::Boolean

          # @!attribute parts
          #   Number of message parts. The message is broken down in multiple parts when its
          #   length surpasses the limit of 160 characters
          #
          #   @return [Integer, nil]
          optional :parts, Integer

          # @!attribute profile_id
          #   Unique identifier of the Messaging Profile used to send or receive the message
          #
          #   @return [String, nil]
          optional :profile_id, String

          # @!attribute profile_name
          #   Name of the Messaging Profile used to send or receive the message
          #
          #   @return [String, nil]
          optional :profile_name, String

          # @!attribute rate
          #   Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :rate, String

          # @!attribute sent_at
          #   Time when the message was sent
          #
          #   @return [Time, nil]
          optional :sent_at, Time

          # @!attribute source_country_code
          #   Two-letter representation of the country of the cli property using the ISO
          #   3166-1 alpha-2 format
          #
          #   @return [String, nil]
          optional :source_country_code, String

          # @!attribute status
          #   Final status of the message after the delivery attempt
          #
          #   @return [Symbol, Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::Status, nil]
          optional :status, enum: -> { Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::Status }

          # @!attribute tags
          #   Comma-separated tags assigned to the Telnyx number associated with the message
          #
          #   @return [String, nil]
          optional :tags, String

          # @!attribute updated_at
          #   Message updated time
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute user_id
          #   Identifier of the Telnyx account who owns the message
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!attribute uuid
          #   Unique identifier of the message
          #
          #   @return [String, nil]
          optional :uuid, String

          # @!method initialize(record_type:, carrier: nil, carrier_fee: nil, cld: nil, cli: nil, completed_at: nil, cost: nil, country_code: nil, created_at: nil, currency: nil, delivery_status: nil, delivery_status_failover_url: nil, delivery_status_webhook_url: nil, direction: nil, errors: nil, fteu: nil, mcc: nil, message_type: nil, mnc: nil, on_net: nil, parts: nil, profile_id: nil, profile_name: nil, rate: nil, sent_at: nil, source_country_code: nil, status: nil, tags: nil, updated_at: nil, user_id: nil, uuid: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord} for more
          #   details.
          #
          #   @param record_type [String] Identifies the record schema
          #
          #   @param carrier [String] Country-specific carrier used to send or receive the message
          #
          #   @param carrier_fee [String] Fee charged by certain carriers in order to deliver certain message types. Telny
          #
          #   @param cld [String] The recipient of the message (to parameter in the Messaging API)
          #
          #   @param cli [String] The sender of the message (from parameter in the Messaging API). For Alphanumeri
          #
          #   @param completed_at [Time] Message completion time
          #
          #   @param cost [String] Amount, in the user currency, for the Telnyx billing cost
          #
          #   @param country_code [String] Two-letter representation of the country of the cld property using the ISO 3166-
          #
          #   @param created_at [Time] Message creation time
          #
          #   @param currency [String] Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @param delivery_status [String] Final webhook delivery status
          #
          #   @param delivery_status_failover_url [String] Failover customer-provided URL which Telnyx posts delivery status webhooks to
          #
          #   @param delivery_status_webhook_url [String] Primary customer-provided URL which Telnyx posts delivery status webhooks to
          #
          #   @param direction [Symbol, Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::Direction] Logical direction of the message from the Telnyx customer's perspective. It's in
          #
          #   @param errors [Array<String>] Telnyx API error codes returned by the Telnyx gateway
          #
          #   @param fteu [Boolean] Indicates whether this is a Free-To-End-User (FTEU) short code message
          #
          #   @param mcc [String] Mobile country code. Only available for certain products, such as Global Outboun
          #
          #   @param message_type [Symbol, Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::MessageType] Describes the Messaging service used to send the message. Available services are
          #
          #   @param mnc [String] Mobile network code. Only available for certain products, such as Global Outboun
          #
          #   @param on_net [Boolean] Indicates whether both sender and recipient numbers are Telnyx-managed
          #
          #   @param parts [Integer] Number of message parts. The message is broken down in multiple parts when its l
          #
          #   @param profile_id [String] Unique identifier of the Messaging Profile used to send or receive the message
          #
          #   @param profile_name [String] Name of the Messaging Profile used to send or receive the message
          #
          #   @param rate [String] Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @param sent_at [Time] Time when the message was sent
          #
          #   @param source_country_code [String] Two-letter representation of the country of the cli property using the ISO 3166-
          #
          #   @param status [Symbol, Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord::Status] Final status of the message after the delivery attempt
          #
          #   @param tags [String] Comma-separated tags assigned to the Telnyx number associated with the message
          #
          #   @param updated_at [Time] Message updated time
          #
          #   @param user_id [String] Identifier of the Telnyx account who owns the message
          #
          #   @param uuid [String] Unique identifier of the message

          # Logical direction of the message from the Telnyx customer's perspective. It's
          # inbound when the Telnyx customer receives the message, or outbound otherwise
          #
          # @see Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord#direction
          module Direction
            extend Telnyx::Internal::Type::Enum

            INBOUND = :inbound
            OUTBOUND = :outbound

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Describes the Messaging service used to send the message. Available services
          # are: Short Message Service (SMS), Multimedia Messaging Service (MMS), and Rich
          # Communication Services (RCS)
          #
          # @see Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord#message_type
          module MessageType
            extend Telnyx::Internal::Type::Enum

            SMS = :SMS
            MMS = :MMS
            RCS = :RCS

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Final status of the message after the delivery attempt
          #
          # @see Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord#status
          module Status
            extend Telnyx::Internal::Type::Enum

            GW_TIMEOUT = :gw_timeout
            DELIVERED = :delivered
            DLR_UNCONFIRMED = :dlr_unconfirmed
            DLR_TIMEOUT = :dlr_timeout
            RECEIVED = :received
            GW_REJECT = :gw_reject
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class ConferenceDetailRecord < Telnyx::Internal::Type::BaseModel
          # @!attribute record_type
          #
          #   @return [String]
          required :record_type, String

          # @!attribute id
          #   Conference id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute call_leg_id
          #   Telnyx UUID that identifies the conference call leg
          #
          #   @return [String, nil]
          optional :call_leg_id, String

          # @!attribute call_sec
          #   Duration of the conference call in seconds
          #
          #   @return [Integer, nil]
          optional :call_sec, Integer

          # @!attribute call_session_id
          #   Telnyx UUID that identifies with conference call session
          #
          #   @return [String, nil]
          optional :call_session_id, String

          # @!attribute connection_id
          #   Connection id
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute ended_at
          #   Conference end time
          #
          #   @return [Time, nil]
          optional :ended_at, Time

          # @!attribute expires_at
          #   Conference expiry time
          #
          #   @return [Time, nil]
          optional :expires_at, Time

          # @!attribute is_telnyx_billable
          #   Indicates whether Telnyx billing charges might be applicable
          #
          #   @return [Boolean, nil]
          optional :is_telnyx_billable, Telnyx::Internal::Type::Boolean

          # @!attribute name
          #   Conference name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute participant_call_sec
          #   Sum of the conference call duration for all participants in seconds
          #
          #   @return [Integer, nil]
          optional :participant_call_sec, Integer

          # @!attribute participant_count
          #   Number of participants that joined the conference call
          #
          #   @return [Integer, nil]
          optional :participant_count, Integer

          # @!attribute region
          #   Region where the conference is hosted
          #
          #   @return [String, nil]
          optional :region, String

          # @!attribute started_at
          #   Conference start time
          #
          #   @return [Time, nil]
          optional :started_at, Time

          # @!attribute user_id
          #   User id
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!method initialize(record_type:, id: nil, call_leg_id: nil, call_sec: nil, call_session_id: nil, connection_id: nil, ended_at: nil, expires_at: nil, is_telnyx_billable: nil, name: nil, participant_call_sec: nil, participant_count: nil, region: nil, started_at: nil, user_id: nil)
          #   @param record_type [String]
          #
          #   @param id [String] Conference id
          #
          #   @param call_leg_id [String] Telnyx UUID that identifies the conference call leg
          #
          #   @param call_sec [Integer] Duration of the conference call in seconds
          #
          #   @param call_session_id [String] Telnyx UUID that identifies with conference call session
          #
          #   @param connection_id [String] Connection id
          #
          #   @param ended_at [Time] Conference end time
          #
          #   @param expires_at [Time] Conference expiry time
          #
          #   @param is_telnyx_billable [Boolean] Indicates whether Telnyx billing charges might be applicable
          #
          #   @param name [String] Conference name
          #
          #   @param participant_call_sec [Integer] Sum of the conference call duration for all participants in seconds
          #
          #   @param participant_count [Integer] Number of participants that joined the conference call
          #
          #   @param region [String] Region where the conference is hosted
          #
          #   @param started_at [Time] Conference start time
          #
          #   @param user_id [String] User id
        end

        class ConferenceParticipantDetailRecord < Telnyx::Internal::Type::BaseModel
          # @!attribute record_type
          #
          #   @return [String]
          required :record_type, String

          # @!attribute id
          #   Participant id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute billed_sec
          #   Duration of the conference call for billing purposes
          #
          #   @return [Integer, nil]
          optional :billed_sec, Integer

          # @!attribute call_leg_id
          #   Telnyx UUID that identifies the conference call leg
          #
          #   @return [String, nil]
          optional :call_leg_id, String

          # @!attribute call_sec
          #   Duration of the conference call in seconds
          #
          #   @return [Integer, nil]
          optional :call_sec, Integer

          # @!attribute call_session_id
          #   Telnyx UUID that identifies with conference call session
          #
          #   @return [String, nil]
          optional :call_session_id, String

          # @!attribute conference_id
          #   Conference id
          #
          #   @return [String, nil]
          optional :conference_id, String

          # @!attribute cost
          #   Currency amount for Telnyx billing cost
          #
          #   @return [String, nil]
          optional :cost, String

          # @!attribute currency
          #   Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute destination_number
          #   Number called by the participant to join the conference
          #
          #   @return [String, nil]
          optional :destination_number, String

          # @!attribute is_telnyx_billable
          #   Indicates whether Telnyx billing charges might be applicable
          #
          #   @return [Boolean, nil]
          optional :is_telnyx_billable, Telnyx::Internal::Type::Boolean

          # @!attribute joined_at
          #   Participant join time
          #
          #   @return [Time, nil]
          optional :joined_at, Time

          # @!attribute left_at
          #   Participant leave time
          #
          #   @return [Time, nil]
          optional :left_at, Time

          # @!attribute originating_number
          #   Participant origin number used in the conference call
          #
          #   @return [String, nil]
          optional :originating_number, String

          # @!attribute rate
          #   Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :rate, String

          # @!attribute rate_measured_in
          #   Billing unit used to calculate the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :rate_measured_in, String

          # @!attribute user_id
          #   User id
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!method initialize(record_type:, id: nil, billed_sec: nil, call_leg_id: nil, call_sec: nil, call_session_id: nil, conference_id: nil, cost: nil, currency: nil, destination_number: nil, is_telnyx_billable: nil, joined_at: nil, left_at: nil, originating_number: nil, rate: nil, rate_measured_in: nil, user_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DetailRecordListResponse::Data::ConferenceParticipantDetailRecord}
          #   for more details.
          #
          #   @param record_type [String]
          #
          #   @param id [String] Participant id
          #
          #   @param billed_sec [Integer] Duration of the conference call for billing purposes
          #
          #   @param call_leg_id [String] Telnyx UUID that identifies the conference call leg
          #
          #   @param call_sec [Integer] Duration of the conference call in seconds
          #
          #   @param call_session_id [String] Telnyx UUID that identifies with conference call session
          #
          #   @param conference_id [String] Conference id
          #
          #   @param cost [String] Currency amount for Telnyx billing cost
          #
          #   @param currency [String] Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @param destination_number [String] Number called by the participant to join the conference
          #
          #   @param is_telnyx_billable [Boolean] Indicates whether Telnyx billing charges might be applicable
          #
          #   @param joined_at [Time] Participant join time
          #
          #   @param left_at [Time] Participant leave time
          #
          #   @param originating_number [String] Participant origin number used in the conference call
          #
          #   @param rate [String] Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @param rate_measured_in [String] Billing unit used to calculate the Telnyx billing cost
          #
          #   @param user_id [String] User id
        end

        class AmdDetailRecord < Telnyx::Internal::Type::BaseModel
          # @!attribute record_type
          #
          #   @return [String]
          required :record_type, String

          # @!attribute id
          #   Feature invocation id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute billing_group_id
          #   Billing Group id
          #
          #   @return [String, nil]
          optional :billing_group_id, String

          # @!attribute billing_group_name
          #   Name of the Billing Group specified in billing_group_id
          #
          #   @return [String, nil]
          optional :billing_group_name, String

          # @!attribute call_leg_id
          #   Telnyx UUID that identifies the related call leg
          #
          #   @return [String, nil]
          optional :call_leg_id, String

          # @!attribute call_session_id
          #   Telnyx UUID that identifies the related call session
          #
          #   @return [String, nil]
          optional :call_session_id, String

          # @!attribute connection_id
          #   Connection id
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute connection_name
          #   Connection name
          #
          #   @return [String, nil]
          optional :connection_name, String

          # @!attribute cost
          #   Currency amount for Telnyx billing cost
          #
          #   @return [String, nil]
          optional :cost, String

          # @!attribute currency
          #   Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute feature
          #   Feature name
          #
          #   @return [Symbol, Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord::Feature, nil]
          optional :feature, enum: -> { Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord::Feature }

          # @!attribute invoked_at
          #   Feature invocation time
          #
          #   @return [Time, nil]
          optional :invoked_at, Time

          # @!attribute is_telnyx_billable
          #   Indicates whether Telnyx billing charges might be applicable
          #
          #   @return [Boolean, nil]
          optional :is_telnyx_billable, Telnyx::Internal::Type::Boolean

          # @!attribute rate
          #   Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :rate, String

          # @!attribute rate_measured_in
          #   Billing unit used to calculate the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :rate_measured_in, String

          # @!attribute tags
          #   User-provided tags
          #
          #   @return [String, nil]
          optional :tags, String

          # @!method initialize(record_type:, id: nil, billing_group_id: nil, billing_group_name: nil, call_leg_id: nil, call_session_id: nil, connection_id: nil, connection_name: nil, cost: nil, currency: nil, feature: nil, invoked_at: nil, is_telnyx_billable: nil, rate: nil, rate_measured_in: nil, tags: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord} for more
          #   details.
          #
          #   @param record_type [String]
          #
          #   @param id [String] Feature invocation id
          #
          #   @param billing_group_id [String] Billing Group id
          #
          #   @param billing_group_name [String] Name of the Billing Group specified in billing_group_id
          #
          #   @param call_leg_id [String] Telnyx UUID that identifies the related call leg
          #
          #   @param call_session_id [String] Telnyx UUID that identifies the related call session
          #
          #   @param connection_id [String] Connection id
          #
          #   @param connection_name [String] Connection name
          #
          #   @param cost [String] Currency amount for Telnyx billing cost
          #
          #   @param currency [String] Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @param feature [Symbol, Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord::Feature] Feature name
          #
          #   @param invoked_at [Time] Feature invocation time
          #
          #   @param is_telnyx_billable [Boolean] Indicates whether Telnyx billing charges might be applicable
          #
          #   @param rate [String] Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @param rate_measured_in [String] Billing unit used to calculate the Telnyx billing cost
          #
          #   @param tags [String] User-provided tags

          # Feature name
          #
          # @see Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord#feature
          module Feature
            extend Telnyx::Internal::Type::Enum

            PREMIUM = :PREMIUM

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class VerifyDetailRecord < Telnyx::Internal::Type::BaseModel
          # @!attribute record_type
          #
          #   @return [String]
          required :record_type, String

          # @!attribute id
          #   Unique ID of the verification
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute currency
          #   Telnyx account currency used to describe monetary values, including billing
          #   costs
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute delivery_status
          #
          #   @return [String, nil]
          optional :delivery_status, String

          # @!attribute destination_phone_number
          #   E.164 formatted phone number
          #
          #   @return [String, nil]
          optional :destination_phone_number, String

          # @!attribute rate
          #   Currency amount per billing unit used to calculate the Telnyx billing costs
          #
          #   @return [String, nil]
          optional :rate, String

          # @!attribute rate_measured_in
          #   Billing unit used to calculate the Telnyx billing costs
          #
          #   @return [String, nil]
          optional :rate_measured_in, String

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute verification_status
          #
          #   @return [String, nil]
          optional :verification_status, String

          # @!attribute verify_channel_id
          #
          #   @return [String, nil]
          optional :verify_channel_id, String

          # @!attribute verify_channel_type
          #   Depending on the type of verification, the `verify_channel_id` points to one of
          #   the following channel ids;
          #
          #   ---
          #
          #   | verify_channel_type | verify_channel_id |
          #   | ------------------- | ----------------- |
          #   | sms, psd2           | messaging_id      |
          #   | call, flashcall     | call_control_id   |
          #
          #   ---
          #
          #   @return [Symbol, Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord::VerifyChannelType, nil]
          optional :verify_channel_type,
                   enum: -> { Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord::VerifyChannelType }

          # @!attribute verify_profile_id
          #
          #   @return [String, nil]
          optional :verify_profile_id, String

          # @!attribute verify_usage_fee
          #   Currency amount for Verify Usage Fee
          #
          #   @return [String, nil]
          optional :verify_usage_fee, String

          # @!method initialize(record_type:, id: nil, created_at: nil, currency: nil, delivery_status: nil, destination_phone_number: nil, rate: nil, rate_measured_in: nil, updated_at: nil, verification_status: nil, verify_channel_id: nil, verify_channel_type: nil, verify_profile_id: nil, verify_usage_fee: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord} for more
          #   details.
          #
          #   @param record_type [String]
          #
          #   @param id [String] Unique ID of the verification
          #
          #   @param created_at [Time]
          #
          #   @param currency [String] Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @param delivery_status [String]
          #
          #   @param destination_phone_number [String] E.164 formatted phone number
          #
          #   @param rate [String] Currency amount per billing unit used to calculate the Telnyx billing costs
          #
          #   @param rate_measured_in [String] Billing unit used to calculate the Telnyx billing costs
          #
          #   @param updated_at [Time]
          #
          #   @param verification_status [String]
          #
          #   @param verify_channel_id [String]
          #
          #   @param verify_channel_type [Symbol, Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord::VerifyChannelType] Depending on the type of verification, the `verify_channel_id`
          #
          #   @param verify_profile_id [String]
          #
          #   @param verify_usage_fee [String] Currency amount for Verify Usage Fee

          # Depending on the type of verification, the `verify_channel_id` points to one of
          # the following channel ids;
          #
          # ---
          #
          # | verify_channel_type | verify_channel_id |
          # | ------------------- | ----------------- |
          # | sms, psd2           | messaging_id      |
          # | call, flashcall     | call_control_id   |
          #
          # ---
          #
          # @see Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord#verify_channel_type
          module VerifyChannelType
            extend Telnyx::Internal::Type::Enum

            SMS = :sms
            PSD2 = :psd2
            CALL = :call
            FLASHCALL = :flashcall

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class SimCardUsageDetailRecord < Telnyx::Internal::Type::BaseModel
          # @!attribute record_type
          #
          #   @return [String]
          required :record_type, String

          # @!attribute id
          #   Unique identifier for this SIM Card Usage
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute closed_at
          #   Event close time
          #
          #   @return [Time, nil]
          optional :closed_at, Time

          # @!attribute created_at
          #   Event creation time
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute currency
          #   Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute data_cost
          #   Data cost
          #
          #   @return [Float, nil]
          optional :data_cost, Float

          # @!attribute data_rate
          #   Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :data_rate, String

          # @!attribute data_unit
          #   Unit of wireless link consumption
          #
          #   @return [String, nil]
          optional :data_unit, String

          # @!attribute downlink_data
          #   Number of megabytes downloaded
          #
          #   @return [Float, nil]
          optional :downlink_data, Float

          # @!attribute imsi
          #   International Mobile Subscriber Identity
          #
          #   @return [String, nil]
          optional :imsi, String

          # @!attribute ip_address
          #   Ip address that generated the event
          #
          #   @return [String, nil]
          optional :ip_address, String

          # @!attribute mcc
          #   Mobile country code
          #
          #   @return [String, nil]
          optional :mcc, String

          # @!attribute mnc
          #   Mobile network code
          #
          #   @return [String, nil]
          optional :mnc, String

          # @!attribute phone_number
          #   Telephone number associated to SIM card
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute sim_card_id
          #   Unique identifier for SIM card
          #
          #   @return [String, nil]
          optional :sim_card_id, String

          # @!attribute sim_card_tags
          #   User-provided tags
          #
          #   @return [String, nil]
          optional :sim_card_tags, String

          # @!attribute sim_group_id
          #   Unique identifier for SIM group
          #
          #   @return [String, nil]
          optional :sim_group_id, String

          # @!attribute sim_group_name
          #   Sim group name for sim card
          #
          #   @return [String, nil]
          optional :sim_group_name, String

          # @!attribute uplink_data
          #   Number of megabytes uploaded
          #
          #   @return [Float, nil]
          optional :uplink_data, Float

          # @!method initialize(record_type:, id: nil, closed_at: nil, created_at: nil, currency: nil, data_cost: nil, data_rate: nil, data_unit: nil, downlink_data: nil, imsi: nil, ip_address: nil, mcc: nil, mnc: nil, phone_number: nil, sim_card_id: nil, sim_card_tags: nil, sim_group_id: nil, sim_group_name: nil, uplink_data: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DetailRecordListResponse::Data::SimCardUsageDetailRecord} for
          #   more details.
          #
          #   @param record_type [String]
          #
          #   @param id [String] Unique identifier for this SIM Card Usage
          #
          #   @param closed_at [Time] Event close time
          #
          #   @param created_at [Time] Event creation time
          #
          #   @param currency [String] Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @param data_cost [Float] Data cost
          #
          #   @param data_rate [String] Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @param data_unit [String] Unit of wireless link consumption
          #
          #   @param downlink_data [Float] Number of megabytes downloaded
          #
          #   @param imsi [String] International Mobile Subscriber Identity
          #
          #   @param ip_address [String] Ip address that generated the event
          #
          #   @param mcc [String] Mobile country code
          #
          #   @param mnc [String] Mobile network code
          #
          #   @param phone_number [String] Telephone number associated to SIM card
          #
          #   @param sim_card_id [String] Unique identifier for SIM card
          #
          #   @param sim_card_tags [String] User-provided tags
          #
          #   @param sim_group_id [String] Unique identifier for SIM group
          #
          #   @param sim_group_name [String] Sim group name for sim card
          #
          #   @param uplink_data [Float] Number of megabytes uploaded
        end

        class MediaStorageDetailRecord < Telnyx::Internal::Type::BaseModel
          # @!attribute record_type
          #
          #   @return [String]
          required :record_type, String

          # @!attribute id
          #   Unique identifier for the Media Storage Event
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute action_type
          #   Type of action performed against the Media Storage API
          #
          #   @return [String, nil]
          optional :action_type, String

          # @!attribute asset_id
          #   Asset id
          #
          #   @return [String, nil]
          optional :asset_id, String

          # @!attribute cost
          #   Currency amount for Telnyx billing cost
          #
          #   @return [String, nil]
          optional :cost, String

          # @!attribute created_at
          #   Event creation time
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute currency
          #   Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @return [String, nil]
          optional :currency, String

          # @!attribute link_channel_id
          #   Link channel id
          #
          #   @return [String, nil]
          optional :link_channel_id, String

          # @!attribute link_channel_type
          #   Link channel type
          #
          #   @return [String, nil]
          optional :link_channel_type, String

          # @!attribute org_id
          #   Organization owner id
          #
          #   @return [String, nil]
          optional :org_id, String

          # @!attribute rate
          #   Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :rate, String

          # @!attribute rate_measured_in
          #   Billing unit used to calculate the Telnyx billing cost
          #
          #   @return [String, nil]
          optional :rate_measured_in, String

          # @!attribute status
          #   Request status
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute user_id
          #   User id
          #
          #   @return [String, nil]
          optional :user_id, String

          # @!attribute webhook_id
          #   Webhook id
          #
          #   @return [String, nil]
          optional :webhook_id, String

          # @!method initialize(record_type:, id: nil, action_type: nil, asset_id: nil, cost: nil, created_at: nil, currency: nil, link_channel_id: nil, link_channel_type: nil, org_id: nil, rate: nil, rate_measured_in: nil, status: nil, user_id: nil, webhook_id: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DetailRecordListResponse::Data::MediaStorageDetailRecord} for
          #   more details.
          #
          #   @param record_type [String]
          #
          #   @param id [String] Unique identifier for the Media Storage Event
          #
          #   @param action_type [String] Type of action performed against the Media Storage API
          #
          #   @param asset_id [String] Asset id
          #
          #   @param cost [String] Currency amount for Telnyx billing cost
          #
          #   @param created_at [Time] Event creation time
          #
          #   @param currency [String] Telnyx account currency used to describe monetary values, including billing cost
          #
          #   @param link_channel_id [String] Link channel id
          #
          #   @param link_channel_type [String] Link channel type
          #
          #   @param org_id [String] Organization owner id
          #
          #   @param rate [String] Currency amount per billing unit used to calculate the Telnyx billing cost
          #
          #   @param rate_measured_in [String] Billing unit used to calculate the Telnyx billing cost
          #
          #   @param status [String] Request status
          #
          #   @param user_id [String] User id
          #
          #   @param webhook_id [String] Webhook id
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::DetailRecordListResponse::Data::MessageDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::ConferenceDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::ConferenceParticipantDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::AmdDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::VerifyDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::SimCardUsageDetailRecord, Telnyx::Models::DetailRecordListResponse::Data::MediaStorageDetailRecord)]
      end

      # @see Telnyx::Models::DetailRecordListResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute page_number
        #
        #   @return [Integer, nil]
        optional :page_number, Integer

        # @!attribute page_size
        #
        #   @return [Integer, nil]
        optional :page_size, Integer

        # @!attribute total_pages
        #
        #   @return [Integer, nil]
        optional :total_pages, Integer

        # @!attribute total_results
        #
        #   @return [Integer, nil]
        optional :total_results, Integer

        # @!method initialize(page_number: nil, page_size: nil, total_pages: nil, total_results: nil)
        #   @param page_number [Integer]
        #   @param page_size [Integer]
        #   @param total_pages [Integer]
        #   @param total_results [Integer]
      end
    end
  end
end
