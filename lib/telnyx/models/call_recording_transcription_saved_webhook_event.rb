# frozen_string_literal: true

module Telnyx
  module Models
    class CallRecordingTranscriptionSavedWebhookEvent < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CallRecordingTranscriptionSaved, nil]
      optional :data, -> { Telnyx::CallRecordingTranscriptionSaved }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CallRecordingTranscriptionSaved]
    end
  end
end
