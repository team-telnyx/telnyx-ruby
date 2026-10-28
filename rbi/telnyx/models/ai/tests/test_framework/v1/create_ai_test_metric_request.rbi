# typed: strong

module Telnyx
  module Models
    module AI
      module Tests
        module TestFramework
          module V1
            class CreateAITestMetricRequest < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Tests::TestFramework::V1::CreateAITestMetricRequest,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :name

              sig { returns(T.nilable(T::Boolean)) }
              attr_accessor :add_to_new_agents

              sig { returns(T.nilable(T::Array[Integer])) }
              attr_reader :agents

              sig { params(agents: T::Array[Integer]).void }
              attr_writer :agents

              sig { returns(T.nilable(String)) }
              attr_reader :assistant_id

              sig { params(assistant_id: String).void }
              attr_writer :assistant_id

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :audio_enabled

              sig { params(audio_enabled: T::Boolean).void }
              attr_writer :audio_enabled

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              sig { returns(T.nilable(Integer)) }
              attr_reader :display_order

              sig { params(display_order: Integer).void }
              attr_writer :display_order

              sig { returns(T.nilable(T::Array[String])) }
              attr_reader :enum_values

              sig { params(enum_values: T::Array[String]).void }
              attr_writer :enum_values

              # What the metric scores: numeric, continuous_qualitative, or
              # binary_workflow_adherence.
              sig { returns(T.nilable(String)) }
              attr_reader :eval_type

              sig { params(eval_type: String).void }
              attr_writer :eval_type

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :observability_enabled

              sig { params(observability_enabled: T::Boolean).void }
              attr_writer :observability_enabled

              # Judge prompt used by llm_judge metrics.
              sig { returns(T.nilable(String)) }
              attr_reader :prompt

              sig { params(prompt: String).void }
              attr_writer :prompt

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :sampling_enabled

              sig { params(sampling_enabled: T::Boolean).void }
              attr_writer :sampling_enabled

              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :simulation_enabled

              sig { params(simulation_enabled: T::Boolean).void }
              attr_writer :simulation_enabled

              # How the metric is evaluated: custom_code or llm_judge.
              sig { returns(T.nilable(String)) }
              attr_reader :type

              sig { params(type: String).void }
              attr_writer :type

              sig do
                params(
                  name: String,
                  add_to_new_agents: T.nilable(T::Boolean),
                  agents: T::Array[Integer],
                  assistant_id: String,
                  audio_enabled: T::Boolean,
                  description: String,
                  display_order: Integer,
                  enum_values: T::Array[String],
                  eval_type: String,
                  observability_enabled: T::Boolean,
                  prompt: String,
                  sampling_enabled: T::Boolean,
                  simulation_enabled: T::Boolean,
                  type: String
                ).returns(T.attached_class)
              end
              def self.new(
                name:,
                add_to_new_agents: nil,
                agents: nil,
                assistant_id: nil,
                audio_enabled: nil,
                description: nil,
                display_order: nil,
                enum_values: nil,
                # What the metric scores: numeric, continuous_qualitative, or
                # binary_workflow_adherence.
                eval_type: nil,
                observability_enabled: nil,
                # Judge prompt used by llm_judge metrics.
                prompt: nil,
                sampling_enabled: nil,
                simulation_enabled: nil,
                # How the metric is evaluated: custom_code or llm_judge.
                type: nil
              )
              end

              sig do
                override.returns(
                  {
                    name: String,
                    add_to_new_agents: T.nilable(T::Boolean),
                    agents: T::Array[Integer],
                    assistant_id: String,
                    audio_enabled: T::Boolean,
                    description: String,
                    display_order: Integer,
                    enum_values: T::Array[String],
                    eval_type: String,
                    observability_enabled: T::Boolean,
                    prompt: String,
                    sampling_enabled: T::Boolean,
                    simulation_enabled: T::Boolean,
                    type: String
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
