# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CustomerServiceRecords#verify_phone_number_coverage
    class CustomerServiceRecordVerifyPhoneNumberCoverageResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data>, nil]
      optional :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data] }

      # @!method initialize(data: nil)
      #   @param data [Array<Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data>]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute additional_data_required
        #   Additional data required to perform CSR for the phone number. Only returned if
        #   `has_csr_coverage` is true.
        #
        #   @return [Array<Symbol, Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired>, nil]
        optional :additional_data_required,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired] }

        # @!attribute has_csr_coverage
        #   Indicates whether the phone number is covered or not.
        #
        #   @return [Boolean, nil]
        optional :has_csr_coverage, Telnyx::Internal::Type::Boolean

        # @!attribute phone_number
        #   The phone number that is being verified.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute reason
        #   The reason why the phone number is not covered. Only returned if
        #   `has_csr_coverage` is false.
        #
        #   @return [String, nil]
        optional :reason, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String

        # @!method initialize(additional_data_required: nil, has_csr_coverage: nil, phone_number: nil, reason: nil, record_type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data}
        #   for more details.
        #
        #   @param additional_data_required [Array<Symbol, Telnyx::Models::CustomerServiceRecordVerifyPhoneNumberCoverageResponse::Data::AdditionalDataRequired>] Additional data required to perform CSR for the phone number. Only returned if `
        #
        #   @param has_csr_coverage [Boolean] Indicates whether the phone number is covered or not.
        #
        #   @param phone_number [String] The phone number that is being verified.
        #
        #   @param reason [String] The reason why the phone number is not covered. Only returned if `has_csr_covera
        #
        #   @param record_type [String] Identifies the type of the resource.

        module AdditionalDataRequired
          extend Telnyx::Internal::Type::Enum

          NAME = :name
          AUTHORIZED_PERSON_NAME = :authorized_person_name
          ACCOUNT_NUMBER = :account_number
          CUSTOMER_CODE = :customer_code
          PIN = :pin
          ADDRESS_LINE_1 = :address_line_1
          CITY = :city
          STATE = :state
          ZIP_CODE = :zip_code
          BILLING_PHONE_NUMBER = :billing_phone_number

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
