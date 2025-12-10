# typed: strong

module Telnyx
  module Models
    # An object following one of the schemas published in
    # https://developers.telnyx.com/docs/api/v2/detail-records
    module DetailRecordListResponse
      extend Telnyx::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Telnyx::Models::DetailRecordListResponse::MessageDetailRecord,
            Telnyx::Models::DetailRecordListResponse::ConferenceDetailRecord,
            Telnyx::Models::DetailRecordListResponse::ConferenceParticipantDetailRecord,
            Telnyx::Models::DetailRecordListResponse::AmdDetailRecord,
            Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord,
            Telnyx::Models::DetailRecordListResponse::SimCardUsageDetailRecord,
            Telnyx::Models::DetailRecordListResponse::MediaStorageDetailRecord
          )
        end

      class MessageDetailRecord < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord,
              Telnyx::Internal::AnyHash
            )
          end

        # Identifies the record schema
        sig { returns(String) }
        attr_accessor :record_type

        # Country-specific carrier used to send or receive the message
        sig { returns(T.nilable(String)) }
        attr_reader :carrier

        sig { params(carrier: String).void }
        attr_writer :carrier

        # Fee charged by certain carriers in order to deliver certain message types.
        # Telnyx passes this fee on to the customer according to our pricing table
        sig { returns(T.nilable(String)) }
        attr_reader :carrier_fee

        sig { params(carrier_fee: String).void }
        attr_writer :carrier_fee

        # The recipient of the message (to parameter in the Messaging API)
        sig { returns(T.nilable(String)) }
        attr_reader :cld

        sig { params(cld: String).void }
        attr_writer :cld

        # The sender of the message (from parameter in the Messaging API). For
        # Alphanumeric ID messages, this is the sender ID value
        sig { returns(T.nilable(String)) }
        attr_reader :cli

        sig { params(cli: String).void }
        attr_writer :cli

        # Message completion time
        sig { returns(T.nilable(Time)) }
        attr_reader :completed_at

        sig { params(completed_at: Time).void }
        attr_writer :completed_at

        # Amount, in the user currency, for the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :cost

        sig { params(cost: String).void }
        attr_writer :cost

        # Two-letter representation of the country of the cld property using the ISO
        # 3166-1 alpha-2 format
        sig { returns(T.nilable(String)) }
        attr_reader :country_code

        sig { params(country_code: String).void }
        attr_writer :country_code

        # Message creation time
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Telnyx account currency used to describe monetary values, including billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Final webhook delivery status
        sig { returns(T.nilable(String)) }
        attr_reader :delivery_status

        sig { params(delivery_status: String).void }
        attr_writer :delivery_status

        # Failover customer-provided URL which Telnyx posts delivery status webhooks to
        sig { returns(T.nilable(String)) }
        attr_reader :delivery_status_failover_url

        sig { params(delivery_status_failover_url: String).void }
        attr_writer :delivery_status_failover_url

        # Primary customer-provided URL which Telnyx posts delivery status webhooks to
        sig { returns(T.nilable(String)) }
        attr_reader :delivery_status_webhook_url

        sig { params(delivery_status_webhook_url: String).void }
        attr_writer :delivery_status_webhook_url

        # Logical direction of the message from the Telnyx customer's perspective. It's
        # inbound when the Telnyx customer receives the message, or outbound otherwise
        sig do
          returns(
            T.nilable(
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Direction::TaggedSymbol
            )
          )
        end
        attr_reader :direction

        sig do
          params(
            direction:
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Direction::OrSymbol
          ).void
        end
        attr_writer :direction

        # Telnyx API error codes returned by the Telnyx gateway
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :errors

        sig { params(errors: T::Array[String]).void }
        attr_writer :errors

        # Indicates whether this is a Free-To-End-User (FTEU) short code message
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :fteu

        sig { params(fteu: T::Boolean).void }
        attr_writer :fteu

        # Mobile country code. Only available for certain products, such as Global
        # Outbound-Only from Alphanumeric Sender ID
        sig { returns(T.nilable(String)) }
        attr_reader :mcc

        sig { params(mcc: String).void }
        attr_writer :mcc

        # Describes the Messaging service used to send the message. Available services
        # are: Short Message Service (SMS), Multimedia Messaging Service (MMS), and Rich
        # Communication Services (RCS)
        sig do
          returns(
            T.nilable(
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType::TaggedSymbol
            )
          )
        end
        attr_reader :message_type

        sig do
          params(
            message_type:
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType::OrSymbol
          ).void
        end
        attr_writer :message_type

        # Mobile network code. Only available for certain products, such as Global
        # Outbound-Only from Alphanumeric Sender ID
        sig { returns(T.nilable(String)) }
        attr_reader :mnc

        sig { params(mnc: String).void }
        attr_writer :mnc

        # Indicates whether both sender and recipient numbers are Telnyx-managed
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :on_net

        sig { params(on_net: T::Boolean).void }
        attr_writer :on_net

        # Number of message parts. The message is broken down in multiple parts when its
        # length surpasses the limit of 160 characters
        sig { returns(T.nilable(Integer)) }
        attr_reader :parts

        sig { params(parts: Integer).void }
        attr_writer :parts

        # Unique identifier of the Messaging Profile used to send or receive the message
        sig { returns(T.nilable(String)) }
        attr_reader :profile_id

        sig { params(profile_id: String).void }
        attr_writer :profile_id

        # Name of the Messaging Profile used to send or receive the message
        sig { returns(T.nilable(String)) }
        attr_reader :profile_name

        sig { params(profile_name: String).void }
        attr_writer :profile_name

        # Currency amount per billing unit used to calculate the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :rate

        sig { params(rate: String).void }
        attr_writer :rate

        # Time when the message was sent
        sig { returns(T.nilable(Time)) }
        attr_reader :sent_at

        sig { params(sent_at: Time).void }
        attr_writer :sent_at

        # Two-letter representation of the country of the cli property using the ISO
        # 3166-1 alpha-2 format
        sig { returns(T.nilable(String)) }
        attr_reader :source_country_code

        sig { params(source_country_code: String).void }
        attr_writer :source_country_code

        # Final status of the message after the delivery attempt
        sig do
          returns(
            T.nilable(
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
            )
          )
        end
        attr_reader :status

        sig do
          params(
            status:
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::OrSymbol
          ).void
        end
        attr_writer :status

        # Comma-separated tags assigned to the Telnyx number associated with the message
        sig { returns(T.nilable(String)) }
        attr_reader :tags

        sig { params(tags: String).void }
        attr_writer :tags

        # Message updated time
        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        # Identifier of the Telnyx account who owns the message
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        # Unique identifier of the message
        sig { returns(T.nilable(String)) }
        attr_reader :uuid

        sig { params(uuid: String).void }
        attr_writer :uuid

        sig do
          params(
            record_type: String,
            carrier: String,
            carrier_fee: String,
            cld: String,
            cli: String,
            completed_at: Time,
            cost: String,
            country_code: String,
            created_at: Time,
            currency: String,
            delivery_status: String,
            delivery_status_failover_url: String,
            delivery_status_webhook_url: String,
            direction:
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Direction::OrSymbol,
            errors: T::Array[String],
            fteu: T::Boolean,
            mcc: String,
            message_type:
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType::OrSymbol,
            mnc: String,
            on_net: T::Boolean,
            parts: Integer,
            profile_id: String,
            profile_name: String,
            rate: String,
            sent_at: Time,
            source_country_code: String,
            status:
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::OrSymbol,
            tags: String,
            updated_at: Time,
            user_id: String,
            uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Identifies the record schema
          record_type:,
          # Country-specific carrier used to send or receive the message
          carrier: nil,
          # Fee charged by certain carriers in order to deliver certain message types.
          # Telnyx passes this fee on to the customer according to our pricing table
          carrier_fee: nil,
          # The recipient of the message (to parameter in the Messaging API)
          cld: nil,
          # The sender of the message (from parameter in the Messaging API). For
          # Alphanumeric ID messages, this is the sender ID value
          cli: nil,
          # Message completion time
          completed_at: nil,
          # Amount, in the user currency, for the Telnyx billing cost
          cost: nil,
          # Two-letter representation of the country of the cld property using the ISO
          # 3166-1 alpha-2 format
          country_code: nil,
          # Message creation time
          created_at: nil,
          # Telnyx account currency used to describe monetary values, including billing cost
          currency: nil,
          # Final webhook delivery status
          delivery_status: nil,
          # Failover customer-provided URL which Telnyx posts delivery status webhooks to
          delivery_status_failover_url: nil,
          # Primary customer-provided URL which Telnyx posts delivery status webhooks to
          delivery_status_webhook_url: nil,
          # Logical direction of the message from the Telnyx customer's perspective. It's
          # inbound when the Telnyx customer receives the message, or outbound otherwise
          direction: nil,
          # Telnyx API error codes returned by the Telnyx gateway
          errors: nil,
          # Indicates whether this is a Free-To-End-User (FTEU) short code message
          fteu: nil,
          # Mobile country code. Only available for certain products, such as Global
          # Outbound-Only from Alphanumeric Sender ID
          mcc: nil,
          # Describes the Messaging service used to send the message. Available services
          # are: Short Message Service (SMS), Multimedia Messaging Service (MMS), and Rich
          # Communication Services (RCS)
          message_type: nil,
          # Mobile network code. Only available for certain products, such as Global
          # Outbound-Only from Alphanumeric Sender ID
          mnc: nil,
          # Indicates whether both sender and recipient numbers are Telnyx-managed
          on_net: nil,
          # Number of message parts. The message is broken down in multiple parts when its
          # length surpasses the limit of 160 characters
          parts: nil,
          # Unique identifier of the Messaging Profile used to send or receive the message
          profile_id: nil,
          # Name of the Messaging Profile used to send or receive the message
          profile_name: nil,
          # Currency amount per billing unit used to calculate the Telnyx billing cost
          rate: nil,
          # Time when the message was sent
          sent_at: nil,
          # Two-letter representation of the country of the cli property using the ISO
          # 3166-1 alpha-2 format
          source_country_code: nil,
          # Final status of the message after the delivery attempt
          status: nil,
          # Comma-separated tags assigned to the Telnyx number associated with the message
          tags: nil,
          # Message updated time
          updated_at: nil,
          # Identifier of the Telnyx account who owns the message
          user_id: nil,
          # Unique identifier of the message
          uuid: nil
        )
        end

        sig do
          override.returns(
            {
              record_type: String,
              carrier: String,
              carrier_fee: String,
              cld: String,
              cli: String,
              completed_at: Time,
              cost: String,
              country_code: String,
              created_at: Time,
              currency: String,
              delivery_status: String,
              delivery_status_failover_url: String,
              delivery_status_webhook_url: String,
              direction:
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Direction::TaggedSymbol,
              errors: T::Array[String],
              fteu: T::Boolean,
              mcc: String,
              message_type:
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType::TaggedSymbol,
              mnc: String,
              on_net: T::Boolean,
              parts: Integer,
              profile_id: String,
              profile_name: String,
              rate: String,
              sent_at: Time,
              source_country_code: String,
              status:
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol,
              tags: String,
              updated_at: Time,
              user_id: String,
              uuid: String
            }
          )
        end
        def to_hash
        end

        # Logical direction of the message from the Telnyx customer's perspective. It's
        # inbound when the Telnyx customer receives the message, or outbound otherwise
        module Direction
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Direction
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INBOUND =
            T.let(
              :inbound,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Direction::TaggedSymbol
            )
          OUTBOUND =
            T.let(
              :outbound,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Direction::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Direction::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Describes the Messaging service used to send the message. Available services
        # are: Short Message Service (SMS), Multimedia Messaging Service (MMS), and Rich
        # Communication Services (RCS)
        module MessageType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :SMS,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType::TaggedSymbol
            )
          MMS =
            T.let(
              :MMS,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType::TaggedSymbol
            )
          RCS =
            T.let(
              :RCS,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::MessageType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Final status of the message after the delivery attempt
        module Status
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GW_TIMEOUT =
            T.let(
              :gw_timeout,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
            )
          DELIVERED =
            T.let(
              :delivered,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
            )
          DLR_UNCONFIRMED =
            T.let(
              :dlr_unconfirmed,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
            )
          DLR_TIMEOUT =
            T.let(
              :dlr_timeout,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
            )
          RECEIVED =
            T.let(
              :received,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
            )
          GW_REJECT =
            T.let(
              :gw_reject,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
            )
          FAILED =
            T.let(
              :failed,
              Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DetailRecordListResponse::MessageDetailRecord::Status::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class ConferenceDetailRecord < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DetailRecordListResponse::ConferenceDetailRecord,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :record_type

        # Conference id
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Telnyx UUID that identifies the conference call leg
        sig { returns(T.nilable(String)) }
        attr_reader :call_leg_id

        sig { params(call_leg_id: String).void }
        attr_writer :call_leg_id

        # Duration of the conference call in seconds
        sig { returns(T.nilable(Integer)) }
        attr_reader :call_sec

        sig { params(call_sec: Integer).void }
        attr_writer :call_sec

        # Telnyx UUID that identifies with conference call session
        sig { returns(T.nilable(String)) }
        attr_reader :call_session_id

        sig { params(call_session_id: String).void }
        attr_writer :call_session_id

        # Connection id
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # Conference end time
        sig { returns(T.nilable(Time)) }
        attr_reader :ended_at

        sig { params(ended_at: Time).void }
        attr_writer :ended_at

        # Conference expiry time
        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        # Indicates whether Telnyx billing charges might be applicable
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_telnyx_billable

        sig { params(is_telnyx_billable: T::Boolean).void }
        attr_writer :is_telnyx_billable

        # Conference name
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Sum of the conference call duration for all participants in seconds
        sig { returns(T.nilable(Integer)) }
        attr_reader :participant_call_sec

        sig { params(participant_call_sec: Integer).void }
        attr_writer :participant_call_sec

        # Number of participants that joined the conference call
        sig { returns(T.nilable(Integer)) }
        attr_reader :participant_count

        sig { params(participant_count: Integer).void }
        attr_writer :participant_count

        # Region where the conference is hosted
        sig { returns(T.nilable(String)) }
        attr_reader :region

        sig { params(region: String).void }
        attr_writer :region

        # Conference start time
        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        # User id
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            record_type: String,
            id: String,
            call_leg_id: String,
            call_sec: Integer,
            call_session_id: String,
            connection_id: String,
            ended_at: Time,
            expires_at: Time,
            is_telnyx_billable: T::Boolean,
            name: String,
            participant_call_sec: Integer,
            participant_count: Integer,
            region: String,
            started_at: Time,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          record_type:,
          # Conference id
          id: nil,
          # Telnyx UUID that identifies the conference call leg
          call_leg_id: nil,
          # Duration of the conference call in seconds
          call_sec: nil,
          # Telnyx UUID that identifies with conference call session
          call_session_id: nil,
          # Connection id
          connection_id: nil,
          # Conference end time
          ended_at: nil,
          # Conference expiry time
          expires_at: nil,
          # Indicates whether Telnyx billing charges might be applicable
          is_telnyx_billable: nil,
          # Conference name
          name: nil,
          # Sum of the conference call duration for all participants in seconds
          participant_call_sec: nil,
          # Number of participants that joined the conference call
          participant_count: nil,
          # Region where the conference is hosted
          region: nil,
          # Conference start time
          started_at: nil,
          # User id
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              record_type: String,
              id: String,
              call_leg_id: String,
              call_sec: Integer,
              call_session_id: String,
              connection_id: String,
              ended_at: Time,
              expires_at: Time,
              is_telnyx_billable: T::Boolean,
              name: String,
              participant_call_sec: Integer,
              participant_count: Integer,
              region: String,
              started_at: Time,
              user_id: String
            }
          )
        end
        def to_hash
        end
      end

      class ConferenceParticipantDetailRecord < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DetailRecordListResponse::ConferenceParticipantDetailRecord,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :record_type

        # Participant id
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Duration of the conference call for billing purposes
        sig { returns(T.nilable(Integer)) }
        attr_reader :billed_sec

        sig { params(billed_sec: Integer).void }
        attr_writer :billed_sec

        # Telnyx UUID that identifies the conference call leg
        sig { returns(T.nilable(String)) }
        attr_reader :call_leg_id

        sig { params(call_leg_id: String).void }
        attr_writer :call_leg_id

        # Duration of the conference call in seconds
        sig { returns(T.nilable(Integer)) }
        attr_reader :call_sec

        sig { params(call_sec: Integer).void }
        attr_writer :call_sec

        # Telnyx UUID that identifies with conference call session
        sig { returns(T.nilable(String)) }
        attr_reader :call_session_id

        sig { params(call_session_id: String).void }
        attr_writer :call_session_id

        # Conference id
        sig { returns(T.nilable(String)) }
        attr_reader :conference_id

        sig { params(conference_id: String).void }
        attr_writer :conference_id

        # Currency amount for Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :cost

        sig { params(cost: String).void }
        attr_writer :cost

        # Telnyx account currency used to describe monetary values, including billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Number called by the participant to join the conference
        sig { returns(T.nilable(String)) }
        attr_reader :destination_number

        sig { params(destination_number: String).void }
        attr_writer :destination_number

        # Indicates whether Telnyx billing charges might be applicable
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_telnyx_billable

        sig { params(is_telnyx_billable: T::Boolean).void }
        attr_writer :is_telnyx_billable

        # Participant join time
        sig { returns(T.nilable(Time)) }
        attr_reader :joined_at

        sig { params(joined_at: Time).void }
        attr_writer :joined_at

        # Participant leave time
        sig { returns(T.nilable(Time)) }
        attr_reader :left_at

        sig { params(left_at: Time).void }
        attr_writer :left_at

        # Participant origin number used in the conference call
        sig { returns(T.nilable(String)) }
        attr_reader :originating_number

        sig { params(originating_number: String).void }
        attr_writer :originating_number

        # Currency amount per billing unit used to calculate the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :rate

        sig { params(rate: String).void }
        attr_writer :rate

        # Billing unit used to calculate the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :rate_measured_in

        sig { params(rate_measured_in: String).void }
        attr_writer :rate_measured_in

        # User id
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        sig do
          params(
            record_type: String,
            id: String,
            billed_sec: Integer,
            call_leg_id: String,
            call_sec: Integer,
            call_session_id: String,
            conference_id: String,
            cost: String,
            currency: String,
            destination_number: String,
            is_telnyx_billable: T::Boolean,
            joined_at: Time,
            left_at: Time,
            originating_number: String,
            rate: String,
            rate_measured_in: String,
            user_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          record_type:,
          # Participant id
          id: nil,
          # Duration of the conference call for billing purposes
          billed_sec: nil,
          # Telnyx UUID that identifies the conference call leg
          call_leg_id: nil,
          # Duration of the conference call in seconds
          call_sec: nil,
          # Telnyx UUID that identifies with conference call session
          call_session_id: nil,
          # Conference id
          conference_id: nil,
          # Currency amount for Telnyx billing cost
          cost: nil,
          # Telnyx account currency used to describe monetary values, including billing cost
          currency: nil,
          # Number called by the participant to join the conference
          destination_number: nil,
          # Indicates whether Telnyx billing charges might be applicable
          is_telnyx_billable: nil,
          # Participant join time
          joined_at: nil,
          # Participant leave time
          left_at: nil,
          # Participant origin number used in the conference call
          originating_number: nil,
          # Currency amount per billing unit used to calculate the Telnyx billing cost
          rate: nil,
          # Billing unit used to calculate the Telnyx billing cost
          rate_measured_in: nil,
          # User id
          user_id: nil
        )
        end

        sig do
          override.returns(
            {
              record_type: String,
              id: String,
              billed_sec: Integer,
              call_leg_id: String,
              call_sec: Integer,
              call_session_id: String,
              conference_id: String,
              cost: String,
              currency: String,
              destination_number: String,
              is_telnyx_billable: T::Boolean,
              joined_at: Time,
              left_at: Time,
              originating_number: String,
              rate: String,
              rate_measured_in: String,
              user_id: String
            }
          )
        end
        def to_hash
        end
      end

      class AmdDetailRecord < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DetailRecordListResponse::AmdDetailRecord,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :record_type

        # Feature invocation id
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Billing Group id
        sig { returns(T.nilable(String)) }
        attr_reader :billing_group_id

        sig { params(billing_group_id: String).void }
        attr_writer :billing_group_id

        # Name of the Billing Group specified in billing_group_id
        sig { returns(T.nilable(String)) }
        attr_reader :billing_group_name

        sig { params(billing_group_name: String).void }
        attr_writer :billing_group_name

        # Telnyx UUID that identifies the related call leg
        sig { returns(T.nilable(String)) }
        attr_reader :call_leg_id

        sig { params(call_leg_id: String).void }
        attr_writer :call_leg_id

        # Telnyx UUID that identifies the related call session
        sig { returns(T.nilable(String)) }
        attr_reader :call_session_id

        sig { params(call_session_id: String).void }
        attr_writer :call_session_id

        # Connection id
        sig { returns(T.nilable(String)) }
        attr_reader :connection_id

        sig { params(connection_id: String).void }
        attr_writer :connection_id

        # Connection name
        sig { returns(T.nilable(String)) }
        attr_reader :connection_name

        sig { params(connection_name: String).void }
        attr_writer :connection_name

        # Currency amount for Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :cost

        sig { params(cost: String).void }
        attr_writer :cost

        # Telnyx account currency used to describe monetary values, including billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Feature name
        sig do
          returns(
            T.nilable(
              Telnyx::Models::DetailRecordListResponse::AmdDetailRecord::Feature::TaggedSymbol
            )
          )
        end
        attr_reader :feature

        sig do
          params(
            feature:
              Telnyx::Models::DetailRecordListResponse::AmdDetailRecord::Feature::OrSymbol
          ).void
        end
        attr_writer :feature

        # Feature invocation time
        sig { returns(T.nilable(Time)) }
        attr_reader :invoked_at

        sig { params(invoked_at: Time).void }
        attr_writer :invoked_at

        # Indicates whether Telnyx billing charges might be applicable
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_telnyx_billable

        sig { params(is_telnyx_billable: T::Boolean).void }
        attr_writer :is_telnyx_billable

        # Currency amount per billing unit used to calculate the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :rate

        sig { params(rate: String).void }
        attr_writer :rate

        # Billing unit used to calculate the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :rate_measured_in

        sig { params(rate_measured_in: String).void }
        attr_writer :rate_measured_in

        # User-provided tags
        sig { returns(T.nilable(String)) }
        attr_reader :tags

        sig { params(tags: String).void }
        attr_writer :tags

        sig do
          params(
            record_type: String,
            id: String,
            billing_group_id: String,
            billing_group_name: String,
            call_leg_id: String,
            call_session_id: String,
            connection_id: String,
            connection_name: String,
            cost: String,
            currency: String,
            feature:
              Telnyx::Models::DetailRecordListResponse::AmdDetailRecord::Feature::OrSymbol,
            invoked_at: Time,
            is_telnyx_billable: T::Boolean,
            rate: String,
            rate_measured_in: String,
            tags: String
          ).returns(T.attached_class)
        end
        def self.new(
          record_type:,
          # Feature invocation id
          id: nil,
          # Billing Group id
          billing_group_id: nil,
          # Name of the Billing Group specified in billing_group_id
          billing_group_name: nil,
          # Telnyx UUID that identifies the related call leg
          call_leg_id: nil,
          # Telnyx UUID that identifies the related call session
          call_session_id: nil,
          # Connection id
          connection_id: nil,
          # Connection name
          connection_name: nil,
          # Currency amount for Telnyx billing cost
          cost: nil,
          # Telnyx account currency used to describe monetary values, including billing cost
          currency: nil,
          # Feature name
          feature: nil,
          # Feature invocation time
          invoked_at: nil,
          # Indicates whether Telnyx billing charges might be applicable
          is_telnyx_billable: nil,
          # Currency amount per billing unit used to calculate the Telnyx billing cost
          rate: nil,
          # Billing unit used to calculate the Telnyx billing cost
          rate_measured_in: nil,
          # User-provided tags
          tags: nil
        )
        end

        sig do
          override.returns(
            {
              record_type: String,
              id: String,
              billing_group_id: String,
              billing_group_name: String,
              call_leg_id: String,
              call_session_id: String,
              connection_id: String,
              connection_name: String,
              cost: String,
              currency: String,
              feature:
                Telnyx::Models::DetailRecordListResponse::AmdDetailRecord::Feature::TaggedSymbol,
              invoked_at: Time,
              is_telnyx_billable: T::Boolean,
              rate: String,
              rate_measured_in: String,
              tags: String
            }
          )
        end
        def to_hash
        end

        # Feature name
        module Feature
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::DetailRecordListResponse::AmdDetailRecord::Feature
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PREMIUM =
            T.let(
              :PREMIUM,
              Telnyx::Models::DetailRecordListResponse::AmdDetailRecord::Feature::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DetailRecordListResponse::AmdDetailRecord::Feature::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class VerifyDetailRecord < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :record_type

        # Unique ID of the verification
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Telnyx account currency used to describe monetary values, including billing
        # costs
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        sig { returns(T.nilable(String)) }
        attr_reader :delivery_status

        sig { params(delivery_status: String).void }
        attr_writer :delivery_status

        # E.164 formatted phone number
        sig { returns(T.nilable(String)) }
        attr_reader :destination_phone_number

        sig { params(destination_phone_number: String).void }
        attr_writer :destination_phone_number

        # Currency amount per billing unit used to calculate the Telnyx billing costs
        sig { returns(T.nilable(String)) }
        attr_reader :rate

        sig { params(rate: String).void }
        attr_writer :rate

        # Billing unit used to calculate the Telnyx billing costs
        sig { returns(T.nilable(String)) }
        attr_reader :rate_measured_in

        sig { params(rate_measured_in: String).void }
        attr_writer :rate_measured_in

        sig { returns(T.nilable(Time)) }
        attr_reader :updated_at

        sig { params(updated_at: Time).void }
        attr_writer :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :verification_status

        sig { params(verification_status: String).void }
        attr_writer :verification_status

        sig { returns(T.nilable(String)) }
        attr_reader :verify_channel_id

        sig { params(verify_channel_id: String).void }
        attr_writer :verify_channel_id

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
        sig do
          returns(
            T.nilable(
              Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::TaggedSymbol
            )
          )
        end
        attr_reader :verify_channel_type

        sig do
          params(
            verify_channel_type:
              Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::OrSymbol
          ).void
        end
        attr_writer :verify_channel_type

        sig { returns(T.nilable(String)) }
        attr_reader :verify_profile_id

        sig { params(verify_profile_id: String).void }
        attr_writer :verify_profile_id

        # Currency amount for Verify Usage Fee
        sig { returns(T.nilable(String)) }
        attr_reader :verify_usage_fee

        sig { params(verify_usage_fee: String).void }
        attr_writer :verify_usage_fee

        sig do
          params(
            record_type: String,
            id: String,
            created_at: Time,
            currency: String,
            delivery_status: String,
            destination_phone_number: String,
            rate: String,
            rate_measured_in: String,
            updated_at: Time,
            verification_status: String,
            verify_channel_id: String,
            verify_channel_type:
              Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::OrSymbol,
            verify_profile_id: String,
            verify_usage_fee: String
          ).returns(T.attached_class)
        end
        def self.new(
          record_type:,
          # Unique ID of the verification
          id: nil,
          created_at: nil,
          # Telnyx account currency used to describe monetary values, including billing
          # costs
          currency: nil,
          delivery_status: nil,
          # E.164 formatted phone number
          destination_phone_number: nil,
          # Currency amount per billing unit used to calculate the Telnyx billing costs
          rate: nil,
          # Billing unit used to calculate the Telnyx billing costs
          rate_measured_in: nil,
          updated_at: nil,
          verification_status: nil,
          verify_channel_id: nil,
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
          verify_channel_type: nil,
          verify_profile_id: nil,
          # Currency amount for Verify Usage Fee
          verify_usage_fee: nil
        )
        end

        sig do
          override.returns(
            {
              record_type: String,
              id: String,
              created_at: Time,
              currency: String,
              delivery_status: String,
              destination_phone_number: String,
              rate: String,
              rate_measured_in: String,
              updated_at: Time,
              verification_status: String,
              verify_channel_id: String,
              verify_channel_type:
                Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::TaggedSymbol,
              verify_profile_id: String,
              verify_usage_fee: String
            }
          )
        end
        def to_hash
        end

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
        module VerifyChannelType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SMS =
            T.let(
              :sms,
              Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::TaggedSymbol
            )
          PSD2 =
            T.let(
              :psd2,
              Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::TaggedSymbol
            )
          CALL =
            T.let(
              :call,
              Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::TaggedSymbol
            )
          FLASHCALL =
            T.let(
              :flashcall,
              Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::DetailRecordListResponse::VerifyDetailRecord::VerifyChannelType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class SimCardUsageDetailRecord < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DetailRecordListResponse::SimCardUsageDetailRecord,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :record_type

        # Unique identifier for this SIM Card Usage
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Event close time
        sig { returns(T.nilable(Time)) }
        attr_reader :closed_at

        sig { params(closed_at: Time).void }
        attr_writer :closed_at

        # Event creation time
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Telnyx account currency used to describe monetary values, including billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Data cost
        sig { returns(T.nilable(Float)) }
        attr_reader :data_cost

        sig { params(data_cost: Float).void }
        attr_writer :data_cost

        # Currency amount per billing unit used to calculate the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :data_rate

        sig { params(data_rate: String).void }
        attr_writer :data_rate

        # Unit of wireless link consumption
        sig { returns(T.nilable(String)) }
        attr_reader :data_unit

        sig { params(data_unit: String).void }
        attr_writer :data_unit

        # Number of megabytes downloaded
        sig { returns(T.nilable(Float)) }
        attr_reader :downlink_data

        sig { params(downlink_data: Float).void }
        attr_writer :downlink_data

        # International Mobile Subscriber Identity
        sig { returns(T.nilable(String)) }
        attr_reader :imsi

        sig { params(imsi: String).void }
        attr_writer :imsi

        # Ip address that generated the event
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address

        sig { params(ip_address: String).void }
        attr_writer :ip_address

        # Mobile country code
        sig { returns(T.nilable(String)) }
        attr_reader :mcc

        sig { params(mcc: String).void }
        attr_writer :mcc

        # Mobile network code
        sig { returns(T.nilable(String)) }
        attr_reader :mnc

        sig { params(mnc: String).void }
        attr_writer :mnc

        # Telephone number associated to SIM card
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Unique identifier for SIM card
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_id

        sig { params(sim_card_id: String).void }
        attr_writer :sim_card_id

        # User-provided tags
        sig { returns(T.nilable(String)) }
        attr_reader :sim_card_tags

        sig { params(sim_card_tags: String).void }
        attr_writer :sim_card_tags

        # Unique identifier for SIM group
        sig { returns(T.nilable(String)) }
        attr_reader :sim_group_id

        sig { params(sim_group_id: String).void }
        attr_writer :sim_group_id

        # Sim group name for sim card
        sig { returns(T.nilable(String)) }
        attr_reader :sim_group_name

        sig { params(sim_group_name: String).void }
        attr_writer :sim_group_name

        # Number of megabytes uploaded
        sig { returns(T.nilable(Float)) }
        attr_reader :uplink_data

        sig { params(uplink_data: Float).void }
        attr_writer :uplink_data

        sig do
          params(
            record_type: String,
            id: String,
            closed_at: Time,
            created_at: Time,
            currency: String,
            data_cost: Float,
            data_rate: String,
            data_unit: String,
            downlink_data: Float,
            imsi: String,
            ip_address: String,
            mcc: String,
            mnc: String,
            phone_number: String,
            sim_card_id: String,
            sim_card_tags: String,
            sim_group_id: String,
            sim_group_name: String,
            uplink_data: Float
          ).returns(T.attached_class)
        end
        def self.new(
          record_type:,
          # Unique identifier for this SIM Card Usage
          id: nil,
          # Event close time
          closed_at: nil,
          # Event creation time
          created_at: nil,
          # Telnyx account currency used to describe monetary values, including billing cost
          currency: nil,
          # Data cost
          data_cost: nil,
          # Currency amount per billing unit used to calculate the Telnyx billing cost
          data_rate: nil,
          # Unit of wireless link consumption
          data_unit: nil,
          # Number of megabytes downloaded
          downlink_data: nil,
          # International Mobile Subscriber Identity
          imsi: nil,
          # Ip address that generated the event
          ip_address: nil,
          # Mobile country code
          mcc: nil,
          # Mobile network code
          mnc: nil,
          # Telephone number associated to SIM card
          phone_number: nil,
          # Unique identifier for SIM card
          sim_card_id: nil,
          # User-provided tags
          sim_card_tags: nil,
          # Unique identifier for SIM group
          sim_group_id: nil,
          # Sim group name for sim card
          sim_group_name: nil,
          # Number of megabytes uploaded
          uplink_data: nil
        )
        end

        sig do
          override.returns(
            {
              record_type: String,
              id: String,
              closed_at: Time,
              created_at: Time,
              currency: String,
              data_cost: Float,
              data_rate: String,
              data_unit: String,
              downlink_data: Float,
              imsi: String,
              ip_address: String,
              mcc: String,
              mnc: String,
              phone_number: String,
              sim_card_id: String,
              sim_card_tags: String,
              sim_group_id: String,
              sim_group_name: String,
              uplink_data: Float
            }
          )
        end
        def to_hash
        end
      end

      class MediaStorageDetailRecord < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::DetailRecordListResponse::MediaStorageDetailRecord,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :record_type

        # Unique identifier for the Media Storage Event
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Type of action performed against the Media Storage API
        sig { returns(T.nilable(String)) }
        attr_reader :action_type

        sig { params(action_type: String).void }
        attr_writer :action_type

        # Asset id
        sig { returns(T.nilable(String)) }
        attr_reader :asset_id

        sig { params(asset_id: String).void }
        attr_writer :asset_id

        # Currency amount for Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :cost

        sig { params(cost: String).void }
        attr_writer :cost

        # Event creation time
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Telnyx account currency used to describe monetary values, including billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :currency

        sig { params(currency: String).void }
        attr_writer :currency

        # Link channel id
        sig { returns(T.nilable(String)) }
        attr_reader :link_channel_id

        sig { params(link_channel_id: String).void }
        attr_writer :link_channel_id

        # Link channel type
        sig { returns(T.nilable(String)) }
        attr_reader :link_channel_type

        sig { params(link_channel_type: String).void }
        attr_writer :link_channel_type

        # Organization owner id
        sig { returns(T.nilable(String)) }
        attr_reader :org_id

        sig { params(org_id: String).void }
        attr_writer :org_id

        # Currency amount per billing unit used to calculate the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :rate

        sig { params(rate: String).void }
        attr_writer :rate

        # Billing unit used to calculate the Telnyx billing cost
        sig { returns(T.nilable(String)) }
        attr_reader :rate_measured_in

        sig { params(rate_measured_in: String).void }
        attr_writer :rate_measured_in

        # Request status
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # User id
        sig { returns(T.nilable(String)) }
        attr_reader :user_id

        sig { params(user_id: String).void }
        attr_writer :user_id

        # Webhook id
        sig { returns(T.nilable(String)) }
        attr_reader :webhook_id

        sig { params(webhook_id: String).void }
        attr_writer :webhook_id

        sig do
          params(
            record_type: String,
            id: String,
            action_type: String,
            asset_id: String,
            cost: String,
            created_at: Time,
            currency: String,
            link_channel_id: String,
            link_channel_type: String,
            org_id: String,
            rate: String,
            rate_measured_in: String,
            status: String,
            user_id: String,
            webhook_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          record_type:,
          # Unique identifier for the Media Storage Event
          id: nil,
          # Type of action performed against the Media Storage API
          action_type: nil,
          # Asset id
          asset_id: nil,
          # Currency amount for Telnyx billing cost
          cost: nil,
          # Event creation time
          created_at: nil,
          # Telnyx account currency used to describe monetary values, including billing cost
          currency: nil,
          # Link channel id
          link_channel_id: nil,
          # Link channel type
          link_channel_type: nil,
          # Organization owner id
          org_id: nil,
          # Currency amount per billing unit used to calculate the Telnyx billing cost
          rate: nil,
          # Billing unit used to calculate the Telnyx billing cost
          rate_measured_in: nil,
          # Request status
          status: nil,
          # User id
          user_id: nil,
          # Webhook id
          webhook_id: nil
        )
        end

        sig do
          override.returns(
            {
              record_type: String,
              id: String,
              action_type: String,
              asset_id: String,
              cost: String,
              created_at: Time,
              currency: String,
              link_channel_id: String,
              link_channel_type: String,
              org_id: String,
              rate: String,
              rate_measured_in: String,
              status: String,
              user_id: String,
              webhook_id: String
            }
          )
        end
        def to_hash
        end
      end

      sig do
        override.returns(
          T::Array[Telnyx::Models::DetailRecordListResponse::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
