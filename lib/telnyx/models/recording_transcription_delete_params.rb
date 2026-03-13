# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::RecordingTranscriptions#delete
    class RecordingTranscriptionDeleteParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute recording_transcription_id
      #
      #   @return [String]
      required :recording_transcription_id, String

      # @!method initialize(recording_transcription_id:, request_options: {})
      #   @param recording_transcription_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
