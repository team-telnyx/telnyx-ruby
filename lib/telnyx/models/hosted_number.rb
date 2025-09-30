# frozen_string_literal: true

module Telnyx
  module Models
    class HostedNumber < Telnyx::Internal::Type::BaseModel
      # @!attribute phone_number
      #   The messaging hosted phone number (+E.164 format)
      #
      #   @return [String, nil]
      optional :phone_number, String

      # @!attribute record_type
      #
      #   @return [String, nil]
      optional :record_type, String

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::HostedNumber::Status, nil]
      optional :status, enum: -> { Telnyx::HostedNumber::Status }

      response_only do
        # @!attribute id
        #   Identifies the type of resource.
        #
        #   @return [String, nil]
        optional :id, String
      end

      # @!method initialize(id: nil, phone_number: nil, record_type: nil, status: nil)
      #   @param id [String] Identifies the type of resource.
      #
      #   @param phone_number [String] The messaging hosted phone number (+E.164 format)
      #
      #   @param record_type [String]
      #
      #   @param status [Symbol, Telnyx::Models::HostedNumber::Status]

      # @see Telnyx::Models::HostedNumber#status
      module Status
        extend Telnyx::Internal::Type::Enum

        DELETED = :deleted
        FAILED = :failed
        FAILED_ACTIVATION = :failed_activation
        FAILED_CARRIER_REJECTED = :failed_carrier_rejected
        FAILED_INELIGIBLE_CARRIER = :failed_ineligible_carrier
        FAILED_NUMBER_ALREADY_HOSTED = :failed_number_already_hosted
        FAILED_NUMBER_NOT_FOUND = :failed_number_not_found
        FAILED_OWNERSHIP_VERIFICATION = :failed_ownership_verification
        FAILED_TIMEOUT = :failed_timeout
        PENDING = :pending
        PROVISIONING = :provisioning
        SUCCESSFUL = :successful

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
