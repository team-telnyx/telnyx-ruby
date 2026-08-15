# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      # @see Telnyx::Resources::MeetingSessions::Artifacts#list
      class ArtifactListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::MeetingSessions::MeetingSessionArtifact>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::MeetingSessions::MeetingSessionArtifact] }

        # @!method initialize(data:)
        #   @param data [Array<Telnyx::Models::MeetingSessions::MeetingSessionArtifact>]
      end
    end
  end
end
