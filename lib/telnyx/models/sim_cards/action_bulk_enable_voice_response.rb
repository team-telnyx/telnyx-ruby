# frozen_string_literal: true

module Telnyx
  module Models
    module SimCards
      # @see Telnyx::Resources::SimCards::Actions#bulk_enable_voice
      class ActionBulkEnableVoiceResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   This object represents a bulk SIM card action. It groups SIM card actions
        #   created through a bulk endpoint under a single resource for further lookup.
        #
        #   @return [Telnyx::Models::SimCards::BulkSimCardAction, nil]
        optional :data, -> { Telnyx::SimCards::BulkSimCardAction }

        # @!method initialize(data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SimCards::ActionBulkEnableVoiceResponse} for more details.
        #
        #   @param data [Telnyx::Models::SimCards::BulkSimCardAction] This object represents a bulk SIM card action. It groups SIM card actions create
      end
    end
  end
end
