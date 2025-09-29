# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingHostedNumberOrders#check_eligibility
    class MessagingHostedNumberOrderCheckEligibilityResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute phone_numbers
      #   List of phone numbers with their eligibility status.
      #
      #   @return [Array<Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber>, nil]
      optional :phone_numbers,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber] }

      # @!method initialize(phone_numbers: nil)
      #   @param phone_numbers [Array<Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber>] List of phone numbers with their eligibility status.

      class PhoneNumber < Telnyx::Internal::Type::BaseModel
        # @!attribute detail
        #   Detailed information about the eligibility status.
        #
        #   @return [String, nil]
        optional :detail, String

        # @!attribute eligible
        #   Whether the phone number is eligible for hosted messaging.
        #
        #   @return [Boolean, nil]
        optional :eligible, Telnyx::Internal::Type::Boolean

        # @!attribute eligible_status
        #   The eligibility status of the phone number.
        #
        #   @return [Symbol, Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus, nil]
        optional :eligible_status,
                 enum: -> { Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus }

        # @!attribute phone_number
        #   The phone number in e164 format.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(detail: nil, eligible: nil, eligible_status: nil, phone_number: nil)
        #   @param detail [String] Detailed information about the eligibility status.
        #
        #   @param eligible [Boolean] Whether the phone number is eligible for hosted messaging.
        #
        #   @param eligible_status [Symbol, Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber::EligibleStatus] The eligibility status of the phone number.
        #
        #   @param phone_number [String] The phone number in e164 format.

        # The eligibility status of the phone number.
        #
        # @see Telnyx::Models::MessagingHostedNumberOrderCheckEligibilityResponse::PhoneNumber#eligible_status
        module EligibleStatus
          extend Telnyx::Internal::Type::Enum

          NUMBER_CAN_NOT_BE_REPEATED = :NUMBER_CAN_NOT_BE_REPEATED
          NUMBER_CAN_NOT_BE_VALIDATED = :NUMBER_CAN_NOT_BE_VALIDATED
          NUMBER_CAN_NOT_BE_WIRELESS = :NUMBER_CAN_NOT_BE_WIRELESS
          NUMBER_CAN_NOT_BE_ACTIVE_IN_YOUR_ACCOUNT = :NUMBER_CAN_NOT_BE_ACTIVE_IN_YOUR_ACCOUNT
          NUMBER_CAN_NOT_HOSTED_WITH_A_TELNYX_SUBSCRIBER = :NUMBER_CAN_NOT_HOSTED_WITH_A_TELNYX_SUBSCRIBER
          NUMBER_CAN_NOT_BE_IN_TELNYX = :NUMBER_CAN_NOT_BE_IN_TELNYX
          NUMBER_IS_NOT_A_US_NUMBER = :NUMBER_IS_NOT_A_US_NUMBER
          NUMBER_IS_NOT_A_VALID_ROUTING_NUMBER = :NUMBER_IS_NOT_A_VALID_ROUTING_NUMBER
          NUMBER_IS_NOT_IN_E164_FORMAT = :NUMBER_IS_NOT_IN_E164_FORMAT
          BILLING_ACCOUNT_CHECK_FAILED = :BILLING_ACCOUNT_CHECK_FAILED
          BILLING_ACCOUNT_IS_ABOLISHED = :BILLING_ACCOUNT_IS_ABOLISHED
          ELIGIBLE = :ELIGIBLE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
