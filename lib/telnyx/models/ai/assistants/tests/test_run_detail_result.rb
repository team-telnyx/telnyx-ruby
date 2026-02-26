# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          class TestRunDetailResult < Telnyx::Internal::Type::BaseModel
            # @!attribute name
            #
            #   @return [String]
            required :name, String

            # @!attribute status
            #   Represents the lifecycle of a test:
            #
            #   - 'pending': Test is waiting to be executed.
            #   - 'starting': Test execution is initializing.
            #   - 'running': Test is currently executing.
            #   - 'passed': Test completed successfully.
            #   - 'failed': Test executed but did not pass.
            #   - 'error': An error occurred during test execution.
            #
            #   @return [Symbol, Telnyx::Models::AI::Assistants::Tests::TestStatus]
            required :status, enum: -> { Telnyx::AI::Assistants::Tests::TestStatus }

            # @!method initialize(name:, status:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Assistants::Tests::TestRunDetailResult} for more details.
            #
            #   @param name [String]
            #
            #   @param status [Symbol, Telnyx::Models::AI::Assistants::Tests::TestStatus] Represents the lifecycle of a test:
          end
        end

        TestRunDetailResult = Tests::TestRunDetailResult
      end
    end
  end
end
