# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::Events#get_event_details
          class EventGetEventDetailsResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::AI::Missions::Runs::EventData]
            required :data, -> { Telnyx::AI::Missions::Runs::EventData }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Missions::Runs::EventData]
          end
        end
      end
    end
  end
end
