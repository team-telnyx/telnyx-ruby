# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Scenarios#update
            class ScenarioUpdateParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              # @!attribute id
              #
              #   @return [Integer]
              required :id, Integer

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

              # @!attribute inbound_phone_number
              #
              #   @return [Integer, nil]
              optional :inbound_phone_number, Integer

              # @!attribute instructions
              #
              #   @return [String, nil]
              optional :instructions, String

              # @!attribute max_duration
              #
              #   @return [Integer, nil]
              optional :max_duration, Integer, nil?: true

              # @!attribute metrics
              #
              #   @return [Array<Integer>, nil]
              optional :metrics, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute personality
              #
              #   @return [Integer, nil]
              optional :personality, Integer

              # @!attribute phone_number
              #
              #   @return [Integer, nil]
              optional :phone_number, Integer

              # @!attribute scenario_language
              #
              #   @return [String, nil]
              optional :scenario_language, String

              # @!attribute tags
              #
              #   @return [Array<String>, nil]
              optional :tags, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute test_profile
              #
              #   @return [Integer, nil]
              optional :test_profile, Integer

              # @!attribute tool_ids
              #
              #   @return [Array<String>, nil]
              optional :tool_ids, Telnyx::Internal::Type::ArrayOf[String]

              # @!method initialize(id:, agent: nil, expected_outcome_prompt: nil, first_message: nil, folder_path: nil, inbound_phone_number: nil, instructions: nil, max_duration: nil, metrics: nil, name: nil, personality: nil, phone_number: nil, scenario_language: nil, tags: nil, test_profile: nil, tool_ids: nil, request_options: {})
              #   @param id [Integer]
              #   @param agent [Integer, nil]
              #   @param expected_outcome_prompt [String]
              #   @param first_message [String]
              #   @param folder_path [String, nil]
              #   @param inbound_phone_number [Integer]
              #   @param instructions [String]
              #   @param max_duration [Integer, nil]
              #   @param metrics [Array<Integer>]
              #   @param name [String]
              #   @param personality [Integer]
              #   @param phone_number [Integer]
              #   @param scenario_language [String]
              #   @param tags [Array<String>]
              #   @param test_profile [Integer]
              #   @param tool_ids [Array<String>]
              #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
            end
          end
        end
      end
    end
  end
end
