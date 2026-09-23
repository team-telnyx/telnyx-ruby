# typed: strong

module Telnyx
  module Models
    module AI
      module OpenAI
        class FunctionDefinition < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::OpenAI::FunctionDefinition,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :name

          sig { returns(T.nilable(String)) }
          attr_reader :description

          sig { params(description: String).void }
          attr_writer :description

          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :parameters

          sig { params(parameters: T::Hash[Symbol, T.anything]).void }
          attr_writer :parameters

          sig do
            params(
              name: String,
              description: String,
              parameters: T::Hash[Symbol, T.anything]
            ).returns(T.attached_class)
          end
          def self.new(name:, description: nil, parameters: nil)
          end

          sig do
            override.returns(
              {
                name: String,
                description: String,
                parameters: T::Hash[Symbol, T.anything]
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
