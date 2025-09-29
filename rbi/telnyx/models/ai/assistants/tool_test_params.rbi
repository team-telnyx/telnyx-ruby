# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        class ToolTestParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Assistants::ToolTestParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :assistant_id

          # Key-value arguments to use for the webhook test
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :arguments

          sig { params(arguments: T::Hash[Symbol, T.anything]).void }
          attr_writer :arguments

          # Key-value dynamic variables to use for the webhook test
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :dynamic_variables

          sig { params(dynamic_variables: T::Hash[Symbol, T.anything]).void }
          attr_writer :dynamic_variables

          sig do
            params(
              assistant_id: String,
              arguments: T::Hash[Symbol, T.anything],
              dynamic_variables: T::Hash[Symbol, T.anything],
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            assistant_id:,
            # Key-value arguments to use for the webhook test
            arguments: nil,
            # Key-value dynamic variables to use for the webhook test
            dynamic_variables: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                assistant_id: String,
                arguments: T::Hash[Symbol, T.anything],
                dynamic_variables: T::Hash[Symbol, T.anything],
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
