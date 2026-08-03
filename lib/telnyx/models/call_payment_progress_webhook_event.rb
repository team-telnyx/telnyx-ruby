# frozen_string_literal: true

module Telnyx
  module Models
    class CallPaymentProgressWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallPaymentProgressWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallPaymentProgressWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallPaymentProgressWebhookEvent::Data]

      # @see Telnyx::Models::CallPaymentProgressWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallPaymentProgressWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallPaymentProgressWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallPaymentProgressWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Unique identifier for the event.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallPaymentProgressWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_PAYMENT_PROGRESS = :"call.payment.progress"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallPaymentProgressWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
          # @!attribute attempt
          #   Current 1-based attempt number for the step.
          #
          #   @return [Integer, nil]
          optional :attempt, Integer

          # @!attribute bank_account_number
          #   Masked bank account number with only the last two digits visible.
          #
          #   @return [String, nil]
          optional :bank_account_number, String

          # @!attribute bank_account_type
          #   Bank account type, when available.
          #
          #   @return [String, nil]
          optional :bank_account_type, String

          # @!attribute bank_routing_number
          #   Bank routing number collected from the caller.
          #
          #   @return [String, nil]
          optional :bank_routing_number, String

          # @!attribute call_control_id
          #   Call ID used to issue commands via Call Control API.
          #
          #   @return [String, nil]
          optional :call_control_id, String

          # @!attribute call_leg_id
          #   ID unique to the call leg.
          #
          #   @return [String, nil]
          optional :call_leg_id, String

          # @!attribute call_session_id
          #   ID shared by related call legs in the same call session.
          #
          #   @return [String, nil]
          optional :call_session_id, String

          # @!attribute client_state
          #   Base64-encoded state received from the command.
          #
          #   @return [String, nil]
          optional :client_state, String

          # @!attribute connection_id
          #   Call Control App ID used in the call.
          #
          #   @return [String, nil]
          optional :connection_id, String

          # @!attribute error_type
          #   Step-level error when payment collection fails.
          #
          #   @return [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType, nil]
          optional :error_type, enum: -> { Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType }

          # @!attribute expiration_date
          #   Card expiration date in MMYY format.
          #
          #   @return [String, nil]
          optional :expiration_date, String

          # @!attribute from
          #   Number or SIP URI placing the call.
          #
          #   @return [String, nil]
          optional :from, String

          # @!attribute payment_card_number
          #   Masked card number with only the last four digits visible.
          #
          #   @return [String, nil]
          optional :payment_card_number, String

          # @!attribute payment_card_postal_code
          #   Billing postal code collected from the caller.
          #
          #   @return [String, nil]
          optional :payment_card_postal_code, String

          # @!attribute payment_card_type
          #   Detected card type. Present only for the recognized card brands listed below.
          #
          #   @return [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType, nil]
          optional :payment_card_type,
                   enum: -> { Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType }

          # @!attribute payment_connector
          #   Name of the Pay connector used.
          #
          #   @return [String, nil]
          optional :payment_connector, String

          # @!attribute payment_method
          #   Payment method being collected.
          #
          #   @return [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod, nil]
          optional :payment_method,
                   enum: -> { Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod }

          # @!attribute payment_status
          #   Status of the current payment step.
          #
          #   @return [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus, nil]
          optional :payment_status,
                   enum: -> { Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus }

          # @!attribute payment_step
          #   Current payment collection or processing step.
          #
          #   @return [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep, nil]
          optional :payment_step, enum: -> { Telnyx::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep }

          # @!attribute security_code
          #   Fully masked card security code.
          #
          #   @return [String, nil]
          optional :security_code, String

          # @!attribute to
          #   Destination number or SIP URI of the call.
          #
          #   @return [String, nil]
          optional :to, String

          # @!method initialize(attempt: nil, bank_account_number: nil, bank_account_type: nil, bank_routing_number: nil, call_control_id: nil, call_leg_id: nil, call_session_id: nil, client_state: nil, connection_id: nil, error_type: nil, expiration_date: nil, from: nil, payment_card_number: nil, payment_card_postal_code: nil, payment_card_type: nil, payment_connector: nil, payment_method: nil, payment_status: nil, payment_step: nil, security_code: nil, to: nil)
          #   @param attempt [Integer] Current 1-based attempt number for the step.
          #
          #   @param bank_account_number [String] Masked bank account number with only the last two digits visible.
          #
          #   @param bank_account_type [String] Bank account type, when available.
          #
          #   @param bank_routing_number [String] Bank routing number collected from the caller.
          #
          #   @param call_control_id [String] Call ID used to issue commands via Call Control API.
          #
          #   @param call_leg_id [String] ID unique to the call leg.
          #
          #   @param call_session_id [String] ID shared by related call legs in the same call session.
          #
          #   @param client_state [String] Base64-encoded state received from the command.
          #
          #   @param connection_id [String] Call Control App ID used in the call.
          #
          #   @param error_type [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::ErrorType] Step-level error when payment collection fails.
          #
          #   @param expiration_date [String] Card expiration date in MMYY format.
          #
          #   @param from [String] Number or SIP URI placing the call.
          #
          #   @param payment_card_number [String] Masked card number with only the last four digits visible.
          #
          #   @param payment_card_postal_code [String] Billing postal code collected from the caller.
          #
          #   @param payment_card_type [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::PaymentCardType] Detected card type. Present only for the recognized card brands listed below.
          #
          #   @param payment_connector [String] Name of the Pay connector used.
          #
          #   @param payment_method [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::PaymentMethod] Payment method being collected.
          #
          #   @param payment_status [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStatus] Status of the current payment step.
          #
          #   @param payment_step [Symbol, Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload::PaymentStep] Current payment collection or processing step.
          #
          #   @param security_code [String] Fully masked card security code.
          #
          #   @param to [String] Destination number or SIP URI of the call.

          # Step-level error when payment collection fails.
          #
          # @see Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload#error_type
          module ErrorType
            extend Telnyx::Internal::Type::Enum

            TIMEOUT = :timeout
            INVALID_CARD_NUMBER = :"invalid-card-number"
            INVALID_DATE = :"invalid-date"
            INVALID_SECURITY_CODE = :"invalid-security-code"
            INVALID_POSTAL_CODE = :"invalid-postal-code"
            INVALID_BANK_ROUTING_NUMBER = :"invalid-bank-routing-number"
            INVALID_BANK_ACCOUNT_NUMBER = :"invalid-bank-account-number"
            INPUT_MATCHING_FAILED = :"input-matching-failed"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Detected card type. Present only for the recognized card brands listed below.
          #
          # @see Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload#payment_card_type
          module PaymentCardType
            extend Telnyx::Internal::Type::Enum

            VISA = :visa
            MASTERCARD = :mastercard
            AMEX = :amex
            DISCOVER = :discover
            DINERS_CLUB = :"diners-club"
            JCB = :jcb

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Payment method being collected.
          #
          # @see Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload#payment_method
          module PaymentMethod
            extend Telnyx::Internal::Type::Enum

            CREDIT_CARD = :"credit-card"
            ACH_DEBIT = :"ach-debit"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Status of the current payment step.
          #
          # @see Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload#payment_status
          module PaymentStatus
            extend Telnyx::Internal::Type::Enum

            COMPLETED = :completed
            FAILED = :failed
            PROCESSING = :processing

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Current payment collection or processing step.
          #
          # @see Telnyx::Models::CallPaymentProgressWebhookEvent::Data::Payload#payment_step
          module PaymentStep
            extend Telnyx::Internal::Type::Enum

            PAYMENT_CARD_NUMBER = :"payment-card-number"
            EXPIRATION_DATE = :"expiration-date"
            POSTAL_CODE = :"postal-code"
            SECURITY_CODE = :"security-code"
            BANK_ROUTING_NUMBER = :"bank-routing-number"
            BANK_ACCOUNT_NUMBER = :"bank-account-number"
            PAYMENT_PROCESSING = :"payment-processing"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallPaymentProgressWebhookEvent::Data#record_type
        module RecordType
          extend Telnyx::Internal::Type::Enum

          EVENT = :event

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
