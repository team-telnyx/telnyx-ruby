# typed: strong

module Telnyx
  module Models
    module AI
      MissionRunData = Missions::MissionRunData

      module Missions
        class MissionRunData < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Missions::MissionRunData,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :mission_id

          sig { returns(String) }
          attr_accessor :run_id

          sig { returns(Time) }
          attr_accessor :started_at

          sig do
            returns(Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol)
          end
          attr_accessor :status

          sig { returns(Time) }
          attr_accessor :updated_at

          sig { returns(T.nilable(String)) }
          attr_reader :error

          sig { params(error: String).void }
          attr_writer :error

          sig { returns(T.nilable(Time)) }
          attr_reader :finished_at

          sig { params(finished_at: Time).void }
          attr_writer :finished_at

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :input

          sig { params(input: T::Hash[Symbol, T.anything]).void }
          attr_writer :input

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :metadata

          sig { params(metadata: T::Hash[Symbol, T.anything]).void }
          attr_writer :metadata

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :result_payload

          sig { params(result_payload: T::Hash[Symbol, T.anything]).void }
          attr_writer :result_payload

          sig { returns(T.nilable(String)) }
          attr_reader :result_summary

          sig { params(result_summary: String).void }
          attr_writer :result_summary

          sig do
            params(
              mission_id: String,
              run_id: String,
              started_at: Time,
              status: Telnyx::AI::Missions::MissionRunData::Status::OrSymbol,
              updated_at: Time,
              error: String,
              finished_at: Time,
              input: T::Hash[Symbol, T.anything],
              metadata: T::Hash[Symbol, T.anything],
              result_payload: T::Hash[Symbol, T.anything],
              result_summary: String
            ).returns(T.attached_class)
          end
          def self.new(
            mission_id:,
            run_id:,
            started_at:,
            status:,
            updated_at:,
            error: nil,
            finished_at: nil,
            input: nil,
            metadata: nil,
            result_payload: nil,
            result_summary: nil
          )
          end

          sig do
            override.returns(
              {
                mission_id: String,
                run_id: String,
                started_at: Time,
                status:
                  Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol,
                updated_at: Time,
                error: String,
                finished_at: Time,
                input: T::Hash[Symbol, T.anything],
                metadata: T::Hash[Symbol, T.anything],
                result_payload: T::Hash[Symbol, T.anything],
                result_summary: String
              }
            )
          end
          def to_hash
          end

          module Status
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::AI::Missions::MissionRunData::Status)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :pending,
                Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol
              )
            RUNNING =
              T.let(
                :running,
                Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol
              )
            PAUSED =
              T.let(
                :paused,
                Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol
              )
            SUCCEEDED =
              T.let(
                :succeeded,
                Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol
              )
            FAILED =
              T.let(
                :failed,
                Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol
              )
            CANCELLED =
              T.let(
                :cancelled,
                Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Missions::MissionRunData::Status::TaggedSymbol
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
