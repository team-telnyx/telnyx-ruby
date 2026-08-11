# frozen_string_literal: true

module Telnyx
  module Models
    module Rcs
      class CarrierApprovalResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute approval_id
        #
        #   @return [String]
        required :approval_id, String

        # @!attribute approved_at
        #
        #   @return [Time, nil]
        required :approved_at, Time, nil?: true

        # @!attribute carrier
        #
        #   @return [String, nil]
        required :carrier, String, nil?: true

        # @!attribute rejected_reason
        #
        #   @return [String, nil]
        required :rejected_reason, String, nil?: true

        # @!attribute scope_type
        #
        #   @return [Symbol, Telnyx::Models::Rcs::CarrierApprovalResponse::ScopeType]
        required :scope_type, enum: -> { Telnyx::Rcs::CarrierApprovalResponse::ScopeType }

        # @!attribute status
        #
        #   @return [Symbol, Telnyx::Models::Rcs::CarrierApprovalResponse::Status]
        required :status, enum: -> { Telnyx::Rcs::CarrierApprovalResponse::Status }

        # @!attribute submitted_at
        #
        #   @return [Time, nil]
        required :submitted_at, Time, nil?: true

        # @!method initialize(approval_id:, approved_at:, carrier:, rejected_reason:, scope_type:, status:, submitted_at:)
        #   @param approval_id [String]
        #   @param approved_at [Time, nil]
        #   @param carrier [String, nil]
        #   @param rejected_reason [String, nil]
        #   @param scope_type [Symbol, Telnyx::Models::Rcs::CarrierApprovalResponse::ScopeType]
        #   @param status [Symbol, Telnyx::Models::Rcs::CarrierApprovalResponse::Status]
        #   @param submitted_at [Time, nil]

        # @see Telnyx::Models::Rcs::CarrierApprovalResponse#scope_type
        module ScopeType
          extend Telnyx::Internal::Type::Enum

          CARRIER = :carrier
          HUB = :hub
          BOT = :bot

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Rcs::CarrierApprovalResponse#status
        module Status
          extend Telnyx::Internal::Type::Enum

          PENDING = :PENDING
          SUBMITTED = :SUBMITTED
          APPROVED = :APPROVED
          REJECTED = :REJECTED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
