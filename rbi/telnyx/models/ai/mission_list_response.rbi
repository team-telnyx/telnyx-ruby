# typed: strong

module Telnyx
  module Models
    module AI
      class MissionListResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::MissionListResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(Time) }
        attr_accessor :created_at

        sig do
          returns(
            Telnyx::Models::AI::MissionListResponse::ExecutionMode::TaggedSymbol
          )
        end
        attr_accessor :execution_mode

        sig { returns(String) }
        attr_accessor :mission_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(Time) }
        attr_accessor :updated_at

        sig { returns(T.nilable(String)) }
        attr_reader :description

        sig { params(description: String).void }
        attr_writer :description

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
            created_at: Time,
            execution_mode:
              Telnyx::Models::AI::MissionListResponse::ExecutionMode::OrSymbol,
            mission_id: String,
            name: String,
            updated_at: Time,
            description: String,
            instructions: String,
            metadata: T::Hash[Symbol, T.anything],
            model: String
          ).returns(T.attached_class)
        end
        def self.new(
          created_at:,
          execution_mode:,
          mission_id:,
          name:,
          updated_at:,
          description: nil,
          instructions: nil,
          metadata: nil,
          model: nil
        )
        end

        sig do
          override.returns(
            {
              created_at: Time,
              execution_mode:
                Telnyx::Models::AI::MissionListResponse::ExecutionMode::TaggedSymbol,
              mission_id: String,
              name: String,
              updated_at: Time,
              description: String,
              instructions: String,
              metadata: T::Hash[Symbol, T.anything],
              model: String
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
                Telnyx::Models::AI::MissionListResponse::ExecutionMode
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXTERNAL =
            T.let(
              :external,
              Telnyx::Models::AI::MissionListResponse::ExecutionMode::TaggedSymbol
            )
          MANAGED =
            T.let(
              :managed,
              Telnyx::Models::AI::MissionListResponse::ExecutionMode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AI::MissionListResponse::ExecutionMode::TaggedSymbol
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
