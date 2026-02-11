# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class PlanAddStepsToPlanParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Missions::Runs::PlanAddStepsToPlanParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :mission_id

            sig do
              returns(
                T::Array[
                  Telnyx::AI::Missions::Runs::PlanAddStepsToPlanParams::Step
                ]
              )
            end
            attr_accessor :steps

            sig do
              params(
                mission_id: String,
                steps:
                  T::Array[
                    Telnyx::AI::Missions::Runs::PlanAddStepsToPlanParams::Step::OrHash
                  ],
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(mission_id:, steps:, request_options: {})
            end

            sig do
              override.returns(
                {
                  mission_id: String,
                  steps:
                    T::Array[
                      Telnyx::AI::Missions::Runs::PlanAddStepsToPlanParams::Step
                    ],
                  request_options: Telnyx::RequestOptions
                }
              )
            end
            def to_hash
            end

            class Step < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Missions::Runs::PlanAddStepsToPlanParams::Step,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :description

              sig { returns(Integer) }
              attr_accessor :sequence

              sig { returns(String) }
              attr_accessor :step_id

              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :metadata

              sig { params(metadata: T::Hash[Symbol, T.anything]).void }
              attr_writer :metadata

              sig { returns(T.nilable(String)) }
              attr_reader :parent_step_id

              sig { params(parent_step_id: String).void }
              attr_writer :parent_step_id

              sig do
                params(
                  description: String,
                  sequence: Integer,
                  step_id: String,
                  metadata: T::Hash[Symbol, T.anything],
                  parent_step_id: String
                ).returns(T.attached_class)
              end
              def self.new(
                description:,
                sequence:,
                step_id:,
                metadata: nil,
                parent_step_id: nil
              )
              end

              sig do
                override.returns(
                  {
                    description: String,
                    sequence: Integer,
                    step_id: String,
                    metadata: T::Hash[Symbol, T.anything],
                    parent_step_id: String
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
