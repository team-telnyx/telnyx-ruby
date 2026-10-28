# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#retrieve_scenario_agent_progress
            class ScenarioRetrieveScenarioAgentProgressResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute error
              #
              #   @return [String, nil]
              optional :error, String, nil?: true

              # @!attribute mode
              #
              #   @return [String, nil]
              optional :mode, String

              # @!attribute progress_id
              #
              #   @return [String, nil]
              optional :progress_id, String

              # @!attribute result
              #
              #   @return [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result, nil]
              optional :result,
                       -> { Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result },
                       nil?: true

              # @!attribute session_id
              #
              #   @return [Integer, nil]
              optional :session_id, Integer, nil?: true

              # @!attribute status
              #
              #   @return [String, nil]
              optional :status, String

              # @!method initialize(error: nil, mode: nil, progress_id: nil, result: nil, session_id: nil, status: nil)
              #   @param error [String, nil]
              #   @param mode [String]
              #   @param progress_id [String]
              #   @param result [Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result, nil]
              #   @param session_id [Integer, nil]
              #   @param status [String]

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse#result
              class Result < Telnyx::Internal::Type::BaseModel
                # @!attribute cancelled
                #
                #   @return [Boolean, nil]
                optional :cancelled, Telnyx::Internal::Type::Boolean

                # @!attribute clarification_questions
                #
                #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ClarificationQuestion>, nil]
                optional :clarification_questions,
                         -> do
                           Telnyx::Internal::Type::ArrayOf[
                             Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ClarificationQuestion
                           ]
                         end

                # @!attribute conversation_history
                #
                #   @return [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ConversationHistory>, nil]
                optional :conversation_history,
                         -> do
                           Telnyx::Internal::Type::ArrayOf[
                             Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ConversationHistory
                           ]
                         end

                # @!attribute message
                #
                #   @return [String, nil]
                optional :message, String

                # @!attribute needs_clarification
                #
                #   @return [Boolean, nil]
                optional :needs_clarification, Telnyx::Internal::Type::Boolean

                # @!attribute session_id
                #
                #   @return [Integer, nil]
                optional :session_id, Integer

                # @!attribute success
                #
                #   @return [Boolean, nil]
                optional :success, Telnyx::Internal::Type::Boolean

                # @!attribute updated_scenarios
                #
                #   @return [Array<Hash{Symbol=>Object}>, nil]
                optional :updated_scenarios,
                         Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]]

                # @!method initialize(cancelled: nil, clarification_questions: nil, conversation_history: nil, message: nil, needs_clarification: nil, session_id: nil, success: nil, updated_scenarios: nil)
                #   @param cancelled [Boolean]
                #   @param clarification_questions [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ClarificationQuestion>]
                #   @param conversation_history [Array<Telnyx::Models::AI::Tests::TestFramework::V1::ScenarioRetrieveScenarioAgentProgressResponse::Result::ConversationHistory>]
                #   @param message [String]
                #   @param needs_clarification [Boolean]
                #   @param session_id [Integer]
                #   @param success [Boolean]
                #   @param updated_scenarios [Array<Hash{Symbol=>Object}>]

                class ClarificationQuestion < Telnyx::Internal::Type::BaseModel
                  # @!attribute question
                  #
                  #   @return [String, nil]
                  optional :question, String

                  # @!method initialize(question: nil)
                  #   @param question [String]
                end

                class ConversationHistory < Telnyx::Internal::Type::BaseModel
                  # @!attribute content
                  #
                  #   @return [String, nil]
                  optional :content, String

                  # @!attribute role
                  #
                  #   @return [String, nil]
                  optional :role, String

                  # @!attribute timestamp
                  #
                  #   @return [String, nil]
                  optional :timestamp, String

                  # @!method initialize(content: nil, role: nil, timestamp: nil)
                  #   @param content [String]
                  #   @param role [String]
                  #   @param timestamp [String]
                end
              end
            end
          end
        end
      end
    end
  end
end
