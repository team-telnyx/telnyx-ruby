# frozen_string_literal: true

module Telnyx
  module Models
    module MeetingSessions
      # @see Telnyx::Resources::MeetingSessions::Artifacts#create
      class MeetingSessionArtifactResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::MeetingSessions::MeetingSessionArtifact]
        required :data, -> { Telnyx::MeetingSessions::MeetingSessionArtifact }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::MeetingSessions::MeetingSessionArtifact]
      end
    end

    MeetingSessionArtifactResponse = MeetingSessions::MeetingSessionArtifactResponse
  end
end
