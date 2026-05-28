# frozen_string_literal: true

module Telnyx
  module Models
    class ConversationRelayInterruptionSettings < Telnyx::Internal::Type::BaseModel
      # @!attribute enable
      #   Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is
      #   equivalent to `interruptible=none`.
      #
      #   @return [Boolean, nil]
      optional :enable, Telnyx::Internal::Type::Boolean

      # @!attribute interruptible
      #   Controls when caller input can interrupt assistant speech. `any` allows speech
      #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      #   only; `dtmf` allows DTMF only.
      #
      #   @return [Symbol, Telnyx::Models::ConversationRelayInterruptionSettings::Interruptible, nil]
      optional :interruptible, enum: -> { Telnyx::ConversationRelayInterruptionSettings::Interruptible }

      # @!attribute interruptible_greeting
      #   Controls when caller input can interrupt assistant speech. `any` allows speech
      #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      #   only; `dtmf` allows DTMF only.
      #
      #   @return [Symbol, Telnyx::Models::ConversationRelayInterruptionSettings::InterruptibleGreeting, nil]
      optional :interruptible_greeting,
               enum: -> { Telnyx::ConversationRelayInterruptionSettings::InterruptibleGreeting }

      # @!attribute welcome_greeting_interruptible
      #   Controls when caller input can interrupt assistant speech. `any` allows speech
      #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      #   only; `dtmf` allows DTMF only.
      #
      #   @return [Symbol, Telnyx::Models::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible, nil]
      optional :welcome_greeting_interruptible,
               enum: -> { Telnyx::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible }

      # @!method initialize(enable: nil, interruptible: nil, interruptible_greeting: nil, welcome_greeting_interruptible: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConversationRelayInterruptionSettings} for more details.
      #
      #   Settings for handling caller interruptions during Conversation Relay speech.
      #
      #   @param enable [Boolean] Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is equ
      #
      #   @param interruptible [Symbol, Telnyx::Models::ConversationRelayInterruptionSettings::Interruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
      #
      #   @param interruptible_greeting [Symbol, Telnyx::Models::ConversationRelayInterruptionSettings::InterruptibleGreeting] Controls when caller input can interrupt assistant speech. `any` allows speech o
      #
      #   @param welcome_greeting_interruptible [Symbol, Telnyx::Models::ConversationRelayInterruptionSettings::WelcomeGreetingInterruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      #
      # @see Telnyx::Models::ConversationRelayInterruptionSettings#interruptible
      module Interruptible
        extend Telnyx::Internal::Type::Enum

        NONE = :none
        ANY = :any
        SPEECH = :speech
        DTMF = :dtmf

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      #
      # @see Telnyx::Models::ConversationRelayInterruptionSettings#interruptible_greeting
      module InterruptibleGreeting
        extend Telnyx::Internal::Type::Enum

        NONE = :none
        ANY = :any
        SPEECH = :speech
        DTMF = :dtmf

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      #
      # @see Telnyx::Models::ConversationRelayInterruptionSettings#welcome_greeting_interruptible
      module WelcomeGreetingInterruptible
        extend Telnyx::Internal::Type::Enum

        NONE = :none
        ANY = :any
        SPEECH = :speech
        DTMF = :dtmf

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
