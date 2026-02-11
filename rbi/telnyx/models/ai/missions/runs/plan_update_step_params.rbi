# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class PlanUpdateStepParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :mission_id

            sig { returns(String) }
            attr_accessor :run_id

            sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
            attr_reader :metadata

            sig { params(metadata: T::Hash[Symbol, T.anything]).void }
            attr_writer :metadata

            sig do
              returns(
                T.nilable(
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::OrSymbol
                )
              )
            end
            attr_reader :status

            sig do
              params(
                status:
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::OrSymbol
              ).void
            end
            attr_writer :status

            sig do
              params(
                mission_id: String,
                run_id: String,
                metadata: T::Hash[Symbol, T.anything],
                status:
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::OrSymbol,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              mission_id:,
              run_id:,
              metadata: nil,
              status: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  mission_id: String,
                  run_id: String,
                  metadata: T::Hash[Symbol, T.anything],
                  status:
                    Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::OrSymbol,
                  request_options: Telnyx::RequestOptions
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
                    Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              PENDING =
                T.let(
                  :pending,
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::TaggedSymbol
                )
              IN_PROGRESS =
                T.let(
                  :in_progress,
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::TaggedSymbol
                )
              COMPLETED =
                T.let(
                  :completed,
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::TaggedSymbol
                )
              SKIPPED =
                T.let(
                  :skipped,
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::TaggedSymbol
                )
              FAILED =
                T.let(
                  :failed,
                  Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::Missions::Runs::PlanUpdateStepParams::Status::TaggedSymbol
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
