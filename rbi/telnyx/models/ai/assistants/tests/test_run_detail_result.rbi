# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        TestRunDetailResult = Tests::TestRunDetailResult

        module Tests
          class TestRunDetailResult < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::Tests::TestRunDetailResult,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :name

            # Represents the lifecycle of a test:
            #
            # - 'pending': Test is waiting to be executed.
            # - 'starting': Test execution is initializing.
            # - 'running': Test is currently executing.
            # - 'passed': Test completed successfully.
            # - 'failed': Test executed but did not pass.
            # - 'error': An error occurred during test execution.
            sig do
              returns(Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol)
            end
            attr_accessor :status

            sig do
              params(
                name: String,
                status: Telnyx::AI::Assistants::Tests::TestStatus::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(
              name:,
              # Represents the lifecycle of a test:
              #
              # - 'pending': Test is waiting to be executed.
              # - 'starting': Test execution is initializing.
              # - 'running': Test is currently executing.
              # - 'passed': Test completed successfully.
              # - 'failed': Test executed but did not pass.
              # - 'error': An error occurred during test execution.
              status:
            )
            end

            sig do
              override.returns(
                {
                  name: String,
                  status:
                    Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
