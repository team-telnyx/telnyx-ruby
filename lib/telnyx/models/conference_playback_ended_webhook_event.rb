# frozen_string_literal: true

module Telnyx
  module Models
    class ConferencePlaybackEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferencePlaybackEnded, nil]
      optional :data, -> { Telnyx::ConferencePlaybackEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferencePlaybackEnded]
    end
  end
end
