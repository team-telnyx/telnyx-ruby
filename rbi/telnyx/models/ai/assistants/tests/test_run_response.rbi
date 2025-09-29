# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        TestRunResponse = Tests::TestRunResponse

        module Tests
          class TestRunResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::Tests::TestRunResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            # Timestamp when the test run was created and queued.
            sig { returns(Time) }
            attr_accessor :created_at

            # Unique identifier for this specific test run execution.
            sig { returns(String) }
            attr_accessor :run_id

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

            # Identifier of the assistant test that was executed.
            sig { returns(String) }
            attr_accessor :test_id

            # How this test run was initiated (manual, scheduled, or API).
            sig { returns(String) }
            attr_accessor :triggered_by

            # Timestamp when the test run finished execution.
            sig { returns(T.nilable(Time)) }
            attr_reader :completed_at

            sig { params(completed_at: Time).void }
            attr_writer :completed_at

            # Identifier of the conversation created during test execution.
            sig { returns(T.nilable(String)) }
            attr_reader :conversation_id

            sig { params(conversation_id: String).void }
            attr_writer :conversation_id

            # Identifier for conversation analysis and insights data.
            sig { returns(T.nilable(String)) }
            attr_reader :conversation_insights_id

            sig { params(conversation_insights_id: String).void }
            attr_writer :conversation_insights_id

            # Detailed evaluation results for each rubric criteria. Name is name of the
            # criteria from the rubric and status is the result of the evaluation. This list
            # will have a result for every criteria in the rubric section.
            sig do
              returns(
                T.nilable(
                  T::Array[
                    Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus
                  ]
                )
              )
            end
            attr_reader :detail_status

            sig do
              params(
                detail_status:
                  T::Array[
                    Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus::OrHash
                  ]
              ).void
            end
            attr_writer :detail_status

            # Detailed execution logs and debug information.
            sig { returns(T.nilable(String)) }
            attr_reader :logs

            sig { params(logs: String).void }
            attr_writer :logs

            # Identifier linking this run to a test suite execution batch.
            sig { returns(T.nilable(String)) }
            attr_reader :test_suite_run_id

            sig { params(test_suite_run_id: String).void }
            attr_writer :test_suite_run_id

            # Timestamp of the last update to this test run.
            sig { returns(T.nilable(Time)) }
            attr_reader :updated_at

            sig { params(updated_at: Time).void }
            attr_writer :updated_at

            # Response model containing test run execution details and results.
            #
            # Provides comprehensive information about a test execution including status,
            # timing, logs, and detailed evaluation results.
            sig do
              params(
                created_at: Time,
                run_id: String,
                status: Telnyx::AI::Assistants::Tests::TestStatus::OrSymbol,
                test_id: String,
                triggered_by: String,
                completed_at: Time,
                conversation_id: String,
                conversation_insights_id: String,
                detail_status:
                  T::Array[
                    Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus::OrHash
                  ],
                logs: String,
                test_suite_run_id: String,
                updated_at: Time
              ).returns(T.attached_class)
            end
            def self.new(
              # Timestamp when the test run was created and queued.
              created_at:,
              # Unique identifier for this specific test run execution.
              run_id:,
              # Represents the lifecycle of a test:
              #
              # - 'pending': Test is waiting to be executed.
              # - 'starting': Test execution is initializing.
              # - 'running': Test is currently executing.
              # - 'passed': Test completed successfully.
              # - 'failed': Test executed but did not pass.
              # - 'error': An error occurred during test execution.
              status:,
              # Identifier of the assistant test that was executed.
              test_id:,
              # How this test run was initiated (manual, scheduled, or API).
              triggered_by:,
              # Timestamp when the test run finished execution.
              completed_at: nil,
              # Identifier of the conversation created during test execution.
              conversation_id: nil,
              # Identifier for conversation analysis and insights data.
              conversation_insights_id: nil,
              # Detailed evaluation results for each rubric criteria. Name is name of the
              # criteria from the rubric and status is the result of the evaluation. This list
              # will have a result for every criteria in the rubric section.
              detail_status: nil,
              # Detailed execution logs and debug information.
              logs: nil,
              # Identifier linking this run to a test suite execution batch.
              test_suite_run_id: nil,
              # Timestamp of the last update to this test run.
              updated_at: nil
            )
            end

            sig do
              override.returns(
                {
                  created_at: Time,
                  run_id: String,
                  status:
                    Telnyx::AI::Assistants::Tests::TestStatus::TaggedSymbol,
                  test_id: String,
                  triggered_by: String,
                  completed_at: Time,
                  conversation_id: String,
                  conversation_insights_id: String,
                  detail_status:
                    T::Array[
                      Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus
                    ],
                  logs: String,
                  test_suite_run_id: String,
                  updated_at: Time
                }
              )
            end
            def to_hash
            end

            class DetailStatus < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus,
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
end
