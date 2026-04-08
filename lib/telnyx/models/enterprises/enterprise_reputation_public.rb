# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      class EnterpriseReputationPublic < Telnyx::Internal::Type::BaseModel
        # @!attribute check_frequency
        #   Frequency for refreshing reputation data
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::EnterpriseReputationPublic::CheckFrequency, nil]
        optional :check_frequency, enum: -> { Telnyx::Enterprises::EnterpriseReputationPublic::CheckFrequency }

        # @!attribute created_at
        #   When the reputation settings were created
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute enterprise_id
        #   ID of the associated enterprise
        #
        #   @return [String, nil]
        optional :enterprise_id, String

        # @!attribute loa_document_id
        #   ID of the signed LOA document
        #
        #   @return [String, nil]
        optional :loa_document_id, String, nil?: true

        # @!attribute rejection_reasons
        #   Reasons for rejection (present when status is rejected)
        #
        #   @return [Array<String>, nil]
        optional :rejection_reasons, Telnyx::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute status
        #   Current enrollment status
        #
        #   @return [Symbol, Telnyx::Models::Enterprises::EnterpriseReputationPublic::Status, nil]
        optional :status, enum: -> { Telnyx::Enterprises::EnterpriseReputationPublic::Status }

        # @!attribute updated_at
        #   When the reputation settings were last updated
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!method initialize(check_frequency: nil, created_at: nil, enterprise_id: nil, loa_document_id: nil, rejection_reasons: nil, status: nil, updated_at: nil)
        #   @param check_frequency [Symbol, Telnyx::Models::Enterprises::EnterpriseReputationPublic::CheckFrequency] Frequency for refreshing reputation data
        #
        #   @param created_at [Time] When the reputation settings were created
        #
        #   @param enterprise_id [String] ID of the associated enterprise
        #
        #   @param loa_document_id [String, nil] ID of the signed LOA document
        #
        #   @param rejection_reasons [Array<String>, nil] Reasons for rejection (present when status is rejected)
        #
        #   @param status [Symbol, Telnyx::Models::Enterprises::EnterpriseReputationPublic::Status] Current enrollment status
        #
        #   @param updated_at [Time] When the reputation settings were last updated

        # Frequency for refreshing reputation data
        #
        # @see Telnyx::Models::Enterprises::EnterpriseReputationPublic#check_frequency
        module CheckFrequency
          extend Telnyx::Internal::Type::Enum

          BUSINESS_DAILY = :business_daily
          DAILY = :daily
          WEEKLY = :weekly
          BIWEEKLY = :biweekly
          MONTHLY = :monthly
          NEVER = :never

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Current enrollment status
        #
        # @see Telnyx::Models::Enterprises::EnterpriseReputationPublic#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          APPROVED = :approved
          REJECTED = :rejected
          DELETED = :deleted

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end

    EnterpriseReputationPublic = Enterprises::EnterpriseReputationPublic
  end
end
