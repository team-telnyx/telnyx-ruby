# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceSpeakStartedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceSpeakStarted, nil]
      optional :data, -> { Telnyx::ConferenceSpeakStarted }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceSpeakStarted]
    end
  end
end
