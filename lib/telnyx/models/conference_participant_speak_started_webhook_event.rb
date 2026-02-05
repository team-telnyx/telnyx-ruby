# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceParticipantSpeakStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipantSpeakStarted, nil]
      optional :data, -> { Telnyx::ConferenceParticipantSpeakStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipantSpeakStarted]
    end
  end
end
