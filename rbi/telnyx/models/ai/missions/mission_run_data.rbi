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

          sig { returns(Telnyx::AI::Missions::RunStatus::TaggedSymbol) }
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
              status: Telnyx::AI::Missions::RunStatus::OrSymbol,
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
                status: Telnyx::AI::Missions::RunStatus::TaggedSymbol,
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
        end
      end
    end
  end
end
