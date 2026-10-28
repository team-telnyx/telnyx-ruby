# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#create
            class ScenarioCreateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute personality
              #   ID of the personality the caller simulates.
              #
              #   @return [Integer]
              required :personality, Integer

              # @!attribute agent
              #
              #   @return [Integer, nil]
              optional :agent, Integer, nil?: true

              # @!attribute expected_outcome_prompt
              #
              #   @return [String, nil]
              optional :expected_outcome_prompt, String

              # @!attribute first_message
              #
              #   @return [String, nil]
              optional :first_message, String

              # @!attribute folder_path
              #
              #   @return [String, nil]
              optional :folder_path, String, nil?: true

              # @!attribute instructions
              #
              #   @return [String, nil]
              optional :instructions, String

              # @!attribute metrics
              #
              #   @return [Array<Integer>, nil]
              optional :metrics, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute tags
              #
              #   @return [Array<String>, nil]
              optional :tags, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute test_profile
              #
              #   @return [Integer, nil]
              optional :test_profile, Integer

              # @!method initialize(name:, personality:, agent: nil, expected_outcome_prompt: nil, first_message: nil, folder_path: nil, instructions: nil, metrics: nil, tags: nil, test_profile: nil, request_options: {})
              #   @param name [String]
              #
              #   @param personality [Integer] ID of the personality the caller simulates.
              #
              #   @param agent [Integer, nil]
              #
              #   @param expected_outcome_prompt [String]
              #
              #   @param first_message [String]
              #
              #   @param folder_path [String, nil]
              #
              #   @param instructions [String]
              #
              #   @param metrics [Array<Integer>]
              #
              #   @param tags [Array<String>]
              #
              #   @param test_profile [Integer]
              #
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
