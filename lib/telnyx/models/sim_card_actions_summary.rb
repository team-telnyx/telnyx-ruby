# frozen_string_literal: true

module Telnyx
  module Models
    class SimCardActionsSummary < Telnyx::Internal::Type::BaseModel
      # @!attribute count
      #
      #   @return [Integer, nil]
      optional :count, Integer

      # @!attribute status
      #
      #   @return [Symbol, Telnyx::Models::SimCardActionsSummary::Status, nil]
      optional :status, enum: -> { Telnyx::SimCardActionsSummary::Status }

      # @!method initialize(count: nil, status: nil)
      #   @param count [Integer]
      #   @param status [Symbol, Telnyx::Models::SimCardActionsSummary::Status]

      # @see Telnyx::Models::SimCardActionsSummary#status
      module Status
        extend Telnyx::Internal::Type::Enum

        IN_PROGRESS = :"in-progress"
        COMPLETED = :completed
        FAILED = :failed
        INTERRUPTED = :interrupted

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
