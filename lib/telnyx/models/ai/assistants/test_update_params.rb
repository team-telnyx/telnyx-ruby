# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tests#update
        class TestUpdateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute description
          #   Updated description of the test's purpose and evaluation criteria.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute destination
          #   Updated target destination for test conversations.
          #
          #   @return [String, nil]
          optional :destination, String

          # @!attribute instructions
          #   Updated test scenario instructions and objectives.
          #
          #   @return [String, nil]
          optional :instructions, String

          # @!attribute max_duration_seconds
          #   Updated maximum test duration in seconds.
          #
          #   @return [Integer, nil]
          optional :max_duration_seconds, Integer

          # @!attribute name
          #   Updated name for the assistant test. Must be unique and descriptive.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute rubric
          #   Updated evaluation criteria for assessing assistant performance.
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::TestUpdateParams::Rubric>, nil]
          optional :rubric, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::TestUpdateParams::Rubric] }

          # @!attribute telnyx_conversation_channel
          #   Updated communication channel for the test execution.
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::TelnyxConversationChannel, nil]
          optional :telnyx_conversation_channel, enum: -> { Telnyx::AI::Assistants::TelnyxConversationChannel }

          # @!attribute test_suite
          #   Updated test suite assignment for better organization.
          #
          #   @return [String, nil]
          optional :test_suite, String

          # @!method initialize(description: nil, destination: nil, instructions: nil, max_duration_seconds: nil, name: nil, rubric: nil, telnyx_conversation_channel: nil, test_suite: nil, request_options: {})
          #   @param description [String] Updated description of the test's purpose and evaluation criteria.
          #
          #   @param destination [String] Updated target destination for test conversations.
          #
          #   @param instructions [String] Updated test scenario instructions and objectives.
          #
          #   @param max_duration_seconds [Integer] Updated maximum test duration in seconds.
          #
          #   @param name [String] Updated name for the assistant test. Must be unique and descriptive.
          #
          #   @param rubric [Array<Telnyx::Models::AI::Assistants::TestUpdateParams::Rubric>] Updated evaluation criteria for assessing assistant performance.
          #
          #   @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::TelnyxConversationChannel] Updated communication channel for the test execution.
          #
          #   @param test_suite [String] Updated test suite assignment for better organization.
          #
          #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

          class Rubric < Telnyx::Internal::Type::BaseModel
            # @!attribute criteria
            #   Specific guidance on how to assess the assistant’s performance for this rubric
            #   item.
            #
            #   @return [String]
            required :criteria, String

            # @!attribute name
            #   Label for the evaluation criterion, e.g., Empathy, Accuracy, Clarity.
            #
            #   @return [String]
            required :name, String

            # @!method initialize(criteria:, name:)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::Assistants::TestUpdateParams::Rubric} for more details.
            #
            #   @param criteria [String] Specific guidance on how to assess the assistant’s performance for this rubric i
            #
            #   @param name [String] Label for the evaluation criterion, e.g., Empathy, Accuracy, Clarity.
          end
        end
      end
    end
  end
end
