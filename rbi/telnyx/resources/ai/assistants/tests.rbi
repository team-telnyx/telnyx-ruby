# typed: strong

module Telnyx
  module Resources
    class AI
      class Assistants
        class Tests
          sig { returns(Telnyx::Resources::AI::Assistants::Tests::TestSuites) }
          attr_reader :test_suites

          sig { returns(Telnyx::Resources::AI::Assistants::Tests::Runs) }
          attr_reader :runs

          # Creates a comprehensive test configuration for evaluating AI assistant
          # performance
          sig do
            params(
              destination: String,
              instructions: String,
              name: String,
              rubric:
                T::Array[
                  Telnyx::AI::Assistants::TestCreateParams::Rubric::OrHash
                ],
              description: String,
              max_duration_seconds: Integer,
              telnyx_conversation_channel:
                Telnyx::AI::Assistants::TelnyxConversationChannel::OrSymbol,
              test_suite: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::AssistantTest)
          end
          def create(
            # The target destination for the test conversation. Format depends on the channel:
            # phone number for SMS/voice, webhook URL for web chat, etc.
            destination:,
            # Detailed instructions that define the test scenario and what the assistant
            # should accomplish. This guides the test execution and evaluation.
            instructions:,
            # A descriptive name for the assistant test. This will be used to identify the
            # test in the UI and reports.
            name:,
            # Evaluation criteria used to assess the assistant's performance. Each rubric item
            # contains a name and specific criteria for evaluation.
            rubric:,
            # Optional detailed description of what this test evaluates and its purpose. Helps
            # team members understand the test's objectives.
            description: nil,
            # Maximum duration in seconds that the test conversation should run before timing
            # out. If not specified, uses system default timeout.
            max_duration_seconds: nil,
            # The communication channel through which the test will be conducted. Determines
            # how the assistant will receive and respond to test messages.
            telnyx_conversation_channel: nil,
            # Optional test suite name to group related tests together. Useful for organizing
            # tests by feature, team, or release cycle.
            test_suite: nil,
            request_options: {}
          )
          end

          # Retrieves detailed information about a specific assistant test
          sig do
            params(
              test_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::AssistantTest)
          end
          def retrieve(test_id, request_options: {})
          end

          # Updates an existing assistant test configuration with new settings
          sig do
            params(
              test_id: String,
              description: String,
              destination: String,
              instructions: String,
              max_duration_seconds: Integer,
              name: String,
              rubric:
                T::Array[
                  Telnyx::AI::Assistants::TestUpdateParams::Rubric::OrHash
                ],
              telnyx_conversation_channel:
                Telnyx::AI::Assistants::TelnyxConversationChannel::OrSymbol,
              test_suite: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::AI::Assistants::AssistantTest)
          end
          def update(
            test_id,
            # Updated description of the test's purpose and evaluation criteria.
            description: nil,
            # Updated target destination for test conversations.
            destination: nil,
            # Updated test scenario instructions and objectives.
            instructions: nil,
            # Updated maximum test duration in seconds.
            max_duration_seconds: nil,
            # Updated name for the assistant test. Must be unique and descriptive.
            name: nil,
            # Updated evaluation criteria for assessing assistant performance.
            rubric: nil,
            # Updated communication channel for the test execution.
            telnyx_conversation_channel: nil,
            # Updated test suite assignment for better organization.
            test_suite: nil,
            request_options: {}
          )
          end

          # Retrieves a paginated list of assistant tests with optional filtering
          # capabilities
          sig do
            params(
              destination: String,
              page: Telnyx::AI::Assistants::TestListParams::Page::OrHash,
              telnyx_conversation_channel: String,
              test_suite: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::Assistants::TestListResponse)
          end
          def list(
            # Filter tests by destination (phone number, webhook URL, etc.)
            destination: nil,
            # Consolidated page parameter (deepObject style). Originally: page[size],
            # page[number]
            page: nil,
            # Filter tests by communication channel (e.g., 'web_chat', 'sms')
            telnyx_conversation_channel: nil,
            # Filter tests by test suite name
            test_suite: nil,
            request_options: {}
          )
          end

          # Permanently removes an assistant test and all associated data
          sig do
            params(
              test_id: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).void
          end
          def delete(test_id, request_options: {})
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
