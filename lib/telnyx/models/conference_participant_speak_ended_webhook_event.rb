# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceParticipantSpeakEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipantSpeakEnded, nil]
      optional :data, -> { Telnyx::ConferenceParticipantSpeakEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipantSpeakEnded]
    end
  end
end
