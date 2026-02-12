# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class PlanAddStepsToPlanResponse < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(T::Array[Telnyx::AI::Missions::Runs::PlanStepData]) }
            attr_accessor :data

            sig do
              params(
                data: T::Array[Telnyx::AI::Missions::Runs::PlanStepData::OrHash]
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                { data: T::Array[Telnyx::AI::Missions::Runs::PlanStepData] }
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
