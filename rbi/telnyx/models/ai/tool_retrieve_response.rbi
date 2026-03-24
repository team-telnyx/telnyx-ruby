# typed: strong

module Telnyx
  module Models
    module AI
      class ToolRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::ToolRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Hash[Symbol, T.anything]) }
        attr_accessor :tool_definition

        sig { returns(String) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :created_at

        sig { params(created_at: String).void }
        attr_writer :created_at

        sig { returns(T.nilable(String)) }
        attr_reader :display_name

        sig { params(display_name: String).void }
        attr_writer :display_name

        sig { returns(T.nilable(Integer)) }
        attr_reader :timeout_ms

        sig { params(timeout_ms: Integer).void }
        attr_writer :timeout_ms

        sig do
          params(
            id: String,
            tool_definition: T::Hash[Symbol, T.anything],
            type: String,
            created_at: String,
            display_name: String,
            timeout_ms: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          tool_definition:,
          type:,
          created_at: nil,
          display_name: nil,
          timeout_ms: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              tool_definition: T::Hash[Symbol, T.anything],
              type: String,
              created_at: String,
              display_name: String,
              timeout_ms: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
