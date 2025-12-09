# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Assistants
        # @see Telnyx::Resources::AI::Assistants::ScheduledEvents#list
        module ScheduledEventListResponse
          extend Telnyx::Internal::Type::Union

          discriminator :telnyx_conversation_channel

          variant -> { Telnyx::AI::Assistants::ScheduledPhoneCallEventResponse }

          variant -> { Telnyx::AI::Assistants::ScheduledSMSEventResponse }

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::Assistants::ScheduledPhoneCallEventResponse, Telnyx::Models::AI::Assistants::ScheduledSMSEventResponse)]
        end
      end
    end
  end
end
