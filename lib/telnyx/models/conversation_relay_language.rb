# frozen_string_literal: true

module Telnyx
  module Models
    class ConversationRelayLanguage < Telnyx::Internal::Type::BaseModel
      # @!attribute language
      #   BCP 47 language tag for this language configuration.
      #
      #   @return [String]
      required :language, String

      # @!attribute speech_model
      #   Conversation Relay speech model. Prefer
      #   `transcription_engine_config.transcription_model` when configuring
      #   speech-to-text.
      #
      #   @return [String, nil]
      optional :speech_model, String

      # @!attribute transcription_engine
      #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
      #   `Telnyx` are supported for backward compatibility. When provided in a
      #   Conversation Relay language entry, Telnyx derives `transcription_provider` and
      #   `speech_model` for that language.
      #
      #   @return [Symbol, Telnyx::Models::ConversationRelayLanguage::TranscriptionEngine, nil]
      optional :transcription_engine, enum: -> { Telnyx::ConversationRelayLanguage::TranscriptionEngine }

      # @!attribute transcription_engine_config
      #   Engine-specific transcription settings for Conversation Relay. This accepts the
      #   same provider-specific options used by the Call Transcription Start command,
      #   such as `transcription_model`, without requiring the engine discriminator to be
      #   repeated inside this object.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :transcription_engine_config, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!attribute transcription_provider
      #   Conversation Relay transcription provider name. Prefer `transcription_engine`
      #   when configuring speech-to-text.
      #
      #   @return [String, nil]
      optional :transcription_provider, String

      # @!attribute tts_provider
      #   Text-to-speech provider for this language. If omitted and `voice` is provided,
      #   Telnyx derives the provider from the voice identifier.
      #
      #   @return [String, nil]
      optional :tts_provider, String

      # @!attribute voice
      #   Voice identifier for this language.
      #
      #   @return [String, nil]
      optional :voice, String

      # @!attribute voice_settings
      #   The settings associated with the voice selected
      #
      #   @return [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::InworldVoiceSettings, Telnyx::Models::XaiVoiceSettings, nil]
      optional :voice_settings, union: -> { Telnyx::ConversationRelayLanguage::VoiceSettings }

      # @!method initialize(language:, speech_model: nil, transcription_engine: nil, transcription_engine_config: nil, transcription_provider: nil, tts_provider: nil, voice: nil, voice_settings: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::ConversationRelayLanguage} for more details.
      #
      #   Language-specific TTS and transcription settings for Conversation Relay.
      #
      #   @param language [String] BCP 47 language tag for this language configuration.
      #
      #   @param speech_model [String] Conversation Relay speech model. Prefer `transcription_engine_config.transcripti
      #
      #   @param transcription_engine [Symbol, Telnyx::Models::ConversationRelayLanguage::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
      #
      #   @param transcription_engine_config [Hash{Symbol=>Object}] Engine-specific transcription settings for Conversation Relay. This accepts the
      #
      #   @param transcription_provider [String] Conversation Relay transcription provider name. Prefer `transcription_engine` wh
      #
      #   @param tts_provider [String] Text-to-speech provider for this language. If omitted and `voice` is provided, T
      #
      #   @param voice [String] Voice identifier for this language.
      #
      #   @param voice_settings [Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::InworldVoiceSettings, Telnyx::Models::XaiVoiceSettings] The settings associated with the voice selected

      # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
      # `Telnyx` are supported for backward compatibility. When provided in a
      # Conversation Relay language entry, Telnyx derives `transcription_provider` and
      # `speech_model` for that language.
      #
      # @see Telnyx::Models::ConversationRelayLanguage#transcription_engine
      module TranscriptionEngine
        extend Telnyx::Internal::Type::Enum

        GOOGLE = :Google
        TELNYX = :Telnyx
        DEEPGRAM = :Deepgram
        AZURE = :Azure
        X_AI = :xAI
        ASSEMBLY_AI = :AssemblyAI
        SPEECHMATICS = :Speechmatics
        SONIOX = :Soniox
        A = :A
        B = :B

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # The settings associated with the voice selected
      #
      # @see Telnyx::Models::ConversationRelayLanguage#voice_settings
      module VoiceSettings
        extend Telnyx::Internal::Type::Union

        discriminator :type

        variant :elevenlabs, -> { Telnyx::Calls::ElevenLabsVoiceSettings }

        variant :telnyx, -> { Telnyx::Calls::TelnyxVoiceSettings }

        variant :aws, -> { Telnyx::Calls::AwsVoiceSettings }

        variant :minimax, -> { Telnyx::MinimaxVoiceSettings }

        variant :azure, -> { Telnyx::AzureVoiceSettings }

        variant :rime, -> { Telnyx::RimeVoiceSettings }

        variant :resemble, -> { Telnyx::ResembleVoiceSettings }

        variant :inworld, -> { Telnyx::InworldVoiceSettings }

        variant :xai, -> { Telnyx::XaiVoiceSettings }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Calls::ElevenLabsVoiceSettings, Telnyx::Models::Calls::TelnyxVoiceSettings, Telnyx::Models::Calls::AwsVoiceSettings, Telnyx::Models::MinimaxVoiceSettings, Telnyx::Models::AzureVoiceSettings, Telnyx::Models::RimeVoiceSettings, Telnyx::Models::ResembleVoiceSettings, Telnyx::Models::InworldVoiceSettings, Telnyx::Models::XaiVoiceSettings)]
      end
    end
  end
end
