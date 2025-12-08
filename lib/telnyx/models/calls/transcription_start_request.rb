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
        #   @return [::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure, ::Telnyx::Models::Calls::TranscriptionEngineAConfig, ::Telnyx::Models::Calls::TranscriptionEngineBConfig, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config, nil]
        optional :transcription_engine_config,
                 union: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig }

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
        #   @param transcription_engine_config [::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure, ::Telnyx::Models::Calls::TranscriptionEngineAConfig, ::Telnyx::Models::Calls::TranscriptionEngineBConfig, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config]
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
          extend ::Telnyx::Internal::Type::Union

          discriminator :transcription_engine

          variant :Google, -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google }

          variant :Telnyx, -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx }

          variant :Azure, -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure }

          variant :A, -> { ::Telnyx::Calls::TranscriptionEngineAConfig }

          variant :B, -> { ::Telnyx::Calls::TranscriptionEngineBConfig }

          variant -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config }

          variant -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config }

          class Google < ::Telnyx::Internal::Type::BaseModel
            # @!attribute enable_speaker_diarization
            #   Enables speaker diarization.
            #
            #   @return [Boolean, nil]
            optional :enable_speaker_diarization, ::Telnyx::Internal::Type::Boolean

            # @!attribute hints
            #   Hints to improve transcription accuracy.
            #
            #   @return [Array<String>, nil]
            optional :hints, ::Telnyx::Internal::Type::ArrayOf[String]

            # @!attribute interim_results
            #   Whether to send also interim results. If set to false, only final results will
            #   be sent.
            #
            #   @return [Boolean, nil]
            optional :interim_results, ::Telnyx::Internal::Type::Boolean

            # @!attribute language
            #   Language to use for speech recognition
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::GoogleTranscriptionLanguage, nil]
            optional :language, enum: -> { ::Telnyx::Calls::GoogleTranscriptionLanguage }

            # @!attribute max_speaker_count
            #   Defines maximum number of speakers in the conversation.
            #
            #   @return [Integer, nil]
            optional :max_speaker_count, Integer

            # @!attribute min_speaker_count
            #   Defines minimum number of speakers in the conversation.
            #
            #   @return [Integer, nil]
            optional :min_speaker_count, Integer

            # @!attribute model
            #   The model to use for transcription.
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model, nil]
            optional :model,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model }

            # @!attribute profanity_filter
            #   Enables profanity_filter.
            #
            #   @return [Boolean, nil]
            optional :profanity_filter, ::Telnyx::Internal::Type::Boolean

            # @!attribute speech_context
            #   Speech context to improve transcription accuracy.
            #
            #   @return [Array<::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::SpeechContext>, nil]
            optional :speech_context,
                     -> { ::Telnyx::Internal::Type::ArrayOf[::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::SpeechContext] }

            # @!attribute transcription_engine
            #   Engine identifier for Google transcription service
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine, nil]
            optional :transcription_engine,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine }

            # @!attribute use_enhanced
            #   Enables enhanced transcription, this works for models `phone_call` and `video`.
            #
            #   @return [Boolean, nil]
            optional :use_enhanced, ::Telnyx::Internal::Type::Boolean

            # @!method initialize(enable_speaker_diarization: nil, hints: nil, interim_results: nil, language: nil, max_speaker_count: nil, min_speaker_count: nil, model: nil, profanity_filter: nil, speech_context: nil, transcription_engine: nil, use_enhanced: nil)
            #   Some parameter documentations has been truncated, see
            #   {::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google}
            #   for more details.
            #
            #   @param enable_speaker_diarization [Boolean] Enables speaker diarization.
            #
            #   @param hints [Array<String>] Hints to improve transcription accuracy.
            #
            #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
            #
            #   @param language [Symbol, ::Telnyx::Models::Calls::GoogleTranscriptionLanguage] Language to use for speech recognition
            #
            #   @param max_speaker_count [Integer] Defines maximum number of speakers in the conversation.
            #
            #   @param min_speaker_count [Integer] Defines minimum number of speakers in the conversation.
            #
            #   @param model [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::Model] The model to use for transcription.
            #
            #   @param profanity_filter [Boolean] Enables profanity_filter.
            #
            #   @param speech_context [Array<::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::SpeechContext>] Speech context to improve transcription accuracy.
            #
            #   @param transcription_engine [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google::TranscriptionEngine] Engine identifier for Google transcription service
            #
            #   @param use_enhanced [Boolean] Enables enhanced transcription, this works for models `phone_call` and `video`.

            # The model to use for transcription.
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google#model
            module Model
              extend ::Telnyx::Internal::Type::Enum

              LATEST_LONG = :latest_long
              LATEST_SHORT = :latest_short
              COMMAND_AND_SEARCH = :command_and_search
              PHONE_CALL = :phone_call
              VIDEO = :video
              DEFAULT = :default
              MEDICAL_CONVERSATION = :medical_conversation
              MEDICAL_DICTATION = :medical_dictation

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            class SpeechContext < ::Telnyx::Internal::Type::BaseModel
              # @!attribute boost
              #   Boost factor for the speech context.
              #
              #   @return [Float, nil]
              optional :boost, Float

              # @!attribute phrases
              #
              #   @return [Array<String>, nil]
              optional :phrases, ::Telnyx::Internal::Type::ArrayOf[String]

              # @!method initialize(boost: nil, phrases: nil)
              #   @param boost [Float] Boost factor for the speech context.
              #
              #   @param phrases [Array<String>]
            end

            # Engine identifier for Google transcription service
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google#transcription_engine
            module TranscriptionEngine
              extend ::Telnyx::Internal::Type::Enum

              GOOGLE = :Google

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Telnyx < ::Telnyx::Internal::Type::BaseModel
            # @!attribute language
            #   Language to use for speech recognition
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TelnyxTranscriptionLanguage, nil]
            optional :language, enum: -> { ::Telnyx::Calls::TelnyxTranscriptionLanguage }

            # @!attribute transcription_engine
            #   Engine identifier for Telnyx transcription service
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine, nil]
            optional :transcription_engine,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine }

            # @!attribute transcription_model
            #   The model to use for transcription.
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel, nil]
            optional :transcription_model,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel }

            # @!method initialize(language: nil, transcription_engine: nil, transcription_model: nil)
            #   @param language [Symbol, ::Telnyx::Models::Calls::TelnyxTranscriptionLanguage] Language to use for speech recognition
            #
            #   @param transcription_engine [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine] Engine identifier for Telnyx transcription service
            #
            #   @param transcription_model [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel] The model to use for transcription.

            # Engine identifier for Telnyx transcription service
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx#transcription_engine
            module TranscriptionEngine
              extend ::Telnyx::Internal::Type::Enum

              TELNYX = :Telnyx

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # The model to use for transcription.
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx#transcription_model
            module TranscriptionModel
              extend ::Telnyx::Internal::Type::Enum

              OPENAI_WHISPER_TINY = :"openai/whisper-tiny"
              OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class DeepgramNova2Config < ::Telnyx::Internal::Type::BaseModel
            # @!attribute transcription_engine
            #
            #   @return [Symbol, :Deepgram]
            required :transcription_engine, const: :Deepgram

            # @!attribute transcription_model
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel]
            required :transcription_model,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel }

            # @!attribute keywords_boosting
            #   Keywords and their respective intensifiers (boosting values) to improve
            #   transcription accuracy for specific words or phrases. The intensifier should be
            #   a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
            #
            #   @return [Hash{Symbol=>Float}, nil]
            optional :keywords_boosting, ::Telnyx::Internal::Type::HashOf[Float]

            # @!attribute language
            #   Language to use for speech recognition with nova-2 model
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language, nil]
            optional :language,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language }

            # @!method initialize(transcription_model:, keywords_boosting: nil, language: nil, transcription_engine: :Deepgram)
            #   Some parameter documentations has been truncated, see
            #   {::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config}
            #   for more details.
            #
            #   @param transcription_model [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::TranscriptionModel]
            #
            #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
            #
            #   @param language [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config::Language] Language to use for speech recognition with nova-2 model
            #
            #   @param transcription_engine [Symbol, :Deepgram]

            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config#transcription_model
            module TranscriptionModel
              extend ::Telnyx::Internal::Type::Enum

              DEEPGRAM_NOVA_2 = :"deepgram/nova-2"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Language to use for speech recognition with nova-2 model
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config#language
            module Language
              extend ::Telnyx::Internal::Type::Enum

              BG = :bg
              CA = :ca
              ZH = :zh
              ZH_CN = :"zh-CN"
              ZH_HANS = :"zh-Hans"
              ZH_TW = :"zh-TW"
              ZH_HANT = :"zh-Hant"
              ZH_HK = :"zh-HK"
              CS = :cs
              DA = :da
              DA_DK = :"da-DK"
              NL = :nl
              EN = :en
              EN_US = :"en-US"
              EN_AU = :"en-AU"
              EN_GB = :"en-GB"
              EN_NZ = :"en-NZ"
              EN_IN = :"en-IN"
              ET = :et
              FI = :fi
              NL_BE = :"nl-BE"
              FR = :fr
              FR_CA = :"fr-CA"
              DE = :de
              DE_CH = :"de-CH"
              EL = :el
              HI = :hi
              HU = :hu
              ID = :id
              IT = :it
              JA = :ja
              KO = :ko
              KO_KR = :"ko-KR"
              LV = :lv
              LT = :lt
              MS = :ms
              NO = :no
              PL = :pl
              PT = :pt
              PT_BR = :"pt-BR"
              PT_PT = :"pt-PT"
              RO = :ro
              RU = :ru
              SK = :sk
              ES = :es
              ES_419 = :"es-419"
              SV = :sv
              SV_SE = :"sv-SE"
              TH = :th
              TH_TH = :"th-TH"
              TR = :tr
              UK = :uk
              VI = :vi
              AUTO_DETECT = :auto_detect

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class DeepgramNova3Config < ::Telnyx::Internal::Type::BaseModel
            # @!attribute transcription_engine
            #
            #   @return [Symbol, :Deepgram]
            required :transcription_engine, const: :Deepgram

            # @!attribute transcription_model
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel]
            required :transcription_model,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel }

            # @!attribute keywords_boosting
            #   Keywords and their respective intensifiers (boosting values) to improve
            #   transcription accuracy for specific words or phrases. The intensifier should be
            #   a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
            #
            #   @return [Hash{Symbol=>Float}, nil]
            optional :keywords_boosting, ::Telnyx::Internal::Type::HashOf[Float]

            # @!attribute language
            #   Language to use for speech recognition with nova-3 model
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language, nil]
            optional :language,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language }

            # @!method initialize(transcription_model:, keywords_boosting: nil, language: nil, transcription_engine: :Deepgram)
            #   Some parameter documentations has been truncated, see
            #   {::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config}
            #   for more details.
            #
            #   @param transcription_model [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::TranscriptionModel]
            #
            #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
            #
            #   @param language [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config::Language] Language to use for speech recognition with nova-3 model
            #
            #   @param transcription_engine [Symbol, :Deepgram]

            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config#transcription_model
            module TranscriptionModel
              extend ::Telnyx::Internal::Type::Enum

              DEEPGRAM_NOVA_3 = :"deepgram/nova-3"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Language to use for speech recognition with nova-3 model
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config#language
            module Language
              extend ::Telnyx::Internal::Type::Enum

              EN = :en
              EN_US = :"en-US"
              EN_AU = :"en-AU"
              EN_GB = :"en-GB"
              EN_IN = :"en-IN"
              EN_NZ = :"en-NZ"
              DE = :de
              NL = :nl
              SV = :sv
              SV_SE = :"sv-SE"
              DA = :da
              DA_DK = :"da-DK"
              ES = :es
              ES_419 = :"es-419"
              FR = :fr
              FR_CA = :"fr-CA"
              PT = :pt
              PT_BR = :"pt-BR"
              PT_PT = :"pt-PT"
              AUTO_DETECT = :auto_detect

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          class Azure < ::Telnyx::Internal::Type::BaseModel
            # @!attribute region
            #   Azure region to use for speech recognition
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region]
            required :region,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region }

            # @!attribute transcription_engine
            #   Engine identifier for Azure transcription service
            #
            #   @return [Symbol, :Azure]
            required :transcription_engine, const: :Azure

            # @!attribute api_key_ref
            #   Reference to the API key for authentication. See
            #   [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
            #   for details. The parameter is optional as defaults are available for some
            #   regions.
            #
            #   @return [String, nil]
            optional :api_key_ref, String

            # @!attribute language
            #   Language to use for speech recognition
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language, nil]
            optional :language,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language }

            # @!method initialize(region:, api_key_ref: nil, language: nil, transcription_engine: :Azure)
            #   Some parameter documentations has been truncated, see
            #   {::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure}
            #   for more details.
            #
            #   @param region [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Region] Azure region to use for speech recognition
            #
            #   @param api_key_ref [String] Reference to the API key for authentication. See [integration secrets documentat
            #
            #   @param language [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure::Language] Language to use for speech recognition
            #
            #   @param transcription_engine [Symbol, :Azure] Engine identifier for Azure transcription service

            # Azure region to use for speech recognition
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure#region
            module Region
              extend ::Telnyx::Internal::Type::Enum

              AUSTRALIAEAST = :australiaeast
              CENTRALINDIA = :centralindia
              EASTUS = :eastus
              NORTHCENTRALUS = :northcentralus
              WESTEUROPE = :westeurope
              WESTUS2 = :westus2

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Language to use for speech recognition
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure#language
            module Language
              extend ::Telnyx::Internal::Type::Enum

              AF = :af
              AM = :am
              AR = :ar
              BG = :bg
              BN = :bn
              BS = :bs
              CA = :ca
              CS = :cs
              CY = :cy
              DA = :da
              DE = :de
              EL = :el
              EN = :en
              ES = :es
              ET = :et
              EU = :eu
              FA = :fa
              FI = :fi
              FR = :fr
              GA = :ga
              GL = :gl
              GU = :gu
              HE = :he
              HI = :hi
              HR = :hr
              HU = :hu
              HY = :hy
              ID = :id
              IS = :is
              IT = :it
              JA = :ja
              KA = :ka
              KK = :kk
              KM = :km
              KN = :kn
              KO = :ko
              LO = :lo
              LT = :lt
              LV = :lv
              MK = :mk
              ML = :ml
              MN = :mn
              MR = :mr
              MS = :ms
              MT = :mt
              MY = :my
              NB = :nb
              NE = :ne
              NL = :nl
              PL = :pl
              PS = :ps
              PT = :pt
              RO = :ro
              RU = :ru
              SI = :si
              SK = :sk
              SL = :sl
              SO = :so
              SQ = :sq
              SR = :sr
              SV = :sv
              SW = :sw
              TA = :ta
              TE = :te
              TH = :th
              TR = :tr
              UK = :uk
              UR = :ur
              UZ = :uz
              VI = :vi
              WUU = :wuu
              YUE = :yue
              ZH = :zh
              ZU = :zu
              AUTO = :auto

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # @!method self.variants
          #   @return [Array(::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Azure, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova2Config, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::DeepgramNova3Config)]
        end
      end
    end
  end
end
