# typed: strong

module Telnyx
  module Models
    module Calls
      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      module ConversationRelayInterruptible
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Calls::ConversationRelayInterruptible)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(
            :none,
            Telnyx::Calls::ConversationRelayInterruptible::TaggedSymbol
          )
        ANY =
          T.let(
            :any,
            Telnyx::Calls::ConversationRelayInterruptible::TaggedSymbol
          )
        SPEECH =
          T.let(
            :speech,
            Telnyx::Calls::ConversationRelayInterruptible::TaggedSymbol
          )
        DTMF =
          T.let(
            :dtmf,
            Telnyx::Calls::ConversationRelayInterruptible::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Calls::ConversationRelayInterruptible::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
