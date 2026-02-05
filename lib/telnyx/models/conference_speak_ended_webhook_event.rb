# frozen_string_literal: true

module Telnyx
  module Models
    class ConferenceSpeakEndedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ConferenceSpeakEnded, nil]
      optional :data, -> { Telnyx::ConferenceSpeakEnded }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ConferenceSpeakEnded]
    end
  end
end
