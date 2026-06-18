# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class EventData < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Missions::Runs::EventData,
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

            sig { returns(Telnyx::AI::Missions::Runs::EventType::TaggedSymbol) }
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
                type: Telnyx::AI::Missions::Runs::EventType::OrSymbol,
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
                  type: Telnyx::AI::Missions::Runs::EventType::TaggedSymbol,
                  agent_id: String,
                  idempotency_key: String,
                  payload: T::Hash[Symbol, T.anything],
                  step_id: String
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
