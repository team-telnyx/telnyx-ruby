# frozen_string_literal: true

module Telnyx
  module Models
    # Service surface a model is available on. `ai_assistant` is the STT surface
    # configured via Call Control voice-assistant transcription; it covers both
    # live-streaming and non-streaming/batch models (matching the
    # `TranscriptionConfig.model` enum on `call-control` voice assistants).
    module SttServiceType
      extend Telnyx::Internal::Type::Enum

      STREAMING = :streaming
      FILE_BASED = :file_based
      IN_CALL = :in_call
      AI_ASSISTANT = :ai_assistant

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
