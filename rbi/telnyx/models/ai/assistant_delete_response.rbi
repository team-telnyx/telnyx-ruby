# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantDeleteResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::AssistantDeleteResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :deleted

        sig { returns(String) }
        attr_accessor :object

        # Aligns with the OpenAI API:
        # https://platform.openai.com/docs/api-reference/assistants/deleteAssistant
        sig do
          params(id: String, deleted: T::Boolean, object: String).returns(
            T.attached_class
          )
        end
        def self.new(id:, deleted:, object:)
        end

        sig do
          override.returns({ id: String, deleted: T::Boolean, object: String })
        end
        def to_hash
        end
      end
    end
  end
end
