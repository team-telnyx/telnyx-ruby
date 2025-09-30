# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class TestCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::TestCreateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # The target destination for the test conversation. Format depends on the channel:
          # phone number for SMS/voice, webhook URL for web chat, etc.
          sig { returns(String) }
          attr_accessor :destination

          # Detailed instructions that define the test scenario and what the assistant
          # should accomplish. This guides the test execution and evaluation.
          sig { returns(String) }
          attr_accessor :instructions

          # A descriptive name for the assistant test. This will be used to identify the
          # test in the UI and reports.
          sig { returns(String) }
          attr_accessor :name

          # Evaluation criteria used to assess the assistant's performance. Each rubric item
          # contains a name and specific criteria for evaluation.
          sig do
            returns(T::Array[Telnyx::AI::Assistants::TestCreateParams::Rubric])
          end
          attr_accessor :rubric

          # Optional detailed description of what this test evaluates and its purpose. Helps
          # team members understand the test's objectives.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Maximum duration in seconds that the test conversation should run before timing
          # out. If not specified, uses system default timeout.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_duration_seconds

          sig { params(max_duration_seconds: Integer).void }
          attr_writer :max_duration_seconds

          # The communication channel through which the test will be conducted. Determines
          # how the assistant will receive and respond to test messages.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Assistants::TelnyxConversationChannel::OrSymbol
              )
            )
          end
          attr_reader :telnyx_conversation_channel

          sig do
            params(
              telnyx_conversation_channel:
                Telnyx::AI::Assistants::TelnyxConversationChannel::OrSymbol
            ).void
          end
          attr_writer :telnyx_conversation_channel

          # Optional test suite name to group related tests together. Useful for organizing
          # tests by feature, team, or release cycle.
          sig { returns(T.nilable(String)) }
          attr_reader :test_suite

          sig { params(test_suite: String).void }
          attr_writer :test_suite

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
            ).returns(T.attached_class)
          end
          def self.new(
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

          sig do
            override.returns(
              {
                destination: String,
                instructions: String,
                name: String,
                rubric:
                  T::Array[Telnyx::AI::Assistants::TestCreateParams::Rubric],
                description: String,
                max_duration_seconds: Integer,
                telnyx_conversation_channel:
                  Telnyx::AI::Assistants::TelnyxConversationChannel::OrSymbol,
                test_suite: String,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          class Rubric < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Assistants::TestCreateParams::Rubric,
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
