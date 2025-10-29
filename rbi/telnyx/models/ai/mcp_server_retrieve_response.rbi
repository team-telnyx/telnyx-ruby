# typed: strong

module Telnyx
  module Models
    module AI
      class McpServerRetrieveResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::McpServerRetrieveResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :name

        sig { returns(String) }
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :url

        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :allowed_tools

        sig { returns(T.nilable(String)) }
        attr_accessor :api_key_ref

        sig do
          params(
            id: String,
            created_at: Time,
            name: String,
            type: String,
            url: String,
            allowed_tools: T.nilable(T::Array[String]),
            api_key_ref: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          created_at:,
          name:,
          type:,
          url:,
          allowed_tools: nil,
          api_key_ref: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Time,
              name: String,
              type: String,
              url: String,
              allowed_tools: T.nilable(T::Array[String]),
              api_key_ref: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
