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
        #   @return [::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram, ::Telnyx::Models::Calls::TranscriptionEngineAConfig, ::Telnyx::Models::Calls::TranscriptionEngineBConfig, nil]
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
        #   @param transcription_engine_config [::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram, ::Telnyx::Models::Calls::TranscriptionEngineAConfig, ::Telnyx::Models::Calls::TranscriptionEngineBConfig]
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

          variant :Deepgram, -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram }

          variant :A, -> { ::Telnyx::Calls::TranscriptionEngineAConfig }

          variant :B, -> { ::Telnyx::Calls::TranscriptionEngineBConfig }

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
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::Language, nil]
            optional :language,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::Language }

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
            #   @param language [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::Language] Language to use for speech recognition
            #
            #   @param transcription_engine [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionEngine] Engine identifier for Telnyx transcription service
            #
            #   @param transcription_model [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx::TranscriptionModel] The model to use for transcription.

            # Language to use for speech recognition
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx#language
            module Language
              extend ::Telnyx::Internal::Type::Enum

              EN = :en
              ZH = :zh
              DE = :de
              ES = :es
              RU = :ru
              KO = :ko
              FR = :fr
              JA = :ja
              PT = :pt
              TR = :tr
              PL = :pl
              CA = :ca
              NL = :nl
              AR = :ar
              SV = :sv
              IT = :it
              ID = :id
              HI = :hi
              FI = :fi
              VI = :vi
              HE = :he
              UK = :uk
              EL = :el
              MS = :ms
              CS = :cs
              RO = :ro
              DA = :da
              HU = :hu
              TA = :ta
              NO = :no
              TH = :th
              UR = :ur
              HR = :hr
              BG = :bg
              LT = :lt
              LA = :la
              MI = :mi
              ML = :ml
              CY = :cy
              SK = :sk
              TE = :te
              FA = :fa
              LV = :lv
              BN = :bn
              SR = :sr
              AZ = :az
              SL = :sl
              KN = :kn
              ET = :et
              MK = :mk
              BR = :br
              EU = :eu
              IS = :is
              HY = :hy
              NE = :ne
              MN = :mn
              BS = :bs
              KK = :kk
              SQ = :sq
              SW = :sw
              GL = :gl
              MR = :mr
              PA = :pa
              SI = :si
              KM = :km
              SN = :sn
              YO = :yo
              SO = :so
              AF = :af
              OC = :oc
              KA = :ka
              BE = :be
              TG = :tg
              SD = :sd
              GU = :gu
              AM = :am
              YI = :yi
              LO = :lo
              UZ = :uz
              FO = :fo
              HT = :ht
              PS = :ps
              TK = :tk
              NN = :nn
              MT = :mt
              SA = :sa
              LB = :lb
              MY = :my
              BO = :bo
              TL = :tl
              MG = :mg
              AS = :as
              TT = :tt
              HAW = :haw
              LN = :ln
              HA = :ha
              BA = :ba
              JW = :jw
              SU = :su
              AUTO_DETECT = :auto_detect

              # @!method self.values
              #   @return [Array<Symbol>]
            end

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

          class Deepgram < ::Telnyx::Internal::Type::BaseModel
            # @!attribute transcription_engine
            #   Engine identifier for Deepgram transcription service
            #
            #   @return [Symbol, :Deepgram]
            required :transcription_engine, const: :Deepgram

            # @!attribute transcription_model
            #   The model to use for transcription.
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel]
            required :transcription_model,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel }

            # @!attribute language
            #   Language to use for speech recognition. Available languages depend on the
            #   selected model.
            #
            #   @return [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language, nil]
            optional :language,
                     enum: -> { ::Telnyx::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language }

            # @!method initialize(transcription_model:, language: nil, transcription_engine: :Deepgram)
            #   Some parameter documentations has been truncated, see
            #   {::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram}
            #   for more details.
            #
            #   @param transcription_model [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::TranscriptionModel] The model to use for transcription.
            #
            #   @param language [Symbol, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram::Language] Language to use for speech recognition. Available languages depend on the select
            #
            #   @param transcription_engine [Symbol, :Deepgram] Engine identifier for Deepgram transcription service

            # The model to use for transcription.
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram#transcription_model
            module TranscriptionModel
              extend ::Telnyx::Internal::Type::Enum

              DEEPGRAM_NOVA_2 = :"deepgram/nova-2"
              DEEPGRAM_NOVA_3 = :"deepgram/nova-3"

              # @!method self.values
              #   @return [Array<Symbol>]
            end

            # Language to use for speech recognition. Available languages depend on the
            # selected model.
            #
            # @see Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram#language
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

          # @!method self.variants
          #   @return [Array(::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Google, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Telnyx, ::Telnyx::Models::Calls::TranscriptionStartRequest::TranscriptionEngineConfig::Deepgram, Telnyx::Models::Calls::TranscriptionEngineAConfig, Telnyx::Models::Calls::TranscriptionEngineBConfig)]
        end
      end
    end
  end
end
