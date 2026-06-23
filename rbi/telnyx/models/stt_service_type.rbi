# typed: strong

module Telnyx
  module Models
    # Service surface a model is available on. `ai_assistant` is the STT surface
    # configured via Call Control voice-assistant transcription; it covers both
    # live-streaming and non-streaming/batch models (matching the
    # `TranscriptionConfig.model` enum on `call-control` voice assistants).
    module SttServiceType
      extend Telnyx::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Telnyx::SttServiceType) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      STREAMING = T.let(:streaming, Telnyx::SttServiceType::TaggedSymbol)
      FILE_BASED = T.let(:file_based, Telnyx::SttServiceType::TaggedSymbol)
      IN_CALL = T.let(:in_call, Telnyx::SttServiceType::TaggedSymbol)
      AI_ASSISTANT = T.let(:ai_assistant, Telnyx::SttServiceType::TaggedSymbol)

      sig { override.returns(T::Array[Telnyx::SttServiceType::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
