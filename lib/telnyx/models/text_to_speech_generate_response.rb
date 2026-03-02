# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#generate
    class TextToSpeechGenerateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute base64_audio
      #   Base64-encoded audio data.
      #
      #   @return [String, nil]
      optional :base64_audio, String

      # @!method initialize(base64_audio: nil)
      #   Response when `output_type` is `base64_output`.
      #
      #   @param base64_audio [String] Base64-encoded audio data.
    end
  end
end
