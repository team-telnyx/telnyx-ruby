# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::TelnyxAgents#link
          class TelnyxAgentLinkResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Telnyx::Models::AI::Missions::Runs::TelnyxAgentData]
            required :data, -> { Telnyx::AI::Missions::Runs::TelnyxAgentData }

            # @!method initialize(data:)
            #   @param data [Telnyx::Models::AI::Missions::Runs::TelnyxAgentData]
          end
        end
      end
    end
  end
end
