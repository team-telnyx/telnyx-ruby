# frozen_string_literal: true

module Telnyx
  module Models
    class PortingOrdersExceptionType < Telnyx::Internal::Type::BaseModel
      # @!attribute code
      #   Identifier of an exception type
      #
      #   @return [Symbol, Telnyx::Models::PortingOrdersExceptionType::Code]
      required :code, enum: -> { Telnyx::PortingOrdersExceptionType::Code }

      # @!attribute description
      #   Description of an exception type
      #
      #   @return [String]
      required :description, String

      # @!attribute remediation
      #   Structured remediation steps so an agent can map the exception to a fix via the
      #   API alone
      #
      #   @return [Telnyx::Models::PortingOrdersExceptionType::Remediation]
      required :remediation, -> { Telnyx::PortingOrdersExceptionType::Remediation }

      # @!method initialize(code:, description:, remediation:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrdersExceptionType} for more details.
      #
      #   @param code [Symbol, Telnyx::Models::PortingOrdersExceptionType::Code] Identifier of an exception type
      #
      #   @param description [String] Description of an exception type
      #
      #   @param remediation [Telnyx::Models::PortingOrdersExceptionType::Remediation] Structured remediation steps so an agent can map the exception to a fix via the

      # Identifier of an exception type
      #
      # @see Telnyx::Models::PortingOrdersExceptionType#code
      module Code
        extend Telnyx::Internal::Type::Enum

        ACCOUNT_NUMBER_MISMATCH = :ACCOUNT_NUMBER_MISMATCH
        ACCOUNT_NUMBER_MISMATCH_OR_MISSING = :ACCOUNT_NUMBER_MISMATCH_OR_MISSING
        ACCOUNT_NUMBER_REQUIRED = :ACCOUNT_NUMBER_REQUIRED
        ALL_DATA_MISMATCH = :ALL_DATA_MISMATCH
        AUTH_PERSON_MISMATCH = :AUTH_PERSON_MISMATCH
        BTN_ATN_MISMATCH = :BTN_ATN_MISMATCH
        DOCUMENT_BLOCKED = :DOCUMENT_BLOCKED
        ENTITY_NAME_MISMATCH = :ENTITY_NAME_MISMATCH
        FOC_EXPIRED = :FOC_EXPIRED
        FOC_REJECTED = :FOC_REJECTED
        INCORRECT_LOA_TEMPLATE = :INCORRECT_LOA_TEMPLATE
        INCORRECT_LOSING_COMMUNICATION_PROVIDER = :INCORRECT_LOSING_COMMUNICATION_PROVIDER
        INCORRECT_PORT_TYPE = :INCORRECT_PORT_TYPE
        INVALID_OR_MISSING_INVOICE = :INVALID_OR_MISSING_INVOICE
        INVALID_OR_MISSING_LOA = :INVALID_OR_MISSING_LOA
        INVALID_SIGNATURE_ON_THE_LOA = :INVALID_SIGNATURE_ON_THE_LOA
        J2_PASSCODE_PIN_INVALID = :J2_PASSCODE_PIN_INVALID
        LOCATION_MISMATCH = :LOCATION_MISMATCH
        LSR_PENDING = :LSR_PENDING
        MAIN_BTN_PORTING = :MAIN_BTN_PORTING
        MISSING_MANDATORY_REQUIREMENT = :MISSING_MANDATORY_REQUIREMENT
        MISSING_NUMBER_DETAILS = :MISSING_NUMBER_DETAILS
        NUMBER_HAS_ASSOCIATED_SERVICES = :NUMBER_HAS_ASSOCIATED_SERVICES
        ORDER_REFLOW = :ORDER_REFLOW
        OSP_IRRESPONSIVE = :OSP_IRRESPONSIVE
        OTHER = :OTHER
        PASSCODE_PIN_INVALID = :PASSCODE_PIN_INVALID
        PHONE_NUMBER_MISMATCH = :PHONE_NUMBER_MISMATCH
        PHONE_NUMBER_NOT_PORTABLE = :PHONE_NUMBER_NOT_PORTABLE
        POSTAL_CODE_MISMATCH = :POSTAL_CODE_MISMATCH
        RATE_CENTER_NOT_PORTABLE = :RATE_CENTER_NOT_PORTABLE
        RESELLER_INVALID = :RESELLER_INVALID
        STRANDED_SERVICES_NEED_NEW_BTN = :STRANDED_SERVICES_NEED_NEW_BTN
        SV_CONFLICT = :SV_CONFLICT
        SV_UNKNOWN_FAILURE = :SV_UNKNOWN_FAILURE
        TNS_ON_MULTIPLE_ACCOUNTS = :TNS_ON_MULTIPLE_ACCOUNTS
        TN_BUILD_CONFLICT = :TN_BUILD_CONFLICT
        TN_DISCONNECTED = :TN_DISCONNECTED
        UNAUTHORIZED_PERSON_SIGNATURE = :UNAUTHORIZED_PERSON_SIGNATURE

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::PortingOrdersExceptionType#remediation
      class Remediation < Telnyx::Internal::Type::BaseModel
        # @!attribute action
        #   The type of remediation action to take
        #
        #   @return [Symbol, Telnyx::Models::PortingOrdersExceptionType::Remediation::Action]
        required :action, enum: -> { Telnyx::PortingOrdersExceptionType::Remediation::Action }

        # @!attribute fields
        #   Patchable field paths to correct, empty when no field update applies
        #
        #   @return [Array<String>]
        required :fields, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute required_document
        #   The document to (re)upload, when applicable
        #
        #   @return [Symbol, Telnyx::Models::PortingOrdersExceptionType::Remediation::RequiredDocument, nil]
        required :required_document,
                 enum: -> { Telnyx::PortingOrdersExceptionType::Remediation::RequiredDocument },
                 nil?: true

        # @!attribute retryable
        #   Whether resubmission or polling alone can unblock the order
        #
        #   @return [Boolean]
        required :retryable, Telnyx::Internal::Type::Boolean

        # @!method initialize(action:, fields:, required_document:, retryable:)
        #   Structured remediation steps so an agent can map the exception to a fix via the
        #   API alone
        #
        #   @param action [Symbol, Telnyx::Models::PortingOrdersExceptionType::Remediation::Action] The type of remediation action to take
        #
        #   @param fields [Array<String>] Patchable field paths to correct, empty when no field update applies
        #
        #   @param required_document [Symbol, Telnyx::Models::PortingOrdersExceptionType::Remediation::RequiredDocument, nil] The document to (re)upload, when applicable
        #
        #   @param retryable [Boolean] Whether resubmission or polling alone can unblock the order

        # The type of remediation action to take
        #
        # @see Telnyx::Models::PortingOrdersExceptionType::Remediation#action
        module Action
          extend Telnyx::Internal::Type::Enum

          UPDATE_ORDER_FIELDS = :update_order_fields
          UPLOAD_DOCUMENT = :upload_document
          CREATE_ORDERS = :create_orders
          ASSIGN_FOC_DATETIME = :assign_foc_datetime
          WAIT = :wait
          EXTERNAL_ACTION = :external_action
          CONTACT_SUPPORT = :contact_support

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The document to (re)upload, when applicable
        #
        # @see Telnyx::Models::PortingOrdersExceptionType::Remediation#required_document
        module RequiredDocument
          extend Telnyx::Internal::Type::Enum

          LOA = :loa
          INVOICE = :invoice
          NULL = :null

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
