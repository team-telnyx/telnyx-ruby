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

            sig { returns(String) }
            attr_accessor :run_id

            sig do
              returns(
                T::Array[Telnyx::AI::Missions::Runs::CreatePlanStepRequest]
              )
            end
            attr_accessor :steps

            sig do
              params(
                mission_id: String,
                run_id: String,
                steps:
                  T::Array[
                    Telnyx::AI::Missions::Runs::CreatePlanStepRequest::OrHash
                  ],
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(mission_id:, run_id:, steps:, request_options: {})
            end

            sig do
              override.returns(
                {
                  mission_id: String,
                  run_id: String,
                  steps:
                    T::Array[Telnyx::AI::Missions::Runs::CreatePlanStepRequest],
                  request_options: Telnyx::RequestOptions
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
