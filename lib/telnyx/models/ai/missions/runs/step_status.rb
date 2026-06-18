# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          module StepStatus
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            IN_PROGRESS = :in_progress
            COMPLETED = :completed
            SKIPPED = :skipped
            FAILED = :failed

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
