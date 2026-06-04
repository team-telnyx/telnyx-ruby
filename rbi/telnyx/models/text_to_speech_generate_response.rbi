# typed: strong

module Telnyx
  module Models
    class TextToSpeechGenerateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::TextToSpeechGenerateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Base64-encoded audio data.
      sig { returns(T.nilable(String)) }
      attr_reader :base64_audio

      sig { params(base64_audio: String).void }
      attr_writer :base64_audio

      # Response when `output_type` is `base64_output`.
      sig { params(base64_audio: String).returns(T.attached_class) }
      def self.new(
        # Base64-encoded audio data.
        base64_audio: nil
      )
      end

      sig { override.returns({ base64_audio: String }) }
      def to_hash
      end
    end
  end
end
