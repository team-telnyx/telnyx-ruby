# typed: strong

module Telnyx
  module Models
    module AI
      module Assistants
        module TelnyxConversationChannel
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::Assistants::TelnyxConversationChannel)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PHONE_CALL =
            T.let(
              :phone_call,
              Telnyx::AI::Assistants::TelnyxConversationChannel::TaggedSymbol
            )
          WEB_CALL =
            T.let(
              :web_call,
              Telnyx::AI::Assistants::TelnyxConversationChannel::TaggedSymbol
            )
          SMS_CHAT =
            T.let(
              :sms_chat,
              Telnyx::AI::Assistants::TelnyxConversationChannel::TaggedSymbol
            )
          WEB_CHAT =
            T.let(
              :web_chat,
              Telnyx::AI::Assistants::TelnyxConversationChannel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::Assistants::TelnyxConversationChannel::TaggedSymbol
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
