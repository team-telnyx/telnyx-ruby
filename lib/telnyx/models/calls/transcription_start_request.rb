# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionStartRequest < Telnyx::Internal::Type::BaseModel
        # @!attribute client_state
        #   Use this field to add state to every subsequent webhook. It must be a valid
        #   Base-64 encoded string.
        #
        #   @return [String, nil]
        optional :client_state, String

        # @!attribute command_id
        #   Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #   the same `command_id` for the same `call_control_id`.
        #
        #   @return [String, nil]
        optional :command_id, String

        # @!attribute transcription_engine
        #   Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        #   `Telnyx` are supported for backward compatibility.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngine, nil]
        optional :transcription_engine, enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngine }

        # @!attribute transcription_engine_config
        #
        #   @return [Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineXaiConfig, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig, Telnyx::Models::Calls::TranscriptionEngineSonioxConfig, Telnyx::Models::Calls::TranscriptionEngineParakeetConfig, Telnyx::Models::Calls::TranscriptionEngineHumainConfig, Telnyx::Models::Calls::TranscriptionEngineReson8Config, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::DeepgramNova2Config, Telnyx::Models::Calls::DeepgramNova3Config, nil]
        optional :transcription_engine_config,
                 union: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig }

        # @!attribute transcription_tracks
        #   Indicates which leg of the call will be transcribed. Use `inbound` for the leg
        #   that requested the transcription, `outbound` for the other leg, and `both` for
        #   both legs of the call. Will default to `inbound`.
        #
        #   @return [String, nil]
        optional :transcription_tracks, String

        # @!method initialize(client_state: nil, command_id: nil, transcription_engine: nil, transcription_engine_config: nil, transcription_tracks: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionStartRequest} for more details.
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngine] Engine to use for speech recognition. Legacy values `A` - `Google`, `B` - `Telny
        #
        #   @param transcription_engine_config [Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineXaiConfig, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig, Telnyx::Models::Calls::TranscriptionEngineSonioxConfig, Telnyx::Models::Calls::TranscriptionEngineParakeetConfig, Telnyx::Models::Calls::TranscriptionEngineHumainConfig, Telnyx::Models::Calls::TranscriptionEngineReson8Config, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::DeepgramNova2Config, Telnyx::Models::Calls::DeepgramNova3Config]
        #
        #   @param transcription_tracks [String] Indicates which leg of the call will be transcribed. Use `inbound` for the leg t

        # Engine to use for speech recognition. Legacy values `A` - `Google`, `B` -
        # `Telnyx` are supported for backward compatibility.
        #
        # @see Telnyx::Models::Calls::TranscriptionStartRequest#transcription_engine
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
          PARAKEET = :Parakeet
          HUMAIN = :Humain
          RESON8 = :Reson8
          COHERE = :Cohere
          A = :A
          B = :B

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see Telnyx::Models::Calls::TranscriptionStartRequest#transcription_engine_config
        module TranscriptionEngineConfig
          extend Telnyx::Internal::Type::Union

          discriminator :transcription_engine

          variant :Google, -> { Telnyx::Calls::TranscriptionEngineGoogleConfig }

          variant :Telnyx, -> { Telnyx::Calls::TranscriptionEngineTelnyxConfig }

          variant :Azure, -> { Telnyx::Calls::TranscriptionEngineAzureConfig }

          variant :xAI, -> { Telnyx::Calls::TranscriptionEngineXaiConfig }

          variant :AssemblyAI, -> { Telnyx::Calls::TranscriptionEngineAssemblyaiConfig }

          variant :Speechmatics, -> { Telnyx::Calls::TranscriptionEngineSpeechmaticsConfig }

          variant :Soniox, -> { Telnyx::Calls::TranscriptionEngineSonioxConfig }

          variant :Parakeet, -> { Telnyx::Calls::TranscriptionEngineParakeetConfig }

          variant :Humain, -> { Telnyx::Calls::TranscriptionEngineHumainConfig }

          variant :Reson8, -> { Telnyx::Calls::TranscriptionEngineReson8Config }

          variant :Cohere, -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere }

          variant :A, -> { Telnyx::Calls::TranscriptionEngineAConfig }

          variant :B, -> { Telnyx::Calls::TranscriptionEngineBConfig }

          variant :"deepgram/nova-2", -> { Telnyx::Calls::DeepgramNova2Config }

          variant :"deepgram/nova-3", -> { Telnyx::Calls::DeepgramNova3Config }

          class Cohere < Telnyx::Internal::Type::BaseModel
            # @!attribute language
            #   The language of the audio to be transcribed. Unlike other self-hosted models,
            #   Cohere does not auto-detect the language; `auto` is not supported.
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::Language, nil]
            optional :language,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::Language }

            # @!attribute transcription_engine
            #   Engine identifier for Cohere transcription service
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::TranscriptionEngine, nil]
            optional :transcription_engine,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::TranscriptionEngine }

            # @!attribute transcription_model
            #   The model to use for transcription.
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::TranscriptionModel, nil]
            optional :transcription_model,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::TranscriptionModel }

            # @!method initialize(language: nil, transcription_engine: nil, transcription_model: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere}
            #   for more details.
            #
            #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::Language] The language of the audio to be transcribed. Unlike other self-hosted models, Co
            #
            #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::TranscriptionEngine] Engine identifier for Cohere transcription service
            #
            #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere::TranscriptionModel] The model to use for transcription.

            # The language of the audio to be transcribed. Unlike other self-hosted models,
            # Cohere does not auto-detect the language; `auto` is not supported.
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere#language
            module Language
              extend Telnyx::Internal::Type::Enum

              AR = :ar
              EN = :en

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Engine identifier for Cohere transcription service
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere#transcription_engine
            module TranscriptionEngine
              extend Telnyx::Internal::Type::Enum

              COHERE = :Cohere

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The model to use for transcription.
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere#transcription_model
            module TranscriptionModel
              extend Telnyx::Internal::Type::Enum

              COHERE_AR_STT = :"cohere/ar-stt"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineXaiConfig, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig, Telnyx::Models::Calls::TranscriptionEngineSpeechmaticsConfig, Telnyx::Models::Calls::TranscriptionEngineSonioxConfig, Telnyx::Models::Calls::TranscriptionEngineParakeetConfig, Telnyx::Models::Calls::TranscriptionEngineHumainConfig, Telnyx::Models::Calls::TranscriptionEngineReson8Config, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Cohere, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::DeepgramNova2Config, Telnyx::Models::Calls::DeepgramNova3Config)]
        end
      end
    end
  end
end
