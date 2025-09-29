# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class TestUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::TestUpdateParams,
                Telnyx::Internal::AnyHash
              )
            end

          # Updated description of the test's purpose and evaluation criteria.
          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          # Updated target destination for test conversations.
          sig { returns(T.nilable(String)) }
          attr_reader :destination

          sig { params(destination: String).void }
          attr_writer :destination

          # Updated test scenario instructions and objectives.
          sig { returns(T.nilable(String)) }
          attr_reader :instructions

          sig { params(instructions: String).void }
          attr_writer :instructions

          # Updated maximum test duration in seconds.
          sig { returns(T.nilable(Integer)) }
          attr_reader :max_duration_seconds

          sig { params(max_duration_seconds: Integer).void }
          attr_writer :max_duration_seconds

          # Updated name for the assistant test. Must be unique and descriptive.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Updated evaluation criteria for assessing assistant performance.
          sig do
            returns(
              T.nilable(
                T::Array[Telnyx::AI::Assistants::TestUpdateParams::Rubric]
              )
            )
          end
          attr_reader :rubric

          sig do
            params(
              rubric:
                T::Array[
                  Telnyx::AI::Assistants::TestUpdateParams::Rubric::OrHash
                ]
            ).void
          end
          attr_writer :rubric

          # Updated communication channel for the test execution.
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

          # Updated test suite assignment for better organization.
          sig { returns(T.nilable(String)) }
          attr_reader :test_suite

          sig { params(test_suite: String).void }
          attr_writer :test_suite

          sig do
            params(
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
            ).returns(T.attached_class)
          end
          def self.new(
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

          sig do
            override.returns(
              {
                description: String,
                destination: String,
                instructions: String,
                max_duration_seconds: Integer,
                name: String,
                rubric:
                  T::Array[Telnyx::AI::Assistants::TestUpdateParams::Rubric],
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
                  Telnyx::AI::Assistants::TestUpdateParams::Rubric,
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
