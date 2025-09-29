# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module ConversationChannelType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::Assistants::ConversationChannelType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHONE_CALL =
            T.let(
              :phone_call,
              Telnyx::AI::Assistants::ConversationChannelType::TaggedSymbol
            )
          SMS_CHAT =
            T.let(
              :sms_chat,
              Telnyx::AI::Assistants::ConversationChannelType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::Assistants::ConversationChannelType::TaggedSymbol
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
