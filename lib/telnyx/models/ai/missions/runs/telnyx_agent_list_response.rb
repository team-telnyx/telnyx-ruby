# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        module Runs
          # @see Telnyx::Resources::AI::Missions::Runs::TelnyxAgents#list
          class TelnyxAgentListResponse < Telnyx::Internal::Type::BaseModel
            # @!attribute data
            #
            #   @return [Array<Telnyx::Models::AI::Missions::Runs::TelnyxAgentData>]
            required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Missions::Runs::TelnyxAgentData] }

            # @!method initialize(data:)
            #   @param data [Array<Telnyx::Models::AI::Missions::Runs::TelnyxAgentData>]
          end
        end
      end
    end
  end
end
