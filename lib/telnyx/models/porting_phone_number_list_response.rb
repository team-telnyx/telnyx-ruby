# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingPhoneNumbers#list
    class PortingPhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::PortingPhoneNumberListResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingPhoneNumberListResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::PortingPhoneNumberListResponse::Data>]
      #   @param meta [Telnyx::Models::PaginationMeta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute activation_status
        #   Activation status
        #
        #   @return [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::ActivationStatus, nil]
        optional :activation_status,
                 enum: -> { Telnyx::Models::PortingPhoneNumberListResponse::Data::ActivationStatus }

        # @!attribute phone_number
        #   E164 formatted phone number
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute phone_number_type
        #   The type of the phone number
        #
        #   @return [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::PhoneNumberType, nil]
        optional :phone_number_type,
                 enum: -> { Telnyx::Models::PortingPhoneNumberListResponse::Data::PhoneNumberType }

        # @!attribute portability_status
        #   Specifies whether Telnyx is able to confirm portability this number in the
        #   United States & Canada. International phone numbers are provisional by default.
        #
        #   @return [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::PortabilityStatus, nil]
        optional :portability_status,
                 enum: -> { Telnyx::Models::PortingPhoneNumberListResponse::Data::PortabilityStatus }

        # @!attribute porting_order_id
        #   Identifies the associated port request
        #
        #   @return [String, nil]
        optional :porting_order_id, String

        # @!attribute porting_order_status
        #   The current status of the porting order
        #
        #   @return [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::PortingOrderStatus, nil]
        optional :porting_order_status,
                 enum: -> { Telnyx::Models::PortingPhoneNumberListResponse::Data::PortingOrderStatus }

        # @!attribute requirements_status
        #   The current status of the requirements in a INTL porting order
        #
        #   @return [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::RequirementsStatus, nil]
        optional :requirements_status,
                 enum: -> { Telnyx::Models::PortingPhoneNumberListResponse::Data::RequirementsStatus }

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
        #   {Telnyx::Models::PortingPhoneNumberListResponse::Data} for more details.
        #
        #   @param activation_status [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::ActivationStatus] Activation status
        #
        #   @param phone_number [String] E164 formatted phone number
        #
        #   @param phone_number_type [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::PhoneNumberType] The type of the phone number
        #
        #   @param portability_status [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::PortabilityStatus] Specifies whether Telnyx is able to confirm portability this number in the Unite
        #
        #   @param porting_order_id [String] Identifies the associated port request
        #
        #   @param porting_order_status [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::PortingOrderStatus] The current status of the porting order
        #
        #   @param record_type [String] Identifies the type of the resource.
        #
        #   @param requirements_status [Symbol, Telnyx::Models::PortingPhoneNumberListResponse::Data::RequirementsStatus] The current status of the requirements in a INTL porting order
        #
        #   @param support_key [String] A key to reference this porting order when contacting Telnyx customer support

        # Activation status
        #
        # @see Telnyx::Models::PortingPhoneNumberListResponse::Data#activation_status
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
        # @see Telnyx::Models::PortingPhoneNumberListResponse::Data#phone_number_type
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
        # @see Telnyx::Models::PortingPhoneNumberListResponse::Data#portability_status
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
        # @see Telnyx::Models::PortingPhoneNumberListResponse::Data#porting_order_status
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
        # @see Telnyx::Models::PortingPhoneNumberListResponse::Data#requirements_status
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
