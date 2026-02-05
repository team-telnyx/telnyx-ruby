# frozen_string_literal: true

module Telnyx
  module Models
    class TranscriptionWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Transcription, nil]
      optional :data, -> { Telnyx::Transcription }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Transcription]
    end
  end
end
