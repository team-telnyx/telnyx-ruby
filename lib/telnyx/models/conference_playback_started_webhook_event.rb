# frozen_string_literal: true

module Telnyx
  module Models
    class ConferencePlaybackStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferencePlaybackStarted, nil]
      optional :data, -> { Telnyx::ConferencePlaybackStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferencePlaybackStarted]
    end
  end
end
