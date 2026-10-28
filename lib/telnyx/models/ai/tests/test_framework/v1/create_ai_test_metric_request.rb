# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class CreateAITestMetricRequest < Telnyx::Internal::Type::BaseModel
              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute add_to_new_agents
              #
              #   @return [Boolean, nil]
              optional :add_to_new_agents, Telnyx::Internal::Type::Boolean, nil?: true

              # @!attribute agents
              #
              #   @return [Array<Integer>, nil]
              optional :agents, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute assistant_id
              #
              #   @return [String, nil]
              optional :assistant_id, String

              # @!attribute audio_enabled
              #
              #   @return [Boolean, nil]
              optional :audio_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute display_order
              #
              #   @return [Integer, nil]
              optional :display_order, Integer

              # @!attribute enum_values
              #
              #   @return [Array<String>, nil]
              optional :enum_values, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute eval_type
              #   What the metric scores: numeric, continuous_qualitative, or
              #   binary_workflow_adherence.
              #
              #   @return [String, nil]
              optional :eval_type, String

              # @!attribute observability_enabled
              #
              #   @return [Boolean, nil]
              optional :observability_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute prompt
              #   Judge prompt used by llm_judge metrics.
              #
              #   @return [String, nil]
              optional :prompt, String

              # @!attribute sampling_enabled
              #
              #   @return [Boolean, nil]
              optional :sampling_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute simulation_enabled
              #
              #   @return [Boolean, nil]
              optional :simulation_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute type
              #   How the metric is evaluated: custom_code or llm_judge.
              #
              #   @return [String, nil]
              optional :type, String

              # @!method initialize(name:, add_to_new_agents: nil, agents: nil, assistant_id: nil, audio_enabled: nil, description: nil, display_order: nil, enum_values: nil, eval_type: nil, observability_enabled: nil, prompt: nil, sampling_enabled: nil, simulation_enabled: nil, type: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Tests::TestFramework::V1::CreateAITestMetricRequest} for
              #   more details.
              #
              #   @param name [String]
              #
              #   @param add_to_new_agents [Boolean, nil]
              #
              #   @param agents [Array<Integer>]
              #
              #   @param assistant_id [String]
              #
              #   @param audio_enabled [Boolean]
              #
              #   @param description [String]
              #
              #   @param display_order [Integer]
              #
              #   @param enum_values [Array<String>]
              #
              #   @param eval_type [String] What the metric scores: numeric, continuous_qualitative, or binary_workflow_adhe
              #
              #   @param observability_enabled [Boolean]
              #
              #   @param prompt [String] Judge prompt used by llm_judge metrics.
              #
              #   @param sampling_enabled [Boolean]
              #
              #   @param simulation_enabled [Boolean]
              #
              #   @param type [String] How the metric is evaluated: custom_code or llm_judge.
            end
          end
        end
      end
    end
  end
end
