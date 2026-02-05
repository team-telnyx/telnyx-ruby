# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceParticipantPlaybackEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipantPlaybackEnded, nil]
      optional :data, -> { Telnyx::ConferenceParticipantPlaybackEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipantPlaybackEnded]
    end
  end
end
