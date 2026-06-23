# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Remediation#list
        class RemediationListResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute call_purpose
          #
          #   @return [String]
          required :call_purpose, String

          # @!attribute created_at
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute phone_numbers_count
          #
          #   @return [Integer]
          required :phone_numbers_count, Integer

          # @!attribute status
          #   Customer-facing status of a remediation request.
          #
          #   @return [Symbol, Telnyx::Models::Enterprises::Reputation::RemediationStatus]
          required :status, enum: -> { Telnyx::Enterprises::Reputation::RemediationStatus }

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time

          # @!attribute tier1_completed_at
          #
          #   @return [Time, nil]
          optional :tier1_completed_at, Time, nil?: true

          # @!attribute tier2_completed_at
          #
          #   @return [Time, nil]
          optional :tier2_completed_at, Time, nil?: true

          # @!method initialize(id:, call_purpose:, created_at:, phone_numbers_count:, status:, updated_at:, tier1_completed_at: nil, tier2_completed_at: nil)
          #   Slim list-endpoint shape. Omits per-number results and webhook URLs to keep
          #   responses small.
          #
          #   @param id [String]
          #
          #   @param call_purpose [String]
          #
          #   @param created_at [Time]
          #
          #   @param phone_numbers_count [Integer]
          #
          #   @param status [Symbol, Telnyx::Models::Enterprises::Reputation::RemediationStatus] Customer-facing status of a remediation request.
          #
          #   @param updated_at [Time]
          #
          #   @param tier1_completed_at [Time, nil]
          #
          #   @param tier2_completed_at [Time, nil]
        end
      end
    end
  end
end
