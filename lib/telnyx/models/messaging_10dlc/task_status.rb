# frozen_string_literal: true

module Telnyx
  module Models
    module Messaging10dlc
      module TaskStatus
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        STARTING = :starting
        RUNNING = :running
        COMPLETED = :completed
        FAILED = :failed

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
