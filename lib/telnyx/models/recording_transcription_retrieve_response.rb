# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RecordingTranscriptions#retrieve
    class RecordingTranscriptionRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::RecordingTranscription, nil]
      optional :data, -> { Telnyx::RecordingTranscription }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::RecordingTranscription]
    end
  end
end
