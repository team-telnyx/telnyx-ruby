# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # Controls when caller input can interrupt assistant speech. `any` allows speech
      # or DTMF interruptions; `none` disables interruptions; `speech` allows speech
      # only; `dtmf` allows DTMF only.
      module ConversationRelayInterruptible
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
