# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceParticipantJoinedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipantJoined, nil]
      optional :data, -> { Telnyx::ConferenceParticipantJoined }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipantJoined]
    end
  end
end
