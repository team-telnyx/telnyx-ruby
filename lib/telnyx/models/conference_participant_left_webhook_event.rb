# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceParticipantLeftWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceParticipantLeft, nil]
      optional :data, -> { Telnyx::ConferenceParticipantLeft }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceParticipantLeft]
    end
  end
end
