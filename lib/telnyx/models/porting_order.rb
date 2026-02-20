# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#list
    class PortingOrder < Telnyx::Internal::Type::BaseModel
      # @!attribute activation_settings
      #
      #   @return [Telnyx::Models::PortingOrderActivationSettings, nil]
      optional :activation_settings, -> { Telnyx::PortingOrderActivationSettings }

      # @!attribute additional_steps
      #   For specific porting orders, we may require additional steps to be taken before
      #   submitting the porting order.
      #
      #   @return [Array<Symbol, Telnyx::Models::PortingOrder::AdditionalStep>, nil]
      optional :additional_steps,
               -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::PortingOrder::AdditionalStep] }

      # @!attribute customer_group_reference
      #   A customer-specified group reference for customer bookkeeping purposes
      #
      #   @return [String, nil]
      optional :customer_group_reference, String, nil?: true

      # @!attribute customer_reference
      #   A customer-specified reference number for customer bookkeeping purposes
      #
      #   @return [String, nil]
      optional :customer_reference, String, nil?: true

      # @!attribute documents
      #   Can be specified directly or via the `requirement_group_id` parameter.
      #
      #   @return [Telnyx::Models::PortingOrderDocuments, nil]
      optional :documents, -> { Telnyx::PortingOrderDocuments }

      # @!attribute end_user
      #
      #   @return [Telnyx::Models::PortingOrderEndUser, nil]
      optional :end_user, -> { Telnyx::PortingOrderEndUser }

      # @!attribute messaging
      #   Information about messaging porting process.
      #
      #   @return [Telnyx::Models::PortingOrderMessaging, nil]
      optional :messaging, -> { Telnyx::PortingOrderMessaging }

      # @!attribute misc
      #
      #   @return [Telnyx::Models::PortingOrderMisc, nil]
      optional :misc, -> { Telnyx::PortingOrderMisc }, nil?: true

      # @!attribute phone_number_configuration
      #
      #   @return [Telnyx::Models::PortingOrderPhoneNumberConfiguration, nil]
      optional :phone_number_configuration, -> { Telnyx::PortingOrderPhoneNumberConfiguration }

      # @!attribute phone_number_type
      #   The type of the phone number
      #
      #   @return [Symbol, Telnyx::Models::PortingOrder::PhoneNumberType, nil]
      optional :phone_number_type, enum: -> { Telnyx::PortingOrder::PhoneNumberType }

      # @!attribute phone_numbers
      #   List of phone numbers associated with this porting order
      #
      #   @return [Array<Telnyx::Models::PortingOrder::PhoneNumber>, nil]
      optional :phone_numbers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrder::PhoneNumber] }

      # @!attribute requirements
      #   List of documentation requirements for porting numbers. Can be set directly or
      #   via the `requirement_group_id` parameter.
      #
      #   @return [Array<Telnyx::Models::PortingOrderRequirement>, nil]
      optional :requirements, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrderRequirement] }

      # @!attribute requirements_met
      #   Is true when the required documentation is met
      #
      #   @return [Boolean, nil]
      optional :requirements_met, Telnyx::Internal::Type::Boolean

      # @!attribute status
      #   Porting order status
      #
      #   @return [Telnyx::Models::PortingOrderStatus, nil]
      optional :status, -> { Telnyx::PortingOrderStatus }

      # @!attribute user_feedback
      #
      #   @return [Telnyx::Models::PortingOrderUserFeedback, nil]
      optional :user_feedback, -> { Telnyx::PortingOrderUserFeedback }

      # @!attribute user_id
      #   Identifies the user (or organization) who requested the porting order
      #
      #   @return [String, nil]
      optional :user_id, String

      # @!attribute webhook_url
      #
      #   @return [String, nil]
      optional :webhook_url, String, nil?: true

      response_only do
        # @!attribute id
        #   Uniquely identifies this porting order
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute description
        #   A description of the porting order
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute old_service_provider_ocn
        #   Identifies the old service provider
        #
        #   @return [String, nil]
        optional :old_service_provider_ocn, String

        # @!attribute parent_support_key
        #   A key to reference for the porting order group when contacting Telnyx customer
        #   support. This information is not available for porting orders in `draft` state
        #
        #   @return [String, nil]
        optional :parent_support_key, String, nil?: true

        # @!attribute porting_phone_numbers_count
        #   Count of phone numbers associated with this porting order
        #
        #   @return [Integer, nil]
        optional :porting_phone_numbers_count, Integer

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!attribute support_key
        #   A key to reference this porting order when contacting Telnyx customer support.
        #   This information is not available in draft porting orders.
        #
        #   @return [String, nil]
        optional :support_key, String, nil?: true

        # @!attribute updated_at
        #   ISO 8601 formatted date indicating when the resource was created.
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, activation_settings: nil, additional_steps: nil, created_at: nil, customer_group_reference: nil, customer_reference: nil, description: nil, documents: nil, end_user: nil, messaging: nil, misc: nil, old_service_provider_ocn: nil, parent_support_key: nil, phone_number_configuration: nil, phone_number_type: nil, phone_numbers: nil, porting_phone_numbers_count: nil, record_type: nil, requirements: nil, requirements_met: nil, status: nil, support_key: nil, updated_at: nil, user_feedback: nil, user_id: nil, webhook_url: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::PortingOrder} for more details.
      #
      #   @param id [String] Uniquely identifies this porting order
      #
      #   @param activation_settings [Telnyx::Models::PortingOrderActivationSettings]
      #
      #   @param additional_steps [Array<Symbol, Telnyx::Models::PortingOrder::AdditionalStep>] For specific porting orders, we may require additional steps to be taken before
      #
      #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param customer_group_reference [String, nil] A customer-specified group reference for customer bookkeeping purposes
      #
      #   @param customer_reference [String, nil] A customer-specified reference number for customer bookkeeping purposes
      #
      #   @param description [String] A description of the porting order
      #
      #   @param documents [Telnyx::Models::PortingOrderDocuments] Can be specified directly or via the `requirement_group_id` parameter.
      #
      #   @param end_user [Telnyx::Models::PortingOrderEndUser]
      #
      #   @param messaging [Telnyx::Models::PortingOrderMessaging] Information about messaging porting process.
      #
      #   @param misc [Telnyx::Models::PortingOrderMisc, nil]
      #
      #   @param old_service_provider_ocn [String] Identifies the old service provider
      #
      #   @param parent_support_key [String, nil] A key to reference for the porting order group when contacting Telnyx customer s
      #
      #   @param phone_number_configuration [Telnyx::Models::PortingOrderPhoneNumberConfiguration]
      #
      #   @param phone_number_type [Symbol, Telnyx::Models::PortingOrder::PhoneNumberType] The type of the phone number
      #
      #   @param phone_numbers [Array<Telnyx::Models::PortingOrder::PhoneNumber>] List of phone numbers associated with this porting order
      #
      #   @param porting_phone_numbers_count [Integer] Count of phone numbers associated with this porting order
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param requirements [Array<Telnyx::Models::PortingOrderRequirement>] List of documentation requirements for porting numbers. Can be set directly or v
      #
      #   @param requirements_met [Boolean] Is true when the required documentation is met
      #
      #   @param status [Telnyx::Models::PortingOrderStatus] Porting order status
      #
      #   @param support_key [String, nil] A key to reference this porting order when contacting Telnyx customer support. T
      #
      #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was created.
      #
      #   @param user_feedback [Telnyx::Models::PortingOrderUserFeedback]
      #
      #   @param user_id [String] Identifies the user (or organization) who requested the porting order
      #
      #   @param webhook_url [String, nil]

      module AdditionalStep
        extend Telnyx::Internal::Type::Enum

        ASSOCIATED_PHONE_NUMBERS = :associated_phone_numbers
        PHONE_NUMBER_VERIFICATION_CODES = :phone_number_verification_codes

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The type of the phone number
      #
      # @see Telnyx::Models::PortingOrder#phone_number_type
      module PhoneNumberType
        extend Telnyx::Internal::Type::Enum

        LANDLINE = :landline
        LOCAL = :local
        MOBILE = :mobile
        NATIONAL = :national
        SHARED_COST = :shared_cost
        TOLL_FREE = :toll_free

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class PhoneNumber < Telnyx::Internal::Type::BaseModel
        # @!attribute activation_status
        #   Activation status
        #
        #   @return [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::ActivationStatus, nil]
        optional :activation_status, enum: -> { Telnyx::PortingOrder::PhoneNumber::ActivationStatus }

        # @!attribute phone_number
        #   E164 formatted phone number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute phone_number_type
        #   The type of the phone number
        #
        #   @return [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::PhoneNumberType, nil]
        optional :phone_number_type, enum: -> { Telnyx::PortingOrder::PhoneNumber::PhoneNumberType }

        # @!attribute portability_status
        #   Specifies whether Telnyx is able to confirm portability this number in the
        #   United States & Canada. International phone numbers are provisional by default.
        #
        #   @return [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::PortabilityStatus, nil]
        optional :portability_status, enum: -> { Telnyx::PortingOrder::PhoneNumber::PortabilityStatus }

        # @!attribute porting_order_id
        #   Identifies the associated port request
        #
        #   @return [String, nil]
        optional :porting_order_id, String

        # @!attribute porting_order_status
        #   The current status of the porting order
        #
        #   @return [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::PortingOrderStatus, nil]
        optional :porting_order_status, enum: -> { Telnyx::PortingOrder::PhoneNumber::PortingOrderStatus }

        # @!attribute requirements_status
        #   The current status of the requirements in a INTL porting order
        #
        #   @return [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::RequirementsStatus, nil]
        optional :requirements_status, enum: -> { Telnyx::PortingOrder::PhoneNumber::RequirementsStatus }

        # @!attribute support_key
        #   A key to reference this porting order when contacting Telnyx customer support
        #
        #   @return [String, nil]
        optional :support_key, String

        response_only do
          # @!attribute record_type
          #   Identifies the type of the resource.
          #
          #   @return [String, nil]
          optional :record_type, String
        end

        # @!method initialize(activation_status: nil, phone_number: nil, phone_number_type: nil, portability_status: nil, porting_order_id: nil, porting_order_status: nil, record_type: nil, requirements_status: nil, support_key: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::PortingOrder::PhoneNumber} for more details.
        #
        #   @param activation_status [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::ActivationStatus] Activation status
        #
        #   @param phone_number [String] E164 formatted phone number
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::PhoneNumberType] The type of the phone number
        #
        #   @param portability_status [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::PortabilityStatus] Specifies whether Telnyx is able to confirm portability this number in the Unite
        #
        #   @param porting_order_id [String] Identifies the associated port request
        #
        #   @param porting_order_status [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::PortingOrderStatus] The current status of the porting order
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param requirements_status [Symbol, Telnyx::Models::PortingOrder::PhoneNumber::RequirementsStatus] The current status of the requirements in a INTL porting order
        #
        #   @param support_key [String] A key to reference this porting order when contacting Telnyx customer support

        # Activation status
        #
        # @see Telnyx::Models::PortingOrder::PhoneNumber#activation_status
        module ActivationStatus
          extend Telnyx::Internal::Type::Enum

          NEW = :New
          PENDING = :Pending
          CONFLICT = :Conflict
          CANCEL_PENDING = :"Cancel Pending"
          FAILED = :Failed
          CONCURRED = :Concurred
          ACTIVATE_RDY = :"Activate RDY"
          DISCONNECT_PENDING = :"Disconnect Pending"
          CONCURRENCE_SENT = :"Concurrence Sent"
          OLD = :Old
          SENDING = :Sending
          ACTIVE = :Active
          CANCELLED = :Cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of the phone number
        #
        # @see Telnyx::Models::PortingOrder::PhoneNumber#phone_number_type
        module PhoneNumberType
          extend Telnyx::Internal::Type::Enum

          LANDLINE = :landline
          LOCAL = :local
          MOBILE = :mobile
          NATIONAL = :national
          SHARED_COST = :shared_cost
          TOLL_FREE = :toll_free

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Specifies whether Telnyx is able to confirm portability this number in the
        # United States & Canada. International phone numbers are provisional by default.
        #
        # @see Telnyx::Models::PortingOrder::PhoneNumber#portability_status
        module PortabilityStatus
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          CONFIRMED = :confirmed
          PROVISIONAL = :provisional

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current status of the porting order
        #
        # @see Telnyx::Models::PortingOrder::PhoneNumber#porting_order_status
        module PortingOrderStatus
          extend Telnyx::Internal::Type::Enum

          DRAFT = :draft
          IN_PROCESS = :"in-process"
          SUBMITTED = :submitted
          EXCEPTION = :exception
          FOC_DATE_CONFIRMED = :"foc-date-confirmed"
          CANCEL_PENDING = :"cancel-pending"
          PORTED = :ported
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The current status of the requirements in a INTL porting order
        #
        # @see Telnyx::Models::PortingOrder::PhoneNumber#requirements_status
        module RequirementsStatus
          extend Telnyx::Internal::Type::Enum

          REQUIREMENT_INFO_PENDING = :"requirement-info-pending"
          REQUIREMENT_INFO_UNDER_REVIEW = :"requirement-info-under-review"
          REQUIREMENT_INFO_EXCEPTION = :"requirement-info-exception"
          APPROVED = :approved

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
