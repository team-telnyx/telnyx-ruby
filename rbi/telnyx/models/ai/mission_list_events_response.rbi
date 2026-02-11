# typed: strong

module Telnyx
  module Models
    module AI
      class MissionListEventsResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::MissionListEventsResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :event_id

        sig { returns(String) }
        attr_accessor :run_id

        sig { returns(String) }
        attr_accessor :summary

        sig { returns(Time) }
        attr_accessor :timestamp

        sig do
          returns(
            Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :agent_id

        sig { params(agent_id: String).void }
        attr_writer :agent_id

        sig { returns(T.nilable(String)) }
        attr_reader :idempotency_key

        sig { params(idempotency_key: String).void }
        attr_writer :idempotency_key

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :payload

        sig { params(payload: T::Hash[Symbol, T.anything]).void }
        attr_writer :payload

        sig { returns(T.nilable(String)) }
        attr_reader :step_id

        sig { params(step_id: String).void }
        attr_writer :step_id

        sig do
          params(
            event_id: String,
            run_id: String,
            summary: String,
            timestamp: Time,
            type: Telnyx::Models::AI::MissionListEventsResponse::Type::OrSymbol,
            agent_id: String,
            idempotency_key: String,
            payload: T::Hash[Symbol, T.anything],
            step_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          event_id:,
          run_id:,
          summary:,
          timestamp:,
          type:,
          agent_id: nil,
          idempotency_key: nil,
          payload: nil,
          step_id: nil
        )
        end

        sig do
          override.returns(
            {
              event_id: String,
              run_id: String,
              summary: String,
              timestamp: Time,
              type:
                Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol,
              agent_id: String,
              idempotency_key: String,
              payload: T::Hash[Symbol, T.anything],
              step_id: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Models::AI::MissionListEventsResponse::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATUS_CHANGE =
            T.let(
              :status_change,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )
          STEP_STARTED =
            T.let(
              :step_started,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )
          STEP_COMPLETED =
            T.let(
              :step_completed,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )
          STEP_FAILED =
            T.let(
              :step_failed,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )
          TOOL_CALL =
            T.let(
              :tool_call,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )
          TOOL_RESULT =
            T.let(
              :tool_result,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )
          MESSAGE =
            T.let(
              :message,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )
          ERROR =
            T.let(
              :error,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )
          CUSTOM =
            T.let(
              :custom,
              Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AI::MissionListEventsResponse::Type::TaggedSymbol
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
