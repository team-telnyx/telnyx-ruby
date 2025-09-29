# typed: strong

module Telnyx
  module Models
    module AI
      AssistantTest = Assistants::AssistantTest

      module Assistants
        class AssistantTest < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::AssistantTest,
                Telnyx::Internal::AnyHash
              )
            end

          # Timestamp when the test was created.
          sig { returns(Time) }
          attr_accessor :created_at

          # Human-readable name of the test.
          sig { returns(String) }
          attr_accessor :name

          # Evaluation criteria used to assess test performance.
          sig do
            returns(T::Array[Telnyx::AI::Assistants::AssistantTest::Rubric])
          end
          attr_accessor :rubric

          # Communication channel used for test execution.
          sig do
            returns(
              Telnyx::AI::Assistants::TelnyxConversationChannel::TaggedSymbol
            )
          end
          attr_accessor :telnyx_conversation_channel

          # Unique identifier for the assistant test.
          sig { returns(String) }
          attr_accessor :test_id

          # Detailed description of the test's purpose and scope.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Target destination for test conversations.
          sig { returns(T.nilable(String)) }
          attr_reader :destination

          sig { params(destination: String).void }
          attr_writer :destination

          # Detailed test scenario instructions and objectives.
          sig { returns(T.nilable(String)) }
          attr_reader :instructions

          sig { params(instructions: String).void }
          attr_writer :instructions

          # Maximum allowed duration for test execution in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_duration_seconds

          sig { params(max_duration_seconds: Integer).void }
          attr_writer :max_duration_seconds

          # Test suite grouping for organizational purposes.
          sig { returns(T.nilable(String)) }
          attr_reader :test_suite

          sig { params(test_suite: String).void }
          attr_writer :test_suite

          # Response model containing complete assistant test information.
          #
          # Returns all test configuration details including evaluation criteria,
          # scheduling, and metadata. Used when retrieving individual tests or after
          # creating/updating tests.
          sig do
            params(
              created_at: Time,
              name: String,
              rubric:
                T::Array[Telnyx::AI::Assistants::AssistantTest::Rubric::OrHash],
              telnyx_conversation_channel:
                Telnyx::AI::Assistants::TelnyxConversationChannel::OrSymbol,
              test_id: String,
              description: String,
              destination: String,
              instructions: String,
              max_duration_seconds: Integer,
              test_suite: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Timestamp when the test was created.
            created_at:,
            # Human-readable name of the test.
            name:,
            # Evaluation criteria used to assess test performance.
            rubric:,
            # Communication channel used for test execution.
            telnyx_conversation_channel:,
            # Unique identifier for the assistant test.
            test_id:,
            # Detailed description of the test's purpose and scope.
            description: nil,
            # Target destination for test conversations.
            destination: nil,
            # Detailed test scenario instructions and objectives.
            instructions: nil,
            # Maximum allowed duration for test execution in seconds.
            max_duration_seconds: nil,
            # Test suite grouping for organizational purposes.
            test_suite: nil
          )
          end

          sig do
            override.returns(
              {
                created_at: Time,
                name: String,
                rubric: T::Array[Telnyx::AI::Assistants::AssistantTest::Rubric],
                telnyx_conversation_channel:
                  Telnyx::AI::Assistants::TelnyxConversationChannel::TaggedSymbol,
                test_id: String,
                description: String,
                destination: String,
                instructions: String,
                max_duration_seconds: Integer,
                test_suite: String
              }
            )
          end
          def to_hash
          end

          class Rubric < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::AssistantTest::Rubric,
                  Telnyx::Internal::AnyHash
                )
              end

            # Specific guidance on how to assess the assistant’s performance for this rubric
            # item.
            sig { returns(String) }
            attr_accessor :criteria

            # Label for the evaluation criterion, e.g., Empathy, Accuracy, Clarity.
            sig { returns(String) }
            attr_accessor :name

            sig do
              params(criteria: String, name: String).returns(T.attached_class)
            end
            def self.new(
              # Specific guidance on how to assess the assistant’s performance for this rubric
              # item.
              criteria:,
              # Label for the evaluation criterion, e.g., Empathy, Accuracy, Clarity.
              name:
            )
            end

            sig { override.returns({ criteria: String, name: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
