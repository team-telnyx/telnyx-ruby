# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            # @see Telnyx::Resources::AI::Tests::TestFramework::V1::Metrics#create
            class AITestMetric < Telnyx::Internal::Type::BaseModel
              # @!attribute id
              #
              #   @return [Integer]
              required :id, Integer

              # @!attribute eval_type
              #   What the metric scores: numeric, continuous_qualitative, or
              #   binary_workflow_adherence.
              #
              #   @return [String]
              required :eval_type, String

              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute type
              #   How the metric is evaluated: custom_code or llm_judge.
              #
              #   @return [String]
              required :type, String

              # @!attribute add_to_new_agents
              #   Whether the metric is attached to newly created test agents by default.
              #
              #   @return [Boolean, nil]
              optional :add_to_new_agents, Telnyx::Internal::Type::Boolean, nil?: true

              # @!attribute agent
              #
              #   @return [Integer, nil]
              optional :agent, Integer, nil?: true

              # @!attribute agent_names
              #
              #   @return [Array<String>, nil]
              optional :agent_names, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute agents
              #   Test agent IDs the metric is attached to.
              #
              #   @return [Array<Integer>, nil]
              optional :agents, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute alert_filters
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :alert_filters,
                       Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
                       nil?: true

              # @!attribute alert_type
              #
              #   @return [String, nil]
              optional :alert_type, String

              # @!attribute audio_enabled
              #
              #   @return [Boolean, nil]
              optional :audio_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute configuration
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :configuration,
                       Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
                       nil?: true

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute display_order
              #
              #   @return [Integer, nil]
              optional :display_order, Integer

              # @!attribute enum_values
              #   Allowed values for qualitative enum metrics.
              #
              #   @return [Array<String>, nil]
              optional :enum_values, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute evaluation_trigger
              #
              #   @return [String, nil]
              optional :evaluation_trigger, String

              # @!attribute evaluation_trigger_custom_code
              #
              #   @return [String, nil]
              optional :evaluation_trigger_custom_code, String

              # @!attribute evaluation_trigger_prompt
              #
              #   @return [String, nil]
              optional :evaluation_trigger_prompt, String

              # @!attribute ewma_alpha
              #   Smoothing factor for the alert trend.
              #
              #   @return [Float, nil]
              optional :ewma_alpha, Float

              # @!attribute function_name
              #   Built-in evaluation function used by custom_code metrics.
              #
              #   @return [String, nil]
              optional :function_name, String, nil?: true

              # @!attribute kb_file_ids
              #
              #   @return [Array<Integer>, nil]
              optional :kb_file_ids, Telnyx::Internal::Type::ArrayOf[Integer]

              # @!attribute knowledge_base_files
              #
              #   @return [Array<String>, nil]
              optional :knowledge_base_files, Telnyx::Internal::Type::ArrayOf[String]

              # @!attribute metric_cost
              #
              #   @return [Float, nil]
              optional :metric_cost, Float

              # @!attribute observability_enabled
              #
              #   @return [Boolean, nil]
              optional :observability_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute overall_score
              #
              #   @return [Float, String, nil]
              optional :overall_score, union: -> { Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore }

              # @!attribute priority_assignment_prompt
              #
              #   @return [String, nil]
              optional :priority_assignment_prompt, String

              # @!attribute project
              #
              #   @return [Integer, nil]
              optional :project, Integer, nil?: true

              # @!attribute prompt
              #   Judge prompt used by llm_judge metrics.
              #
              #   @return [String, nil]
              optional :prompt, String

              # @!attribute sample_rate
              #
              #   @return [Float, nil]
              optional :sample_rate, Float, nil?: true

              # @!attribute sampling_enabled
              #
              #   @return [Boolean, nil]
              optional :sampling_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute significant_change_alert_direction
              #
              #   @return [String, nil]
              optional :significant_change_alert_direction, String

              # @!attribute significant_change_alert_status
              #
              #   @return [String, nil]
              optional :significant_change_alert_status, String

              # @!attribute simulation_enabled
              #
              #   @return [Boolean, nil]
              optional :simulation_enabled, Telnyx::Internal::Type::Boolean

              # @!attribute slug
              #   Stable identifier of a built-in metric.
              #
              #   @return [String, nil]
              optional :slug, String, nil?: true

              # @!attribute std_multiplier
              #   Standard-deviation multiplier for significant-change alerts.
              #
              #   @return [Float, nil]
              optional :std_multiplier, Float

              # @!attribute total_score
              #
              #   @return [Float, String, nil]
              optional :total_score, union: -> { Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore }

              # @!attribute trigger_type
              #
              #   @return [String, nil]
              optional :trigger_type, String

              # @!attribute user_defined
              #
              #   @return [Boolean, nil]
              optional :user_defined, Telnyx::Internal::Type::Boolean

              # @!attribute uses_llm_judge
              #
              #   @return [Boolean, nil]
              optional :uses_llm_judge, Telnyx::Internal::Type::Boolean

              # @!attribute window_size
              #   Sliding window size the alert status is computed over.
              #
              #   @return [Integer, nil]
              optional :window_size, Integer

              # @!method initialize(id:, eval_type:, name:, type:, add_to_new_agents: nil, agent: nil, agent_names: nil, agents: nil, alert_filters: nil, alert_type: nil, audio_enabled: nil, configuration: nil, description: nil, display_order: nil, enum_values: nil, evaluation_trigger: nil, evaluation_trigger_custom_code: nil, evaluation_trigger_prompt: nil, ewma_alpha: nil, function_name: nil, kb_file_ids: nil, knowledge_base_files: nil, metric_cost: nil, observability_enabled: nil, overall_score: nil, priority_assignment_prompt: nil, project: nil, prompt: nil, sample_rate: nil, sampling_enabled: nil, significant_change_alert_direction: nil, significant_change_alert_status: nil, simulation_enabled: nil, slug: nil, std_multiplier: nil, total_score: nil, trigger_type: nil, user_defined: nil, uses_llm_judge: nil, window_size: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::Tests::TestFramework::V1::AITestMetric} for more details.
              #
              #   @param id [Integer]
              #
              #   @param eval_type [String] What the metric scores: numeric, continuous_qualitative, or binary_workflow_adhe
              #
              #   @param name [String]
              #
              #   @param type [String] How the metric is evaluated: custom_code or llm_judge.
              #
              #   @param add_to_new_agents [Boolean, nil] Whether the metric is attached to newly created test agents by default.
              #
              #   @param agent [Integer, nil]
              #
              #   @param agent_names [Array<String>]
              #
              #   @param agents [Array<Integer>] Test agent IDs the metric is attached to.
              #
              #   @param alert_filters [Hash{Symbol=>Object}, nil]
              #
              #   @param alert_type [String]
              #
              #   @param audio_enabled [Boolean]
              #
              #   @param configuration [Hash{Symbol=>Object}, nil]
              #
              #   @param description [String]
              #
              #   @param display_order [Integer]
              #
              #   @param enum_values [Array<String>] Allowed values for qualitative enum metrics.
              #
              #   @param evaluation_trigger [String]
              #
              #   @param evaluation_trigger_custom_code [String]
              #
              #   @param evaluation_trigger_prompt [String]
              #
              #   @param ewma_alpha [Float] Smoothing factor for the alert trend.
              #
              #   @param function_name [String, nil] Built-in evaluation function used by custom_code metrics.
              #
              #   @param kb_file_ids [Array<Integer>]
              #
              #   @param knowledge_base_files [Array<String>]
              #
              #   @param metric_cost [Float]
              #
              #   @param observability_enabled [Boolean]
              #
              #   @param overall_score [Float, String]
              #
              #   @param priority_assignment_prompt [String]
              #
              #   @param project [Integer, nil]
              #
              #   @param prompt [String] Judge prompt used by llm_judge metrics.
              #
              #   @param sample_rate [Float, nil]
              #
              #   @param sampling_enabled [Boolean]
              #
              #   @param significant_change_alert_direction [String]
              #
              #   @param significant_change_alert_status [String]
              #
              #   @param simulation_enabled [Boolean]
              #
              #   @param slug [String, nil] Stable identifier of a built-in metric.
              #
              #   @param std_multiplier [Float] Standard-deviation multiplier for significant-change alerts.
              #
              #   @param total_score [Float, String]
              #
              #   @param trigger_type [String]
              #
              #   @param user_defined [Boolean]
              #
              #   @param uses_llm_judge [Boolean]
              #
              #   @param window_size [Integer] Sliding window size the alert status is computed over.

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::AITestMetric#overall_score
              module OverallScore
                extend Telnyx::Internal::Type::Union

                variant Float

                variant String

                # @!method self.variants
                #   @return [Array(Float, String)]
              end

              # @see Telnyx::Models::AI::Tests::TestFramework::V1::AITestMetric#total_score
              module TotalScore
                extend Telnyx::Internal::Type::Union

                variant Float

                variant String

                # @!method self.variants
                #   @return [Array(Float, String)]
              end
            end
          end
        end
      end
    end
  end
end
