# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::Tests#create
        class TestCreateParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          # @!attribute destination
          #   The target destination for the test conversation. Format depends on the channel:
          #   phone number for SMS/voice, webhook URL for web chat, etc.
          #
          #   @return [String]
          required :destination, String

          # @!attribute instructions
          #   Detailed instructions that define the test scenario and what the assistant
          #   should accomplish. This guides the test execution and evaluation.
          #
          #   @return [String]
          required :instructions, String

          # @!attribute name
          #   A descriptive name for the assistant test. This will be used to identify the
          #   test in the UI and reports.
          #
          #   @return [String]
          required :name, String

          # @!attribute rubric
          #   Evaluation criteria used to assess the assistant's performance. Each rubric item
          #   contains a name and specific criteria for evaluation.
          #
          #   @return [Array<Telnyx::Models::AI::Assistants::TestCreateParams::Rubric>]
          required :rubric, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Assistants::TestCreateParams::Rubric] }

          # @!attribute description
          #   Optional detailed description of what this test evaluates and its purpose. Helps
          #   team members understand the test's objectives.
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute max_duration_seconds
          #   Maximum duration in seconds that the test conversation should run before timing
          #   out. If not specified, uses system default timeout.
          #
          #   @return [Integer, nil]
          optional :max_duration_seconds, Integer

          # @!attribute telnyx_conversation_channel
          #   The communication channel through which the test will be conducted. Determines
          #   how the assistant will receive and respond to test messages.
          #
          #   @return [Symbol, Telnyx::Models::AI::Assistants::TelnyxConversationChannel, nil]
          optional :telnyx_conversation_channel, enum: -> { Telnyx::AI::Assistants::TelnyxConversationChannel }

          # @!attribute test_suite
          #   Optional test suite name to group related tests together. Useful for organizing
          #   tests by feature, team, or release cycle.
          #
          #   @return [String, nil]
          optional :test_suite, String

          # @!method initialize(destination:, instructions:, name:, rubric:, description: nil, max_duration_seconds: nil, telnyx_conversation_channel: nil, test_suite: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::AI::Assistants::TestCreateParams} for more details.
          #
          #   @param destination [String] The target destination for the test conversation. Format depends on the channel:
          #
          #   @param instructions [String] Detailed instructions that define the test scenario and what the assistant shoul
          #
          #   @param name [String] A descriptive name for the assistant test. This will be used to identify the tes
          #
          #   @param rubric [Array<Telnyx::Models::AI::Assistants::TestCreateParams::Rubric>] Evaluation criteria used to assess the assistant's performance. Each rubric item
          #
          #   @param description [String] Optional detailed description of what this test evaluates and its purpose. Helps
          #
          #   @param max_duration_seconds [Integer] Maximum duration in seconds that the test conversation should run before timing
          #
          #   @param telnyx_conversation_channel [Symbol, Telnyx::Models::AI::Assistants::TelnyxConversationChannel] The communication channel through which the test will be conducted. Determines h
          #
          #   @param test_suite [String] Optional test suite name to group related tests together. Useful for organizing
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
            #   {Telnyx::Models::AI::Assistants::TestCreateParams::Rubric} for more details.
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
