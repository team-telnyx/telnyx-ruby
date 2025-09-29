# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        TestStatus = Tests::TestStatus

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

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::AI::Assistants::Tests::TestStatus)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol
              )
            STARTING =
              T.let(
                :starting,
                Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol
              )
            RUNNING =
              T.let(
                :running,
                Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol
              )
            PASSED =
              T.let(
                :passed,
                Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol
              )
            ERROR =
              T.let(
                :error,
                Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
