# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#disable_voice
      class ActionDisableVoiceResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   This object represents a SIM card action. It allows tracking the current status
        #   of an operation that impacts the SIM card.
        #
        #   @return [Telnyx::Models::SimCards::WirelessSimCardAction, nil]
        optional :data, -> { Telnyx::SimCards::WirelessSimCardAction }

        # @!method initialize(data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::ActionDisableVoiceResponse} for more details.
        #
        #   @param data [Telnyx::Models::SimCards::WirelessSimCardAction] This object represents a SIM card action. It allows tracking the current status
      end
    end
  end
end
