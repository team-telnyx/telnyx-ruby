# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      class EnterpriseReputationPublic < Telnyx::Internal::Type::BaseModel
        # @!attribute check_frequency
        #   How often Telnyx refreshes the stored reputation data for this enterprise's
        #   registered numbers.
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::ReputationCheckFrequency, nil]
        optional :check_frequency, enum: -> { Telnyx::Enterprises::ReputationCheckFrequency }

        # @!attribute enterprise_id
        #
        #   @return [String, nil]
        optional :enterprise_id, String

        # @!attribute loa_document_id
        #   Id of the signed LOA document.
        #
        #   @return [String, nil]
        optional :loa_document_id, String, nil?: true

        # @!attribute loa_status
        #   Customer-facing Letter-of-Authorization verification state. `approved` is
        #   required (alongside reputation status) before phone numbers can be added.
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::EnterpriseReputationPublic::LoaStatus, nil]
        optional :loa_status, enum: -> { Telnyx::Enterprises::EnterpriseReputationPublic::LoaStatus }

        # @!attribute rejection_reasons
        #   Populated when `status` is `rejected`.
        #
        #   @return [Array<String>, nil]
        optional :rejection_reasons, Telnyx::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute status
        #   Lifecycle status of the enterprise's Phone Number Reputation activation.
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::EnterpriseReputationPublic::Status, nil]
        optional :status, enum: -> { Telnyx::Enterprises::EnterpriseReputationPublic::Status }

        response_only do
          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time
        end

        # @!method initialize(check_frequency: nil, created_at: nil, enterprise_id: nil, loa_document_id: nil, loa_status: nil, rejection_reasons: nil, status: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Enterprises::EnterpriseReputationPublic} for more details.
        #
        #   @param check_frequency [Symbol, Telnyx::Models::Enterprises::ReputationCheckFrequency] How often Telnyx refreshes the stored reputation data for this enterprise's regi
        #
        #   @param created_at [Time]
        #
        #   @param enterprise_id [String]
        #
        #   @param loa_document_id [String, nil] Id of the signed LOA document.
        #
        #   @param loa_status [Symbol, Telnyx::Models::Enterprises::EnterpriseReputationPublic::LoaStatus] Customer-facing Letter-of-Authorization verification state. `approved` is requir
        #
        #   @param rejection_reasons [Array<String>, nil] Populated when `status` is `rejected`.
        #
        #   @param status [Symbol, Telnyx::Models::Enterprises::EnterpriseReputationPublic::Status] Lifecycle status of the enterprise's Phone Number Reputation activation.
        #
        #   @param updated_at [Time]

        # Customer-facing Letter-of-Authorization verification state. `approved` is
        # required (alongside reputation status) before phone numbers can be added.
        #
        # @see Telnyx::Models::Enterprises::EnterpriseReputationPublic#loa_status
        module LoaStatus
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          APPROVED = :approved
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Lifecycle status of the enterprise's Phone Number Reputation activation.
        #
        # @see Telnyx::Models::Enterprises::EnterpriseReputationPublic#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          APPROVED = :approved
          DELETED = :deleted
          REJECTED = :rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    EnterpriseReputationPublic = Enterprises::EnterpriseReputationPublic
  end
end
