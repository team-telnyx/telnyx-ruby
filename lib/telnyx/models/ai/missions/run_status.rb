# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module RunStatus
          extend Telnyx::Internal::Type::Enum

          PENDING = :pending
          RUNNING = :running
          PAUSED = :paused
          SUCCEEDED = :succeeded
          FAILED = :failed
          CANCELLED = :cancelled

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
