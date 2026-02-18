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
        #   @return [Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config, nil]
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
        #   @param transcription_engine_config [Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config]
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

          variant :A, -> { Telnyx::Calls::TranscriptionEngineAConfig }

          variant :B, -> { Telnyx::Calls::TranscriptionEngineBConfig }

          variant -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config }

          variant -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config }

          class DeepgramNova2Config < Telnyx::Internal::Type::BaseModel
            # @!attribute transcription_engine
            #
            #   @return [Symbol, :Deepgram]
            required :transcription_engine, const: :Deepgram

            # @!attribute transcription_model
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel]
            required :transcription_model,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel }

            # @!attribute keywords_boosting
            #   Keywords and their respective intensifiers (boosting values) to improve
            #   transcription accuracy for specific words or phrases. The intensifier should be
            #   a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
            #
            #   @return [Hash{Symbol=>Float}, nil]
            optional :keywords_boosting, Telnyx::Internal::Type::HashOf[Float]

            # @!attribute language
            #   Language to use for speech recognition with nova-2 model
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language, nil]
            optional :language,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language }

            # @!method initialize(transcription_model:, keywords_boosting: nil, language: nil, transcription_engine: :Deepgram)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config}
            #   for more details.
            #
            #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel]
            #
            #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
            #
            #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language] Language to use for speech recognition with nova-2 model
            #
            #   @param transcription_engine [Symbol, :Deepgram]

            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config#transcription_model
            module TranscriptionModel
              extend Telnyx::Internal::Type::Enum

              DEEPGRAM_NOVA_2 = :"deepgram/nova-2"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Language to use for speech recognition with nova-2 model
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config#language
            module Language
              extend Telnyx::Internal::Type::Enum

              BG = :bg
              CA = :ca
              ZH_CN = :"zh-CN"
              ZH_HANS = :"zh-Hans"
              ZH_TW = :"zh-TW"
              ZH_HANT = :"zh-Hant"
              ZH_HK = :"zh-HK"
              CS = :cs
              DA_DK = :"da-DK"
              NL_BE = :"nl-BE"
              EN_US = :"en-US"
              EN_AU = :"en-AU"
              EN_GB = :"en-GB"
              EN_NZ = :"en-NZ"
              EN_IN = :"en-IN"
              ET = :et
              FI = :fi
              FR = :fr
              FR_CA = :"fr-CA"
              DE_CH = :"de-CH"
              EL = :el
              HI = :hi
              HU = :hu
              ID = :id
              IT = :it
              JA = :ja
              KO_KR = :"ko-KR"
              LV = :lv
              LT = :lt
              MS = :ms
              NO = :no
              PL = :pl
              PT_BR = :"pt-BR"
              PT_PT = :"pt-PT"
              RO = :ro
              RU = :ru
              SK = :sk
              ES_419 = :"es-419"
              SV_SE = :"sv-SE"
              TH_TH = :"th-TH"
              TR = :tr
              UK = :uk
              VI = :vi
              AUTO_DETECT = :auto_detect

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class DeepgramNova3Config < Telnyx::Internal::Type::BaseModel
            # @!attribute transcription_engine
            #
            #   @return [Symbol, :Deepgram]
            required :transcription_engine, const: :Deepgram

            # @!attribute transcription_model
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel]
            required :transcription_model,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel }

            # @!attribute keywords_boosting
            #   Keywords and their respective intensifiers (boosting values) to improve
            #   transcription accuracy for specific words or phrases. The intensifier should be
            #   a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
            #
            #   @return [Hash{Symbol=>Float}, nil]
            optional :keywords_boosting, Telnyx::Internal::Type::HashOf[Float]

            # @!attribute language
            #   Language to use for speech recognition with nova-3 model
            #
            #   @return [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language, nil]
            optional :language,
                     enum: -> { Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language }

            # @!method initialize(transcription_model:, keywords_boosting: nil, language: nil, transcription_engine: :Deepgram)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config}
            #   for more details.
            #
            #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel]
            #
            #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
            #
            #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language] Language to use for speech recognition with nova-3 model
            #
            #   @param transcription_engine [Symbol, :Deepgram]

            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config#transcription_model
            module TranscriptionModel
              extend Telnyx::Internal::Type::Enum

              DEEPGRAM_NOVA_3 = :"deepgram/nova-3"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Language to use for speech recognition with nova-3 model
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config#language
            module Language
              extend Telnyx::Internal::Type::Enum

              EN_US = :"en-US"
              EN_AU = :"en-AU"
              EN_GB = :"en-GB"
              EN_IN = :"en-IN"
              EN_NZ = :"en-NZ"
              DE = :de
              NL = :nl
              SV_SE = :"sv-SE"
              DA_DK = :"da-DK"
              ES = :es
              ES_419 = :"es-419"
              FR = :fr
              FR_CA = :"fr-CA"
              PT_BR = :"pt-BR"
              PT_PT = :"pt-PT"
              AUTO_DETECT = :auto_detect

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::Calls::TranscriptionEngineGoogleConfig, Telnyx::Models::Calls::TranscriptionEngineTelnyxConfig, Telnyx::Models::Calls::TranscriptionEngineAzureConfig, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config, Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config)]
        end
      end
    end
  end
end
