# typed: strong

module Telnyx
  module Models
    module AI
      class MissionCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::MissionCreateParams, Telnyx::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

        sig do
          returns(
            T.nilable(Telnyx::AI::MissionCreateParams::ExecutionMode::OrSymbol)
          )
        end
        attr_reader :execution_mode

        sig do
          params(
            execution_mode:
              Telnyx::AI::MissionCreateParams::ExecutionMode::OrSymbol
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

        sig do
          params(
            name: String,
            description: String,
            execution_mode:
              Telnyx::AI::MissionCreateParams::ExecutionMode::OrSymbol,
            instructions: String,
            metadata: T::Hash[Symbol, T.anything],
            model: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          name:,
          description: nil,
          execution_mode: nil,
          instructions: nil,
          metadata: nil,
          model: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              name: String,
              description: String,
              execution_mode:
                Telnyx::AI::MissionCreateParams::ExecutionMode::OrSymbol,
              instructions: String,
              metadata: T::Hash[Symbol, T.anything],
              model: String,
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
              T.all(Symbol, Telnyx::AI::MissionCreateParams::ExecutionMode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXTERNAL =
            T.let(
              :external,
              Telnyx::AI::MissionCreateParams::ExecutionMode::TaggedSymbol
            )
          MANAGED =
            T.let(
              :managed,
              Telnyx::AI::MissionCreateParams::ExecutionMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::MissionCreateParams::ExecutionMode::TaggedSymbol
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
