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

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          returns(
            T.nilable(
              Telnyx::AI::MissionUpdateMissionParams::ExecutionMode::OrSymbol
            )
          )
        end
        attr_reader :execution_mode

        sig do
          params(
            execution_mode:
              Telnyx::AI::MissionUpdateMissionParams::ExecutionMode::OrSymbol
          ).void
        end
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
            description: String,
            execution_mode:
              Telnyx::AI::MissionUpdateMissionParams::ExecutionMode::OrSymbol,
            instructions: String,
            metadata: T::Hash[Symbol, T.anything],
            model: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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
              description: String,
              execution_mode:
                Telnyx::AI::MissionUpdateMissionParams::ExecutionMode::OrSymbol,
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

        module ExecutionMode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::AI::MissionUpdateMissionParams::ExecutionMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXTERNAL =
            T.let(
              :external,
              Telnyx::AI::MissionUpdateMissionParams::ExecutionMode::TaggedSymbol
            )
          MANAGED =
            T.let(
              :managed,
              Telnyx::AI::MissionUpdateMissionParams::ExecutionMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::MissionUpdateMissionParams::ExecutionMode::TaggedSymbol
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
