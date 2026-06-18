# typed: strong

module Telnyx
  module Models
    module AI
      class MissionUpdateMissionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::MissionUpdateMissionParams,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :mission_id

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig { returns(T.nilable(Telnyx::AI::ExecutionMode::OrSymbol)) }
        attr_reader :execution_mode

        sig { params(execution_mode: Telnyx::AI::ExecutionMode::OrSymbol).void }
        attr_writer :execution_mode

        sig { returns(T.nilable(String)) }
        attr_reader :instructions

        sig { params(instructions: String).void }
        attr_writer :instructions

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            mission_id: String,
            description: String,
            execution_mode: Telnyx::AI::ExecutionMode::OrSymbol,
            instructions: String,
            metadata: T::Hash[Symbol, T.anything],
            model: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          mission_id:,
          description: nil,
          execution_mode: nil,
          instructions: nil,
          metadata: nil,
          model: nil,
          name: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              mission_id: String,
              description: String,
              execution_mode: Telnyx::AI::ExecutionMode::OrSymbol,
              instructions: String,
              metadata: T::Hash[Symbol, T.anything],
              model: String,
              name: String,
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
