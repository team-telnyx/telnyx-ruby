# frozen_string_literal: true

module Telnyx
  module Models
    class NumberOrderStatusUpdateWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data]
      required :data, -> { Telnyx::NumberOrderStatusUpdateWebhookEvent::Data }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Meta]
      required :meta, -> { Telnyx::NumberOrderStatusUpdateWebhookEvent::Meta }

      # @!method initialize(data:, meta:)
      #   @param data [Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data]
      #   @param meta [Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Meta]

      # @see Telnyx::Models::NumberOrderStatusUpdateWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the event
        #
        #   @return [String]
        required :id, String

        # @!attribute event_type
        #   The type of event being sent
        #
        #   @return [String]
        required :event_type, String

        # @!attribute occurred_at
        #   ISO 8601 timestamp of when the event occurred
        #
        #   @return [Time]
        required :occurred_at, Time

        # @!attribute payload
        #   Number order data delivered in a webhook. Server-generated fields are valid in
        #   this outbound webhook request.
        #
        #   @return [Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload]
        required :payload, -> { Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Type of record
        #
        #   @return [String]
        required :record_type, String

        # @!method initialize(id:, event_type:, occurred_at:, payload:, record_type:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data} for more details.
        #
        #   @param id [String] Unique identifier for the event
        #
        #   @param event_type [String] The type of event being sent
        #
        #   @param occurred_at [Time] ISO 8601 timestamp of when the event occurred
        #
        #   @param payload [Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload] Number order data delivered in a webhook. Server-generated fields are valid in t
        #
        #   @param record_type [String] Type of record

        # @see Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute billing_group_id
          #   Identifies the messaging profile associated with the phone number.
          #
          #   @return [String, nil]
          optional :billing_group_id, String

          # @!attribute connection_id
          #   Identifies the connection associated with this phone number.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute created_at
          #   An ISO 8901 datetime string denoting when the number order was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute customer_reference
          #   A customer reference string for customer look ups.
          #
          #   @return [String, nil]
          optional :customer_reference, String

          # @!attribute messaging_profile_id
          #   Identifies the messaging profile associated with the phone number.
          #
          #   @return [String, nil]
          optional :messaging_profile_id, String

          # @!attribute phone_numbers
          #
          #   @return [Array<Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber>, nil]
          optional :phone_numbers,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber] }

          # @!attribute phone_numbers_count
          #   The count of phone numbers in the number order.
          #
          #   @return [Integer, nil]
          optional :phone_numbers_count, Integer

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute requirements_met
          #   True if all requirements are met for every phone number, false otherwise.
          #
          #   @return [Boolean, nil]
          optional :requirements_met, Telnyx::Internal::Type::Boolean

          # @!attribute status
          #   The status of the order.
          #
          #   @return [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status, nil]
          optional :status, enum: -> { Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status }

          # @!attribute sub_number_orders_ids
          #
          #   @return [Array<String>, nil]
          optional :sub_number_orders_ids, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute updated_at
          #   An ISO 8901 datetime string for when the number order was updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(id: nil, billing_group_id: nil, connection_id: nil, created_at: nil, customer_reference: nil, messaging_profile_id: nil, phone_numbers: nil, phone_numbers_count: nil, record_type: nil, requirements_met: nil, status: nil, sub_number_orders_ids: nil, updated_at: nil)
          #   Number order data delivered in a webhook. Server-generated fields are valid in
          #   this outbound webhook request.
          #
          #   @param id [String]
          #
          #   @param billing_group_id [String] Identifies the messaging profile associated with the phone number.
          #
          #   @param connection_id [String] Identifies the connection associated with this phone number.
          #
          #   @param created_at [Time] An ISO 8901 datetime string denoting when the number order was created.
          #
          #   @param customer_reference [String] A customer reference string for customer look ups.
          #
          #   @param messaging_profile_id [String] Identifies the messaging profile associated with the phone number.
          #
          #   @param phone_numbers [Array<Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber>]
          #
          #   @param phone_numbers_count [Integer] The count of phone numbers in the number order.
          #
          #   @param record_type [String]
          #
          #   @param requirements_met [Boolean] True if all requirements are met for every phone number, false otherwise.
          #
          #   @param status [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::Status] The status of the order.
          #
          #   @param sub_number_orders_ids [Array<String>]
          #
          #   @param updated_at [Time] An ISO 8901 datetime string for when the number order was updated.

          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String, nil]
            optional :id, String

            # @!attribute bundle_id
            #
            #   @return [String, nil]
            optional :bundle_id, String

            # @!attribute country_code
            #   Country code of the phone number
            #
            #   @return [String, nil]
            optional :country_code, String

            # @!attribute country_iso_alpha2
            #   The ISO 3166-1 alpha-2 country code of the phone number.
            #
            #   @return [String, nil]
            optional :country_iso_alpha2, String

            # @!attribute phone_number
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute phone_number_type
            #   Phone number type
            #
            #   @return [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType, nil]
            optional :phone_number_type,
                     enum: -> { Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType }

            # @!attribute record_type
            #
            #   @return [String, nil]
            optional :record_type, String

            # @!attribute regulatory_requirements
            #
            #   @return [Array<Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement>, nil]
            optional :regulatory_requirements,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement] }

            # @!attribute requirements_met
            #   True if all requirements are met for a phone number, false otherwise.
            #
            #   @return [Boolean, nil]
            optional :requirements_met, Telnyx::Internal::Type::Boolean

            # @!attribute requirements_status
            #   Status of document requirements (if applicable)
            #
            #   @return [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus, nil]
            optional :requirements_status,
                     enum: -> { Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus }

            # @!attribute status
            #   The status of the phone number in the order.
            #
            #   @return [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status, nil]
            optional :status,
                     enum: -> { Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status }

            # @!method initialize(id: nil, bundle_id: nil, country_code: nil, country_iso_alpha2: nil, phone_number: nil, phone_number_type: nil, record_type: nil, regulatory_requirements: nil, requirements_met: nil, requirements_status: nil, status: nil)
            #   The unique phone numbers given as arguments in the job creation.
            #
            #   @param id [String]
            #
            #   @param bundle_id [String]
            #
            #   @param country_code [String] Country code of the phone number
            #
            #   @param country_iso_alpha2 [String] The ISO 3166-1 alpha-2 country code of the phone number.
            #
            #   @param phone_number [String]
            #
            #   @param phone_number_type [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::PhoneNumberType] Phone number type
            #
            #   @param record_type [String]
            #
            #   @param regulatory_requirements [Array<Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement>]
            #
            #   @param requirements_met [Boolean] True if all requirements are met for a phone number, false otherwise.
            #
            #   @param requirements_status [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RequirementsStatus] Status of document requirements (if applicable)
            #
            #   @param status [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::Status] The status of the phone number in the order.

            # Phone number type
            #
            # @see Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber#phone_number_type
            module PhoneNumberType
              extend Telnyx::Internal::Type::Enum

              LOCAL = :local
              MOBILE = :mobile
              NATIONAL = :national
              SHARED_COST = :shared_cost
              TOLL_FREE = :toll_free

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class RegulatoryRequirement < Telnyx::Internal::Type::BaseModel
              # @!attribute field_type
              #
              #   @return [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType, nil]
              optional :field_type,
                       enum: -> { Telnyx::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType }

              # @!attribute field_value
              #   The value of the requirement, this could be an id to a resource or a string
              #   value.
              #
              #   @return [String, nil]
              optional :field_value, String

              # @!attribute record_type
              #
              #   @return [String, nil]
              optional :record_type, String

              # @!attribute requirement_id
              #   Unique id for a requirement.
              #
              #   @return [String, nil]
              optional :requirement_id, String

              # @!method initialize(field_type: nil, field_value: nil, record_type: nil, requirement_id: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement}
              #   for more details.
              #
              #   Regulatory requirement data delivered in a number order webhook.
              #
              #   @param field_type [Symbol, Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement::FieldType]
              #
              #   @param field_value [String] The value of the requirement, this could be an id to a resource or a string valu
              #
              #   @param record_type [String]
              #
              #   @param requirement_id [String] Unique id for a requirement.

              # @see Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber::RegulatoryRequirement#field_type
              module FieldType
                extend Telnyx::Internal::Type::Enum

                TEXTUAL = :textual
                DATETIME = :datetime
                ADDRESS = :address
                DOCUMENT = :document

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # Status of document requirements (if applicable)
            #
            # @see Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber#requirements_status
            module RequirementsStatus
              extend Telnyx::Internal::Type::Enum

              PENDING = :pending
              APPROVED = :approved
              CANCELLED = :cancelled
              DELETED = :deleted
              REQUIREMENT_INFO_EXCEPTION = :"requirement-info-exception"
              REQUIREMENT_INFO_PENDING = :"requirement-info-pending"
              REQUIREMENT_INFO_UNDER_REVIEW = :"requirement-info-under-review"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The status of the phone number in the order.
            #
            # @see Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload::PhoneNumber#status
            module Status
              extend Telnyx::Internal::Type::Enum

              PENDING = :pending
              SUCCESS = :success
              FAILURE = :failure

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # The status of the order.
          #
          # @see Telnyx::Models::NumberOrderStatusUpdateWebhookEvent::Data::Payload#status
          module Status
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            SUCCESS = :success
            FAILURE = :failure

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see Telnyx::Models::NumberOrderStatusUpdateWebhookEvent#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute attempt
        #   Webhook delivery attempt number
        #
        #   @return [Integer]
        required :attempt, Integer

        # @!attribute delivered_to
        #   URL where the webhook was delivered
        #
        #   @return [String]
        required :delivered_to, String

        # @!method initialize(attempt:, delivered_to:)
        #   @param attempt [Integer] Webhook delivery attempt number
        #
        #   @param delivered_to [String] URL where the webhook was delivered
      end
    end
  end
end
