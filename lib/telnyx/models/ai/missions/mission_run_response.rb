# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Missions
        # @see Telnyx::Resources::AI::Missions::Runs#create
        class MissionRunResponse < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::AI::Missions::MissionRunData]
          required :data, -> { Telnyx::AI::Missions::MissionRunData }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::AI::Missions::MissionRunData]
        end
      end

      MissionRunResponse = Missions::MissionRunResponse
    end
  end
end
