# typed: strong

module Telnyx
  module Models
    CallControlCommandResultWithConversationID =
      Calls::CallControlCommandResultWithConversationID

    module Calls
      class CallControlCommandResultWithConversationID < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::CallControlCommandResultWithConversationID,
              Telnyx::Internal::AnyHash
            )
          end

        # The ID of the conversation created by the command.
        sig { returns(T.nilable(String)) }
        attr_reader :conversation_id

        sig { params(conversation_id: String).void }
        attr_writer :conversation_id

        sig { returns(T.nilable(String)) }
        attr_reader :result

        sig { params(result: String).void }
        attr_writer :result

        sig do
          params(conversation_id: String, result: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The ID of the conversation created by the command.
          conversation_id: nil,
          result: nil
        )
        end

        sig { override.returns({ conversation_id: String, result: String }) }
        def to_hash
        end
      end
    end
  end
end
