# frozen_string_literal: true

module Telnyx
  module Models
    class CallPaymentCompletedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallPaymentCompletedWebhookEvent::Data, nil]
      optional :data, -> { Telnyx::CallPaymentCompletedWebhookEvent::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallPaymentCompletedWebhookEvent::Data]

      # @see Telnyx::Models::CallPaymentCompletedWebhookEvent#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the event.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute event_type
        #   The type of event being delivered.
        #
        #   @return [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::EventType, nil]
        optional :event_type, enum: -> { Telnyx::CallPaymentCompletedWebhookEvent::Data::EventType }

        # @!attribute occurred_at
        #   ISO 8601 datetime when the event occurred.
        #
        #   @return [Time, nil]
        optional :occurred_at, Time

        # @!attribute payload
        #
        #   @return [Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload, nil]
        optional :payload, -> { Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload }

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::RecordType, nil]
        optional :record_type, enum: -> { Telnyx::CallPaymentCompletedWebhookEvent::Data::RecordType }

        # @!method initialize(id: nil, event_type: nil, occurred_at: nil, payload: nil, record_type: nil)
        #   @param id [String] Unique identifier for the event.
        #
        #   @param event_type [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::EventType] The type of event being delivered.
        #
        #   @param occurred_at [Time] ISO 8601 datetime when the event occurred.
        #
        #   @param payload [Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload]
        #
        #   @param record_type [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::RecordType] Identifies the type of the resource.

        # The type of event being delivered.
        #
        # @see Telnyx::Models::CallPaymentCompletedWebhookEvent::Data#event_type
        module EventType
          extend Telnyx::Internal::Type::Enum

          CALL_PAYMENT_COMPLETED = :"call.payment.completed"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::CallPaymentCompletedWebhookEvent::Data#payload
        class Payload < Telnyx::Internal::Type::BaseModel
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

          # @!attribute charge_id
          #   Charge identifier returned for a successful charge transaction.
          #
          #   @return [String, nil]
          optional :charge_id, String

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

          # @!attribute connector_error
          #   Additional connector error information, when supplied by the processor.
          #
          #   @return [String, Hash{Symbol=>Object}, nil]
          optional :connector_error,
                   union: -> { Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::ConnectorError }

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

          # @!attribute pay_error_code
          #   Error code returned by the payment connector or processor.
          #
          #   @return [String, nil]
          optional :pay_error_code, String

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
          #   @return [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType, nil]
          optional :payment_card_type,
                   enum: -> { Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType }

          # @!attribute payment_confirmation_code
          #   Payment confirmation code returned by the processor, when available.
          #
          #   @return [String, nil]
          optional :payment_confirmation_code, String

          # @!attribute payment_connector
          #   Name of the Pay connector used.
          #
          #   @return [String, nil]
          optional :payment_connector, String

          # @!attribute payment_error
          #   Step-level or processor error associated with the final result.
          #
          #   @return [String, nil]
          optional :payment_error, String

          # @!attribute payment_method
          #   Payment method being collected.
          #
          #   @return [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod, nil]
          optional :payment_method,
                   enum: -> { Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod }

          # @!attribute result
          #   Final Pay session result.
          #
          #   @return [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload::Result, nil]
          optional :result, enum: -> { Telnyx::CallPaymentCompletedWebhookEvent::Data::Payload::Result }

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

          # @!attribute token_id
          #   Token identifier returned for a successful tokenize transaction.
          #
          #   @return [String, nil]
          optional :token_id, String

          # @!method initialize(bank_account_number: nil, bank_account_type: nil, bank_routing_number: nil, call_control_id: nil, call_leg_id: nil, call_session_id: nil, charge_id: nil, client_state: nil, connection_id: nil, connector_error: nil, expiration_date: nil, from: nil, pay_error_code: nil, payment_card_number: nil, payment_card_postal_code: nil, payment_card_type: nil, payment_confirmation_code: nil, payment_connector: nil, payment_error: nil, payment_method: nil, result: nil, security_code: nil, to: nil, token_id: nil)
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
          #   @param charge_id [String] Charge identifier returned for a successful charge transaction.
          #
          #   @param client_state [String] Base64-encoded state received from the command.
          #
          #   @param connection_id [String] Call Control App ID used in the call.
          #
          #   @param connector_error [String, Hash{Symbol=>Object}] Additional connector error information, when supplied by the processor.
          #
          #   @param expiration_date [String] Card expiration date in MMYY format.
          #
          #   @param from [String] Number or SIP URI placing the call.
          #
          #   @param pay_error_code [String] Error code returned by the payment connector or processor.
          #
          #   @param payment_card_number [String] Masked card number with only the last four digits visible.
          #
          #   @param payment_card_postal_code [String] Billing postal code collected from the caller.
          #
          #   @param payment_card_type [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentCardType] Detected card type. Present only for the recognized card brands listed below.
          #
          #   @param payment_confirmation_code [String] Payment confirmation code returned by the processor, when available.
          #
          #   @param payment_connector [String] Name of the Pay connector used.
          #
          #   @param payment_error [String] Step-level or processor error associated with the final result.
          #
          #   @param payment_method [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload::PaymentMethod] Payment method being collected.
          #
          #   @param result [Symbol, Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload::Result] Final Pay session result.
          #
          #   @param security_code [String] Fully masked card security code.
          #
          #   @param to [String] Destination number or SIP URI of the call.
          #
          #   @param token_id [String] Token identifier returned for a successful tokenize transaction.

          # Additional connector error information, when supplied by the processor.
          #
          # @see Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload#connector_error
          module ConnectorError
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload::ConnectorError::ConnectorErrorDetailMap }

            # @!method self.variants
            #   @return [Array(String, Hash{Symbol=>Object})]

            # @type [Telnyx::Internal::Type::Converter]
            ConnectorErrorDetailMap = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
          end

          # Detected card type. Present only for the recognized card brands listed below.
          #
          # @see Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload#payment_card_type
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
          # @see Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload#payment_method
          module PaymentMethod
            extend Telnyx::Internal::Type::Enum

            CREDIT_CARD = :"credit-card"
            ACH_DEBIT = :"ach-debit"

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Final Pay session result.
          #
          # @see Telnyx::Models::CallPaymentCompletedWebhookEvent::Data::Payload#result
          module Result
            extend Telnyx::Internal::Type::Enum

            SUCCESS = :success
            PAYMENT_CONNECTOR_ERROR = :"payment-connector-error"
            INTERNAL_ERROR = :"internal-error"
            TOO_MANY_FAILED_ATTEMPTS = :"too-many-failed-attempts"
            CANCELLED = :cancelled

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # Identifies the type of the resource.
        #
        # @see Telnyx::Models::CallPaymentCompletedWebhookEvent::Data#record_type
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
