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
          T.nilable(
            Telnyx::ConversationRelayInterruptionSettings::Interruptible::OrSymbol
          )
        )
      end
      attr_reader :interruptible

      sig do
        params(
          interruptible:
            Telnyx::ConversationRelayInterruptionSettings::Interruptible::OrSymbol
        ).void
      end
      attr_writer :interruptible

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      sig do
        returns(
          T.nilable(
            Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::OrSymbol
          )
        )
      end
      attr_reader :interruptible_greeting

      sig do
        params(
          interruptible_greeting:
            Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::OrSymbol
        ).void
      end
      attr_writer :interruptible_greeting

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      sig do
        returns(
          T.nilable(
            Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::OrSymbol
          )
        )
      end
      attr_reader :welcome_greeting_interruptible

      sig do
        params(
          welcome_greeting_interruptible:
            Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::OrSymbol
        ).void
      end
      attr_writer :welcome_greeting_interruptible

      # Settings for handling caller interruptions during Conversation Relay speech.
      sig do
        params(
          enable: T::Boolean,
          interruptible:
            Telnyx::ConversationRelayInterruptionSettings::Interruptible::OrSymbol,
          interruptible_greeting:
            Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::OrSymbol,
          welcome_greeting_interruptible:
            Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::OrSymbol
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
              Telnyx::ConversationRelayInterruptionSettings::Interruptible::OrSymbol,
            interruptible_greeting:
              Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::OrSymbol,
            welcome_greeting_interruptible:
              Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::OrSymbol
          }
        )
      end
      def to_hash
      end

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      module Interruptible
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::ConversationRelayInterruptionSettings::Interruptible
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(
            :none,
            Telnyx::ConversationRelayInterruptionSettings::Interruptible::TaggedSymbol
          )
        ANY =
          T.let(
            :any,
            Telnyx::ConversationRelayInterruptionSettings::Interruptible::TaggedSymbol
          )
        SPEECH =
          T.let(
            :speech,
            Telnyx::ConversationRelayInterruptionSettings::Interruptible::TaggedSymbol
          )
        DTMF =
          T.let(
            :dtmf,
            Telnyx::ConversationRelayInterruptionSettings::Interruptible::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ConversationRelayInterruptionSettings::Interruptible::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      module InterruptibleGreeting
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(
            :none,
            Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::TaggedSymbol
          )
        ANY =
          T.let(
            :any,
            Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::TaggedSymbol
          )
        SPEECH =
          T.let(
            :speech,
            Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::TaggedSymbol
          )
        DTMF =
          T.let(
            :dtmf,
            Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      module WelcomeGreetingInterruptible
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NONE =
          T.let(
            :none,
            Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
          )
        ANY =
          T.let(
            :any,
            Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
          )
        SPEECH =
          T.let(
            :speech,
            Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
          )
        DTMF =
          T.let(
            :dtmf,
            Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
