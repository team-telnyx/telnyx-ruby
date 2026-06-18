# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class CreatePlanStepRequest < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Missions::Runs::CreatePlanStepRequest,
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
