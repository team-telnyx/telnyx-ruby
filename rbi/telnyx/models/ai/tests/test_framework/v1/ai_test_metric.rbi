# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class AITestMetric < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::AITestMetric,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(Integer) }
              attr_accessor :id

              # What the metric scores: numeric, continuous_qualitative, or
              # binary_workflow_adherence.
              sig { returns(String) }
              attr_accessor :eval_type

              sig { returns(String) }
              attr_accessor :name

              # How the metric is evaluated: custom_code or llm_judge.
              sig { returns(String) }
              attr_accessor :type

              # Whether the metric is attached to newly created test agents by default.
              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :add_to_new_agents

              sig { returns(T.nilable(Integer)) }
              attr_accessor :agent

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :agent_names

              sig { params(agent_names: T::Array[String]).void }
              attr_writer :agent_names

              # Test agent IDs the metric is attached to.
              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :agents

              sig { params(agents: T::Array[Integer]).void }
              attr_writer :agents

              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_accessor :alert_filters

              sig { returns(T.nilable(String)) }
              attr_reader :alert_type

              sig { params(alert_type: String).void }
              attr_writer :alert_type

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :audio_enabled

              sig { params(audio_enabled: T::Boolean).void }
              attr_writer :audio_enabled

              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_accessor :configuration

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              sig { returns(T.nilable(Integer)) }
              attr_reader :display_order

              sig { params(display_order: Integer).void }
              attr_writer :display_order

              # Allowed values for qualitative enum metrics.
              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :enum_values

              sig { params(enum_values: T::Array[String]).void }
              attr_writer :enum_values

              sig { returns(T.nilable(String)) }
              attr_reader :evaluation_trigger

              sig { params(evaluation_trigger: String).void }
              attr_writer :evaluation_trigger

              sig { returns(T.nilable(String)) }
              attr_reader :evaluation_trigger_custom_code

              sig { params(evaluation_trigger_custom_code: String).void }
              attr_writer :evaluation_trigger_custom_code

              sig { returns(T.nilable(String)) }
              attr_reader :evaluation_trigger_prompt

              sig { params(evaluation_trigger_prompt: String).void }
              attr_writer :evaluation_trigger_prompt

              # Smoothing factor for the alert trend.
              sig { returns(T.nilable(Float)) }
              attr_reader :ewma_alpha

              sig { params(ewma_alpha: Float).void }
              attr_writer :ewma_alpha

              # Built-in evaluation function used by custom_code metrics.
              sig { returns(T.nilable(String)) }
              attr_accessor :function_name

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :kb_file_ids

              sig { params(kb_file_ids: T::Array[Integer]).void }
              attr_writer :kb_file_ids

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :knowledge_base_files

              sig { params(knowledge_base_files: T::Array[String]).void }
              attr_writer :knowledge_base_files

              sig { returns(T.nilable(Float)) }
              attr_reader :metric_cost

              sig { params(metric_cost: Float).void }
              attr_writer :metric_cost

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :observability_enabled

              sig { params(observability_enabled: T::Boolean).void }
              attr_writer :observability_enabled

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore::Variants
                  )
                )
              end
              attr_reader :overall_score

              sig do
                params(
                  overall_score:
                    Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore::Variants
                ).void
              end
              attr_writer :overall_score

              sig { returns(T.nilable(String)) }
              attr_reader :priority_assignment_prompt

              sig { params(priority_assignment_prompt: String).void }
              attr_writer :priority_assignment_prompt

              sig { returns(T.nilable(Integer)) }
              attr_accessor :project

              # Judge prompt used by llm_judge metrics.
              sig { returns(T.nilable(String)) }
              attr_reader :prompt

              sig { params(prompt: String).void }
              attr_writer :prompt

              sig { returns(T.nilable(Float)) }
              attr_accessor :sample_rate

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :sampling_enabled

              sig { params(sampling_enabled: T::Boolean).void }
              attr_writer :sampling_enabled

              sig { returns(T.nilable(String)) }
              attr_reader :significant_change_alert_direction

              sig { params(significant_change_alert_direction: String).void }
              attr_writer :significant_change_alert_direction

              sig { returns(T.nilable(String)) }
              attr_reader :significant_change_alert_status

              sig { params(significant_change_alert_status: String).void }
              attr_writer :significant_change_alert_status

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :simulation_enabled

              sig { params(simulation_enabled: T::Boolean).void }
              attr_writer :simulation_enabled

              # Stable identifier of a built-in metric.
              sig { returns(T.nilable(String)) }
              attr_accessor :slug

              # Standard-deviation multiplier for significant-change alerts.
              sig { returns(T.nilable(Float)) }
              attr_reader :std_multiplier

              sig { params(std_multiplier: Float).void }
              attr_writer :std_multiplier

              sig do
                returns(
                  T.nilable(
                    Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore::Variants
                  )
                )
              end
              attr_reader :total_score

              sig do
                params(
                  total_score:
                    Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore::Variants
                ).void
              end
              attr_writer :total_score

              sig { returns(T.nilable(String)) }
              attr_reader :trigger_type

              sig { params(trigger_type: String).void }
              attr_writer :trigger_type

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :user_defined

              sig { params(user_defined: T::Boolean).void }
              attr_writer :user_defined

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :uses_llm_judge

              sig { params(uses_llm_judge: T::Boolean).void }
              attr_writer :uses_llm_judge

              # Sliding window size the alert status is computed over.
              sig { returns(T.nilable(Integer)) }
              attr_reader :window_size

              sig { params(window_size: Integer).void }
              attr_writer :window_size

              sig do
                params(
                  id: Integer,
                  eval_type: String,
                  name: String,
                  type: String,
                  add_to_new_agents: T.nilable(T::Boolean),
                  agent: T.nilable(Integer),
                  agent_names: T::Array[String],
                  agents: T::Array[Integer],
                  alert_filters: T.nilable(T::Hash[Symbol, T.anything]),
                  alert_type: String,
                  audio_enabled: T::Boolean,
                  configuration: T.nilable(T::Hash[Symbol, T.anything]),
                  description: String,
                  display_order: Integer,
                  enum_values: T::Array[String],
                  evaluation_trigger: String,
                  evaluation_trigger_custom_code: String,
                  evaluation_trigger_prompt: String,
                  ewma_alpha: Float,
                  function_name: T.nilable(String),
                  kb_file_ids: T::Array[Integer],
                  knowledge_base_files: T::Array[String],
                  metric_cost: Float,
                  observability_enabled: T::Boolean,
                  overall_score:
                    Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore::Variants,
                  priority_assignment_prompt: String,
                  project: T.nilable(Integer),
                  prompt: String,
                  sample_rate: T.nilable(Float),
                  sampling_enabled: T::Boolean,
                  significant_change_alert_direction: String,
                  significant_change_alert_status: String,
                  simulation_enabled: T::Boolean,
                  slug: T.nilable(String),
                  std_multiplier: Float,
                  total_score:
                    Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore::Variants,
                  trigger_type: String,
                  user_defined: T::Boolean,
                  uses_llm_judge: T::Boolean,
                  window_size: Integer
                ).returns(T.attached_class)
              end
              def self.new(
                id:,
                # What the metric scores: numeric, continuous_qualitative, or
                # binary_workflow_adherence.
                eval_type:,
                name:,
                # How the metric is evaluated: custom_code or llm_judge.
                type:,
                # Whether the metric is attached to newly created test agents by default.
                add_to_new_agents: nil,
                agent: nil,
                agent_names: nil,
                # Test agent IDs the metric is attached to.
                agents: nil,
                alert_filters: nil,
                alert_type: nil,
                audio_enabled: nil,
                configuration: nil,
                description: nil,
                display_order: nil,
                # Allowed values for qualitative enum metrics.
                enum_values: nil,
                evaluation_trigger: nil,
                evaluation_trigger_custom_code: nil,
                evaluation_trigger_prompt: nil,
                # Smoothing factor for the alert trend.
                ewma_alpha: nil,
                # Built-in evaluation function used by custom_code metrics.
                function_name: nil,
                kb_file_ids: nil,
                knowledge_base_files: nil,
                metric_cost: nil,
                observability_enabled: nil,
                overall_score: nil,
                priority_assignment_prompt: nil,
                project: nil,
                # Judge prompt used by llm_judge metrics.
                prompt: nil,
                sample_rate: nil,
                sampling_enabled: nil,
                significant_change_alert_direction: nil,
                significant_change_alert_status: nil,
                simulation_enabled: nil,
                # Stable identifier of a built-in metric.
                slug: nil,
                # Standard-deviation multiplier for significant-change alerts.
                std_multiplier: nil,
                total_score: nil,
                trigger_type: nil,
                user_defined: nil,
                uses_llm_judge: nil,
                # Sliding window size the alert status is computed over.
                window_size: nil
              )
              end

              sig do
                override.returns(
                  {
                    id: Integer,
                    eval_type: String,
                    name: String,
                    type: String,
                    add_to_new_agents: T.nilable(T::Boolean),
                    agent: T.nilable(Integer),
                    agent_names: T::Array[String],
                    agents: T::Array[Integer],
                    alert_filters: T.nilable(T::Hash[Symbol, T.anything]),
                    alert_type: String,
                    audio_enabled: T::Boolean,
                    configuration: T.nilable(T::Hash[Symbol, T.anything]),
                    description: String,
                    display_order: Integer,
                    enum_values: T::Array[String],
                    evaluation_trigger: String,
                    evaluation_trigger_custom_code: String,
                    evaluation_trigger_prompt: String,
                    ewma_alpha: Float,
                    function_name: T.nilable(String),
                    kb_file_ids: T::Array[Integer],
                    knowledge_base_files: T::Array[String],
                    metric_cost: Float,
                    observability_enabled: T::Boolean,
                    overall_score:
                      Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore::Variants,
                    priority_assignment_prompt: String,
                    project: T.nilable(Integer),
                    prompt: String,
                    sample_rate: T.nilable(Float),
                    sampling_enabled: T::Boolean,
                    significant_change_alert_direction: String,
                    significant_change_alert_status: String,
                    simulation_enabled: T::Boolean,
                    slug: T.nilable(String),
                    std_multiplier: Float,
                    total_score:
                      Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore::Variants,
                    trigger_type: String,
                    user_defined: T::Boolean,
                    uses_llm_judge: T::Boolean,
                    window_size: Integer
                  }
                )
              end
              def to_hash
              end

              module OverallScore
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Float, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::AITestMetric::OverallScore::Variants
                    ]
                  )
                end
                def self.variants
                end
              end

              module TotalScore
                extend Telnyx::Internal::Type::Union

                Variants = T.type_alias { T.any(Float, String) }

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::Tests::TestFramework::V1::AITestMetric::TotalScore::Variants
                    ]
                  )
                end
                def self.variants
                end
              end
            end
          end
        end
      end
    end
  end
end
