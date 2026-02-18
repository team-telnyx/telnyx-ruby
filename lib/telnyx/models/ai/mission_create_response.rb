# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Missions#create
      class MissionCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::AI::MissionData]
        required :data, -> { Telnyx::AI::MissionData }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::AI::MissionData]
      end
    end
  end
end
