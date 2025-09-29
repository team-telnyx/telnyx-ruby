# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          # Represents the lifecycle of a test:
          #
          # - 'pending': Test is waiting to be executed.
          # - 'starting': Test execution is initializing.
          # - 'running': Test is currently executing.
          # - 'passed': Test completed successfully.
          # - 'failed': Test executed but did not pass.
          # - 'error': An error occurred during test execution.
          module TestStatus
            extend Telnyx::Internal::Type::Enum

            PENDING = :pending
            STARTING = :starting
            RUNNING = :running
            PASSED = :passed
            FAILED = :failed
            ERROR = :error

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        TestStatus = Tests::TestStatus
      end
    end
  end
end
