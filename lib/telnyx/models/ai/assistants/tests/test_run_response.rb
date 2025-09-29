# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        module Tests
          # @see Telnyx::Resources::AI::Assistants::Tests::Runs#retrieve
          class TestRunResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute created_at
            #   Timestamp when the test run was created and queued.
            #
            #   @return [Time]
            required :created_at, Time

            # @!attribute run_id
            #   Unique identifier for this specific test run execution.
            #
            #   @return [String]
            required :run_id, String

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

            # @!attribute test_id
            #   Identifier of the assistant test that was executed.
            #
            #   @return [String]
            required :test_id, String

            # @!attribute triggered_by
            #   How this test run was initiated (manual, scheduled, or API).
            #
            #   @return [String]
            required :triggered_by, String

            # @!attribute completed_at
            #   Timestamp when the test run finished execution.
            #
            #   @return [Time, nil]
            optional :completed_at, Time

            # @!attribute conversation_id
            #   Identifier of the conversation created during test execution.
            #
            #   @return [String, nil]
            optional :conversation_id, String

            # @!attribute conversation_insights_id
            #   Identifier for conversation analysis and insights data.
            #
            #   @return [String, nil]
            optional :conversation_insights_id, String

            # @!attribute detail_status
            #   Detailed evaluation results for each rubric criteria. Name is name of the
            #   criteria from the rubric and status is the result of the evaluation. This list
            #   will have a result for every criteria in the rubric section.
            #
            #   @return [Array<Telnyx::Models::AI::Assistants::Tests::TestRunResponse::DetailStatus>, nil]
            optional :detail_status,
                     -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::Tests::TestRunResponse::DetailStatus] }

            # @!attribute logs
            #   Detailed execution logs and debug information.
            #
            #   @return [String, nil]
            optional :logs, String

            # @!attribute test_suite_run_id
            #   Identifier linking this run to a test suite execution batch.
            #
            #   @return [String, nil]
            optional :test_suite_run_id, String

            # @!attribute updated_at
            #   Timestamp of the last update to this test run.
            #
            #   @return [Time, nil]
            optional :updated_at, Time

            # @!method initialize(created_at:, run_id:, status:, test_id:, triggered_by:, completed_at: nil, conversation_id: nil, conversation_insights_id: nil, detail_status: nil, logs: nil, test_suite_run_id: nil, updated_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Assistants::Tests::TestRunResponse} for more details.
            #
            #   Response model containing test run execution details and results.
            #
            #   Provides comprehensive information about a test execution including status,
            #   timing, logs, and detailed evaluation results.
            #
            #   @param created_at [Time] Timestamp when the test run was created and queued.
            #
            #   @param run_id [String] Unique identifier for this specific test run execution.
            #
            #   @param status [Symbol, Telnyx::Models::AI::Assistants::Tests::TestStatus] Represents the lifecycle of a test:
            #
            #   @param test_id [String] Identifier of the assistant test that was executed.
            #
            #   @param triggered_by [String] How this test run was initiated (manual, scheduled, or API).
            #
            #   @param completed_at [Time] Timestamp when the test run finished execution.
            #
            #   @param conversation_id [String] Identifier of the conversation created during test execution.
            #
            #   @param conversation_insights_id [String] Identifier for conversation analysis and insights data.
            #
            #   @param detail_status [Array<Telnyx::Models::AI::Assistants::Tests::TestRunResponse::DetailStatus>] Detailed evaluation results for each rubric criteria. Name is name of the criter
            #
            #   @param logs [String] Detailed execution logs and debug information.
            #
            #   @param test_suite_run_id [String] Identifier linking this run to a test suite execution batch.
            #
            #   @param updated_at [Time] Timestamp of the last update to this test run.

            class DetailStatus < Telnyx::Internal::Type::BaseModel
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
              #   {Telnyx::Models::AI::Assistants::Tests::TestRunResponse::DetailStatus} for more
              #   details.
              #
              #   @param name [String]
              #
              #   @param status [Symbol, Telnyx::Models::AI::Assistants::Tests::TestStatus] Represents the lifecycle of a test:
            end
          end
        end

        TestRunResponse = Tests::TestRunResponse
      end
    end
  end
end
