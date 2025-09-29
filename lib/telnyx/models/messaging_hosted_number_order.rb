# frozen_string_literal: true

module Telnyx
  module Models
    class MessagingHostedNumberOrder < Telnyx::Internal::Type::BaseModel
      # @!attribute messaging_profile_id
      #   Automatically associate the number with this messaging profile ID when the order
      #   is complete.
      #
      #   @return [String, nil]
      optional :messaging_profile_id, String, nil?: true

      # @!attribute phone_numbers
      #
      #   @return [Array<Telnyx::Models::HostedNumber>, nil]
      optional :phone_numbers, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::HostedNumber] }

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::MessagingHostedNumberOrder::Status, nil]
      optional :status, enum: -> { Telnyx::MessagingHostedNumberOrder::Status }

      response_only do
        # @!attribute id
        #   Resource unique identifier.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute record_type
        #   Identifies the type of the resource.
        #
        #   @return [String, nil]
        optional :record_type, String
      end

      # @!method initialize(id: nil, messaging_profile_id: nil, phone_numbers: nil, record_type: nil, status: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::MessagingHostedNumberOrder} for more details.
      #
      #   @param id [String] Resource unique identifier.
      #
      #   @param messaging_profile_id [String, nil] Automatically associate the number with this messaging profile ID when the order
      #
      #   @param phone_numbers [Array<Telnyx::Models::HostedNumber>]
      #
      #   @param record_type [String] Identifies the type of the resource.
      #
      #   @param status [Symbol, Telnyx::Models::MessagingHostedNumberOrder::Status]

      # @see Telnyx::Models::MessagingHostedNumberOrder#status
      module Status
        extend Telnyx::Internal::Type::Enum

        CARRIER_REJECTED = :carrier_rejected
        COMPLIANCE_REVIEW_FAILED = :compliance_review_failed
        DELETED = :deleted
        FAILED = :failed
        INCOMPLETE_DOCUMENTATION = :incomplete_documentation
        INCORRECT_BILLING_INFORMATION = :incorrect_billing_information
        INELIGIBLE_CARRIER = :ineligible_carrier
        LOA_FILE_INVALID = :loa_file_invalid
        LOA_FILE_SUCCESSFUL = :loa_file_successful
        PENDING = :pending
        PROVISIONING = :provisioning
        SUCCESSFUL = :successful

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
