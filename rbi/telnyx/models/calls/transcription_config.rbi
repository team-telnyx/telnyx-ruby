# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::Calls::TranscriptionConfig, Telnyx::Internal::AnyHash)
          end

        # The speech to text model to be used by the voice assistant.
        #
        # - `distil-whisper/distil-large-v2` is lower latency but English-only.
        # - `openai/whisper-large-v3-turbo` is multi-lingual with automatic language
        #   detection but slightly higher latency.
        # - `google` is a multi-lingual option, please describe the language in the
        #   `language` field.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        # The settings associated with speech to text for the voice assistant. This is
        # only relevant if the assistant uses a text-to-text language model. Any assistant
        # using a model with native audio support (e.g. `fixie-ai/ultravox-v0_4`) will
        # ignore this field.
        sig { params(model: String).returns(T.attached_class) }
        def self.new(
          # The speech to text model to be used by the voice assistant.
          #
          # - `distil-whisper/distil-large-v2` is lower latency but English-only.
          # - `openai/whisper-large-v3-turbo` is multi-lingual with automatic language
          #   detection but slightly higher latency.
          # - `google` is a multi-lingual option, please describe the language in the
          #   `language` field.
          model: nil
        )
        end

        sig { override.returns({ model: String }) }
        def to_hash
        end
      end
    end
  end
end
