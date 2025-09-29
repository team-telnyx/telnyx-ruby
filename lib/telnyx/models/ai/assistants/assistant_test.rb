# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tests#create
        class AssistantTest < Telnyx::Internal::Type::BaseModel
          # @!attribute created_at
          #   Timestamp when the test was created.
          #
          #   @return [Time]
          required :created_at, Time

          # @!attribute name
          #   Human-readable name of the test.
          #
          #   @return [String]
          required :name, String

          # @!attribute rubric
          #   Evaluation criteria used to assess test performance.
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::AssistantTest::Rubric>]
          required :rubric, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::AssistantTest::Rubric] }

          # @!attribute telnyx_conversation_channel
          #   Communication channel used for test execution.
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::TelnyxConversationChannel]
          required :telnyx_conversation_channel, enum: -> { Telnyx::AI::Assistants::TelnyxConversationChannel }

          # @!attribute test_id
          #   Unique identifier for the assistant test.
          #
          #   @return [String]
          required :test_id, String

          # @!attribute description
          #   Detailed description of the test's purpose and scope.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute destination
          #   Target destination for test conversations.
          #
          #   @return [String, nil]
          optional :destination, String

          # @!attribute instructions
          #   Detailed test scenario instructions and objectives.
          #
          #   @return [String, nil]
          optional :instructions, String

          # @!attribute max_duration_seconds
          #   Maximum allowed duration for test execution in seconds.
          #
          #   @return [Integer, nil]
          optional :max_duration_seconds, Integer

          # @!attribute test_suite
          #   Test suite grouping for organizational purposes.
          #
          #   @return [String, nil]
          optional :test_suite, String

          # @!method initialize(created_at:, name:, rubric:, telnyx_conversation_channel:, test_id:, description: nil, destination: nil, instructions: nil, max_duration_seconds: nil, test_suite: nil)
          #   Response model containing complete assistant test information.
          #
          #   Returns all test configuration details including evaluation criteria,
          #   scheduling, and metadata. Used when retrieving individual tests or after
          #   creating/updating tests.
          #
          #   @param created_at [Time] Timestamp when the test was created.
          #
          #   @param name [String] Human-readable name of the test.
          #
          #   @param rubric [Array<Telnyx::Models::AI::Assistants::AssistantTest::Rubric>] Evaluation criteria used to assess test performance.
          #
          #   @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::TelnyxConversationChannel] Communication channel used for test execution.
          #
          #   @param test_id [String] Unique identifier for the assistant test.
          #
          #   @param description [String] Detailed description of the test's purpose and scope.
          #
          #   @param destination [String] Target destination for test conversations.
          #
          #   @param instructions [String] Detailed test scenario instructions and objectives.
          #
          #   @param max_duration_seconds [Integer] Maximum allowed duration for test execution in seconds.
          #
          #   @param test_suite [String] Test suite grouping for organizational purposes.

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
            #   {Telnyx::Models::AI::Assistants::AssistantTest::Rubric} for more details.
            #
            #   @param criteria [String] Specific guidance on how to assess the assistant’s performance for this rubric i
            #
            #   @param name [String] Label for the evaluation criterion, e.g., Empathy, Accuracy, Clarity.
          end
        end
      end

      AssistantTest = Assistants::AssistantTest
    end
  end
end
