# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # Union type for different scheduled event response types
        #
        # @see Telnyx::Resources::AI::Assistants::ScheduledEvents#create
        module ScheduledEventResponse
          extend Telnyx::Internal::Type::Union

          variant -> { Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse }

          variant -> { Telnyx::AI::Assistants::ScheduledSMSEventResponse }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse, Telnyx::Models::AI::Assistants::ScheduledSMSEventResponse)]
        end
      end
    end
  end
end
