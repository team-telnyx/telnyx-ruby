# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class EventsListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::AI::Missions::Runs::EventData>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::Missions::Runs::EventData] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
        required :meta, -> { Telnyx::AI::Assistants::Tests::TestSuites::Meta }

        # @!method initialize(data:, meta:)
        #   @param data [Array<Telnyx::Models::AI::Missions::Runs::EventData>]
        #   @param meta [Telnyx::Models::AI::Assistants::Tests::TestSuites::Meta]
      end
    end
  end
end
