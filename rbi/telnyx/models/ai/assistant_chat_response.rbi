# typed: strong

module Telnyx
  module Models
    module AI
      class AssistantChatResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AI::AssistantChatResponse,
              Telnyx::Internal::AnyHash
            )
          end

        # The assistant's generated response based on the input message and context.
        sig { returns(String) }
        attr_accessor :content

        sig { params(content: String).returns(T.attached_class) }
        def self.new(
          # The assistant's generated response based on the input message and context.
          content:
        )
        end

        sig { override.returns({ content: String }) }
        def to_hash
        end
      end
    end
  end
end
