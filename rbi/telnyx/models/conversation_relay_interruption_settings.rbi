# typed: strong

module Telnyx
  module Models
    class ConversationRelayInterruptionSettings < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::ConversationRelayInterruptionSettings,
            Telnyx::Internal::AnyHash
          )
        end

      # Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is
      # equivalent to `interruptible=none`.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :enable

      sig { params(enable: T::Boolean).void }
      attr_writer :enable

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      sig do
        returns(
          T.nilable(Telnyx::Calls::ConversationRelayInterruptible::OrSymbol)
        )
      end
      attr_reader :interruptible

      sig do
        params(
          interruptible: Telnyx::Calls::ConversationRelayInterruptible::OrSymbol
        ).void
      end
      attr_writer :interruptible

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      sig do
        returns(
          T.nilable(Telnyx::Calls::ConversationRelayInterruptible::OrSymbol)
        )
      end
      attr_reader :interruptible_greeting

      sig do
        params(
          interruptible_greeting:
            Telnyx::Calls::ConversationRelayInterruptible::OrSymbol
        ).void
      end
      attr_writer :interruptible_greeting

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      sig do
        returns(
          T.nilable(Telnyx::Calls::ConversationRelayInterruptible::OrSymbol)
        )
      end
      attr_reader :welcome_greeting_interruptible

      sig do
        params(
          welcome_greeting_interruptible:
            Telnyx::Calls::ConversationRelayInterruptible::OrSymbol
        ).void
      end
      attr_writer :welcome_greeting_interruptible

      # Settings for handling caller interruptions during Conversation Relay speech.
      sig do
        params(
          enable: T::Boolean,
          interruptible:
            Telnyx::Calls::ConversationRelayInterruptible::OrSymbol,
          interruptible_greeting:
            Telnyx::Calls::ConversationRelayInterruptible::OrSymbol,
          welcome_greeting_interruptible:
            Telnyx::Calls::ConversationRelayInterruptible::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is
        # equivalent to `interruptible=none`.
        enable: nil,
        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        interruptible: nil,
        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        interruptible_greeting: nil,
        # Controls when caller input can interrupt assistant speech. `any` allows speech
        # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
        # only; `dtmf` allows DTMF only.
        welcome_greeting_interruptible: nil
      )
      end

      sig do
        override.returns(
          {
            enable: T::Boolean,
            interruptible:
              Telnyx::Calls::ConversationRelayInterruptible::OrSymbol,
            interruptible_greeting:
              Telnyx::Calls::ConversationRelayInterruptible::OrSymbol,
            welcome_greeting_interruptible:
              Telnyx::Calls::ConversationRelayInterruptible::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
