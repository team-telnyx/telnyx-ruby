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

            sig do
              returns(
                T::Array[
                  Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data
                ]
              )
            end
            attr_accessor :data

            sig do
              params(
                data:
                  T::Array[
                    Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(data:)
            end

            sig do
              override.returns(
                {
                  data:
                    T::Array[
                      Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data
                    ]
                }
              )
            end
            def to_hash
            end

            class Data < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :description

              sig { returns(String) }
              attr_accessor :run_id

              sig { returns(Integer) }
              attr_accessor :sequence

              sig do
                returns(
                  Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::TaggedSymbol
                )
              end
              attr_accessor :status

              sig { returns(String) }
              attr_accessor :step_id

              sig { returns(T.nilable(Time)) }
              attr_reader :completed_at

              sig { params(completed_at: Time).void }
              attr_writer :completed_at

              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :metadata

              sig { params(metadata: T::Hash[Symbol, T.anything]).void }
              attr_writer :metadata

              sig { returns(T.nilable(String)) }
              attr_reader :parent_step_id

              sig { params(parent_step_id: String).void }
              attr_writer :parent_step_id

              sig { returns(T.nilable(Time)) }
              attr_reader :started_at

              sig { params(started_at: Time).void }
              attr_writer :started_at

              sig do
                params(
                  description: String,
                  run_id: String,
                  sequence: Integer,
                  status:
                    Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::OrSymbol,
                  step_id: String,
                  completed_at: Time,
                  metadata: T::Hash[Symbol, T.anything],
                  parent_step_id: String,
                  started_at: Time
                ).returns(T.attached_class)
              end
              def self.new(
                description:,
                run_id:,
                sequence:,
                status:,
                step_id:,
                completed_at: nil,
                metadata: nil,
                parent_step_id: nil,
                started_at: nil
              )
              end

              sig do
                override.returns(
                  {
                    description: String,
                    run_id: String,
                    sequence: Integer,
                    status:
                      Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::TaggedSymbol,
                    step_id: String,
                    completed_at: Time,
                    metadata: T::Hash[Symbol, T.anything],
                    parent_step_id: String,
                    started_at: Time
                  }
                )
              end
              def to_hash
              end

              module Status
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                PENDING =
                  T.let(
                    :pending,
                    Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::TaggedSymbol
                  )
                IN_PROGRESS =
                  T.let(
                    :in_progress,
                    Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::TaggedSymbol
                  )
                COMPLETED =
                  T.let(
                    :completed,
                    Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::TaggedSymbol
                  )
                SKIPPED =
                  T.let(
                    :skipped,
                    Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::TaggedSymbol
                  )
                FAILED =
                  T.let(
                    :failed,
                    Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::Models::AI::Missions::Runs::PlanAddStepsToPlanResponse::Data::Status::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end
          end
        end
      end
    end
  end
end
