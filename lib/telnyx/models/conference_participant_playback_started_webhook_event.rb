# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceParticipantPlaybackStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipantPlaybackStarted, nil]
      optional :data, -> { Telnyx::ConferenceParticipantPlaybackStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipantPlaybackStarted]
    end
  end
end
