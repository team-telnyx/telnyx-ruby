# typed: strong

module Telnyx
  module Models
    module Calls
      class ActionGatherUsingAIResponse < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::Calls::ActionGatherUsingAIResponse,
              Telnyx::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.nilable(Telnyx::Calls::CallControlCommandResultWithConversationID)
          )
        end
        attr_reader :data

        sig do
          params(
            data:
              Telnyx::Calls::CallControlCommandResultWithConversationID::OrHash
          ).void
        end
        attr_writer :data

        sig do
          params(
            data:
              Telnyx::Calls::CallControlCommandResultWithConversationID::OrHash
          ).returns(T.attached_class)
        end
        def self.new(data: nil)
        end

        sig do
          override.returns(
            { data: Telnyx::Calls::CallControlCommandResultWithConversationID }
          )
        end
        def to_hash
        end
      end
    end
  end
end
