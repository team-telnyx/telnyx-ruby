# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#set_public_ip
      class ActionSetPublicIPResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   This object represents a SIM card action. It allows tracking the current status
        #   of an operation that impacts the SIM card.
        #
        #   @return [Telnyx::Models::SimCards::SimCardAction, nil]
        optional :data, -> { Telnyx::SimCards::SimCardAction }

        # @!method initialize(data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::ActionSetPublicIPResponse} for more details.
        #
        #   @param data [Telnyx::Models::SimCards::SimCardAction] This object represents a SIM card action. It allows tracking the current status
      end
    end
  end
end
