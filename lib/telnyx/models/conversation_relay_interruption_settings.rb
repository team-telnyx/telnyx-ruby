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
      #   @return [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible, nil]
      optional :interruptible, enum: -> { Telnyx::Calls::ConversationRelayInterruptible }

      # @!attribute interruptible_greeting
      #   Controls when caller input can interrupt assistant speech. `any` allows speech
      #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      #   only; `dtmf` allows DTMF only.
      #
      #   @return [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible, nil]
      optional :interruptible_greeting, enum: -> { Telnyx::Calls::ConversationRelayInterruptible }

      # @!attribute welcome_greeting_interruptible
      #   Controls when caller input can interrupt assistant speech. `any` allows speech
      #   or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      #   only; `dtmf` allows DTMF only.
      #
      #   @return [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible, nil]
      optional :welcome_greeting_interruptible, enum: -> { Telnyx::Calls::ConversationRelayInterruptible }

      # @!method initialize(enable: nil, interruptible: nil, interruptible_greeting: nil, welcome_greeting_interruptible: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConversationRelayInterruptionSettings} for more details.
      #
      #   Settings for handling caller interruptions during Conversation Relay speech.
      #
      #   @param enable [Boolean] Legacy boolean form. `true` is equivalent to `interruptible=any`; `false` is equ
      #
      #   @param interruptible [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
      #
      #   @param interruptible_greeting [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
      #
      #   @param welcome_greeting_interruptible [Symbol, Telnyx::Models::Calls::ConversationRelayInterruptible] Controls when caller input can interrupt assistant speech. `any` allows speech o
    end
  end
end
