# typed: strong

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          class EventLogParams < Telnyx::Internal::Type::BaseModel
            extend Telnyx::Internal::Type::RequestParameters::Converter
            include Telnyx::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::Missions::Runs::EventLogParams,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :mission_id

            sig { returns(String) }
            attr_accessor :run_id

            sig { returns(String) }
            attr_accessor :summary

            sig { returns(Telnyx::AI::Missions::Runs::EventType::OrSymbol) }
            attr_accessor :type

            sig { returns(T.nilable(String)) }
            attr_reader :agent_id

            sig { params(agent_id: String).void }
            attr_writer :agent_id

            # Prevents duplicate events on retry
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
                mission_id: String,
                run_id: String,
                summary: String,
                type: Telnyx::AI::Missions::Runs::EventType::OrSymbol,
                agent_id: String,
                idempotency_key: String,
                payload: T::Hash[Symbol, T.anything],
                step_id: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              mission_id:,
              run_id:,
              summary:,
              type:,
              agent_id: nil,
              # Prevents duplicate events on retry
              idempotency_key: nil,
              payload: nil,
              step_id: nil,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  mission_id: String,
                  run_id: String,
                  summary: String,
                  type: Telnyx::AI::Missions::Runs::EventType::OrSymbol,
                  agent_id: String,
                  idempotency_key: String,
                  payload: T::Hash[Symbol, T.anything],
                  step_id: String,
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
