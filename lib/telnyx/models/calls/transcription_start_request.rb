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
        #   @return [Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineXaiConfig, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::DeepgramNova2Config, Telnyx::Models::Calls::DeepgramNova3Config, nil]
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
        #   @param transcription_engine_config [Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineXaiConfig, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::DeepgramNova2Config, Telnyx::Models::Calls::DeepgramNova3Config]
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

          variant :Speechmatics,
                  -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics }

          variant :A, -> { Telnyx::Calls::TranscriptionEngineAConfig }

          variant :B, -> { Telnyx::Calls::TranscriptionEngineBConfig }

          variant :"deepgram/nova-2", -> { Telnyx::Calls::DeepgramNova2Config }

          variant :"deepgram/nova-3", -> { Telnyx::Calls::DeepgramNova3Config }

          class Speechmatics < Telnyx::Internal::Type::BaseModel
            # @!attribute interim_results
            #   Whether to send also interim results. If set to false, only final results will
            #   be sent.
            #
            #   @return [Boolean, nil]
            optional :interim_results, Telnyx::Internal::Type::Boolean

            # @!attribute language
            #   Language to use for speech recognition
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language, nil]
            optional :language,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language }

            # @!attribute transcription_engine
            #   Engine identifier for Speechmatics transcription service
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine, nil]
            optional :transcription_engine,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine }

            # @!attribute transcription_model
            #   The model to use for transcription.
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel, nil]
            optional :transcription_model,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel }

            # @!method initialize(interim_results: nil, language: nil, transcription_engine: nil, transcription_model: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics}
            #   for more details.
            #
            #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
            #
            #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::Language] Language to use for speech recognition
            #
            #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionEngine] Engine identifier for Speechmatics transcription service
            #
            #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics::TranscriptionModel] The model to use for transcription.

            # Language to use for speech recognition
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics#language
            module Language
              extend Telnyx::Internal::Type::Enum

              EN = :en
              BA = :ba
              EU = :eu
              GL = :gl
              GA = :ga
              MT = :mt
              MN = :mn
              SW = :sw
              UG = :ug
              CY = :cy
              AR_EN = :ar_en
              CMN_EN = :cmn_en
              EN_MS = :en_ms
              EN_TA = :en_ta
              TL = :tl
              ES_BILINGUAL_EN = :"es-bilingual-en"
              CMN_EN_MS_TA = :cmn_en_ms_ta

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Engine identifier for Speechmatics transcription service
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics#transcription_engine
            module TranscriptionEngine
              extend Telnyx::Internal::Type::Enum

              SPEECHMATICS = :Speechmatics

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The model to use for transcription.
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics#transcription_model
            module TranscriptionModel
              extend Telnyx::Internal::Type::Enum

              SPEECHMATICS_STANDARD = :"speechmatics/standard"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineXaiConfig, Telnyx::Models::Calls::TranscriptionEngineAssemblyaiConfig, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Speechmatics, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::DeepgramNova2Config, Telnyx::Models::Calls::DeepgramNova3Config)]
        end
      end
    end
  end
end
