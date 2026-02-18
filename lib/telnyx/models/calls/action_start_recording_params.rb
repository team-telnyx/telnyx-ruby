# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # @see Telnyx::Resources::Calls::Actions#start_recording
      class ActionStartRecordingParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute channels
        #   When `dual`, final audio file will be stereo recorded with the first leg on
        #   channel A, and the rest on channel B.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Channels]
        required :channels, enum: -> { Telnyx::Calls::ActionStartRecordingParams::Channels }

        # @!attribute format_
        #   The audio file format used when storing the call recording. Can be either `mp3`
        #   or `wav`.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Format]
        required :format_, enum: -> { Telnyx::Calls::ActionStartRecordingParams::Format }, api_name: :format

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

        # @!attribute custom_file_name
        #   The custom recording file name to be used instead of the default `call_leg_id`.
        #   Telnyx will still add a Unix timestamp suffix.
        #
        #   @return [String, nil]
        optional :custom_file_name, String

        # @!attribute max_length
        #   Defines the maximum length for the recording in seconds. The minimum value is 0.
        #   The maximum value is 14400. The default value is 0 (infinite)
        #
        #   @return [Integer, nil]
        optional :max_length, Integer

        # @!attribute play_beep
        #   If enabled, a beep sound will be played at the start of a recording.
        #
        #   @return [Boolean, nil]
        optional :play_beep, Telnyx::Internal::Type::Boolean

        # @!attribute recording_track
        #   The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        #   If only single track is specified (`inbound`, `outbound`), `channels`
        #   configuration is ignored and it will be recorded as mono (single channel).
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::RecordingTrack, nil]
        optional :recording_track, enum: -> { Telnyx::Calls::ActionStartRecordingParams::RecordingTrack }

        # @!attribute timeout_secs
        #   The number of seconds that Telnyx will wait for the recording to be stopped if
        #   silence is detected. The timer only starts when the speech is detected. Please
        #   note that call transcription is used to detect silence and the related charge
        #   will be applied. The minimum value is 0. The default value is 0 (infinite)
        #
        #   @return [Integer, nil]
        optional :timeout_secs, Integer

        # @!attribute transcription
        #   Enable post recording transcription. The default value is false.
        #
        #   @return [Boolean, nil]
        optional :transcription, Telnyx::Internal::Type::Boolean

        # @!attribute transcription_engine
        #   Engine to use for speech recognition. `A` - `Google`, `B` - `Telnyx`,
        #   `deepgram/nova-3` - `Deepgram Nova-3`. Note: `deepgram/nova-3` supports only
        #   `en` and `en-{Region}` languages.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::ActionStartRecordingParams::TranscriptionEngine }

        # @!attribute transcription_language
        #   Language code for transcription. Note: Not all languages are supported by all
        #   transcription engines (google, telnyx, deepgram). See engine-specific
        #   documentation for supported values.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::TranscriptionLanguage, nil]
        optional :transcription_language,
                 enum: -> { Telnyx::Calls::ActionStartRecordingParams::TranscriptionLanguage }

        # @!attribute transcription_max_speaker_count
        #   Defines maximum number of speakers in the conversation. Applies to `google`
        #   engine only.
        #
        #   @return [Integer, nil]
        optional :transcription_max_speaker_count, Integer

        # @!attribute transcription_min_speaker_count
        #   Defines minimum number of speakers in the conversation. Applies to `google`
        #   engine only.
        #
        #   @return [Integer, nil]
        optional :transcription_min_speaker_count, Integer

        # @!attribute transcription_profanity_filter
        #   Enables profanity_filter. Applies to `google` engine only.
        #
        #   @return [Boolean, nil]
        optional :transcription_profanity_filter, Telnyx::Internal::Type::Boolean

        # @!attribute transcription_speaker_diarization
        #   Enables speaker diarization. Applies to `google` engine only.
        #
        #   @return [Boolean, nil]
        optional :transcription_speaker_diarization, Telnyx::Internal::Type::Boolean

        # @!attribute trim
        #   When set to `trim-silence`, silence will be removed from the beginning and end
        #   of the recording.
        #
        #   @return [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Trim, nil]
        optional :trim, enum: -> { Telnyx::Calls::ActionStartRecordingParams::Trim }

        # @!method initialize(channels:, format_:, client_state: nil, command_id: nil, custom_file_name: nil, max_length: nil, play_beep: nil, recording_track: nil, timeout_secs: nil, transcription: nil, transcription_engine: nil, transcription_language: nil, transcription_max_speaker_count: nil, transcription_min_speaker_count: nil, transcription_profanity_filter: nil, transcription_speaker_diarization: nil, trim: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::ActionStartRecordingParams} for more details.
        #
        #   @param channels [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Channels] When `dual`, final audio file will be stereo recorded with the first leg on chan
        #
        #   @param format_ [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Format] The audio file format used when storing the call recording. Can be either `mp3`
        #
        #   @param client_state [String] Use this field to add state to every subsequent webhook. It must be a valid Base
        #
        #   @param command_id [String] Use this field to avoid duplicate commands. Telnyx will ignore any command with
        #
        #   @param custom_file_name [String] The custom recording file name to be used instead of the default `call_leg_id`.
        #
        #   @param max_length [Integer] Defines the maximum length for the recording in seconds. The minimum value is 0.
        #
        #   @param play_beep [Boolean] If enabled, a beep sound will be played at the start of a recording.
        #
        #   @param recording_track [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::RecordingTrack] The audio track to be recorded. Can be either `both`, `inbound` or `outbound`. I
        #
        #   @param timeout_secs [Integer] The number of seconds that Telnyx will wait for the recording to be stopped if s
        #
        #   @param transcription [Boolean] Enable post recording transcription. The default value is false.
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::TranscriptionEngine] Engine to use for speech recognition. `A` - `Google`, `B` - `Telnyx`, `deepgram/
        #
        #   @param transcription_language [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::TranscriptionLanguage] Language code for transcription. Note: Not all languages are supported by all tr
        #
        #   @param transcription_max_speaker_count [Integer] Defines maximum number of speakers in the conversation. Applies to `google` engi
        #
        #   @param transcription_min_speaker_count [Integer] Defines minimum number of speakers in the conversation. Applies to `google` engi
        #
        #   @param transcription_profanity_filter [Boolean] Enables profanity_filter. Applies to `google` engine only.
        #
        #   @param transcription_speaker_diarization [Boolean] Enables speaker diarization. Applies to `google` engine only.
        #
        #   @param trim [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::Trim] When set to `trim-silence`, silence will be removed from the beginning and end o
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # When `dual`, final audio file will be stereo recorded with the first leg on
        # channel A, and the rest on channel B.
        module Channels
          extend Telnyx::Internal::Type::Enum

          SINGLE = :single
          DUAL = :dual

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The audio file format used when storing the call recording. Can be either `mp3`
        # or `wav`.
        module Format
          extend Telnyx::Internal::Type::Enum

          WAV = :wav
          MP3 = :mp3

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The audio track to be recorded. Can be either `both`, `inbound` or `outbound`.
        # If only single track is specified (`inbound`, `outbound`), `channels`
        # configuration is ignored and it will be recorded as mono (single channel).
        module RecordingTrack
          extend Telnyx::Internal::Type::Enum

          BOTH = :both
          INBOUND = :inbound
          OUTBOUND = :outbound

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Engine to use for speech recognition. `A` - `Google`, `B` - `Telnyx`,
        # `deepgram/nova-3` - `Deepgram Nova-3`. Note: `deepgram/nova-3` supports only
        # `en` and `en-{Region}` languages.
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          A = :A
          B = :B
          DEEPGRAM_NOVA_3 = :"deepgram/nova-3"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Language code for transcription. Note: Not all languages are supported by all
        # transcription engines (google, telnyx, deepgram). See engine-specific
        # documentation for supported values.
        module TranscriptionLanguage
          extend Telnyx::Internal::Type::Enum

          AF = :af
          AF_ZA = :"af-ZA"
          AM = :am
          AM_ET = :"am-ET"
          AR = :ar
          AR_AE = :"ar-AE"
          AR_BH = :"ar-BH"
          AR_DZ = :"ar-DZ"
          AR_EG = :"ar-EG"
          AR_IL = :"ar-IL"
          AR_IQ = :"ar-IQ"
          AR_JO = :"ar-JO"
          AR_KW = :"ar-KW"
          AR_LB = :"ar-LB"
          AR_MA = :"ar-MA"
          AR_MR = :"ar-MR"
          AR_OM = :"ar-OM"
          AR_PS = :"ar-PS"
          AR_QA = :"ar-QA"
          AR_SA = :"ar-SA"
          AR_TN = :"ar-TN"
          AR_YE = :"ar-YE"
          AS = :as
          AUTO_DETECT = :auto_detect
          AZ = :az
          AZ_AZ = :"az-AZ"
          BA = :ba
          BE = :be
          BG = :bg
          BG_BG = :"bg-BG"
          BN = :bn
          BN_BD = :"bn-BD"
          BN_IN = :"bn-IN"
          BO = :bo
          BR = :br
          BS = :bs
          BS_BA = :"bs-BA"
          CA = :ca
          CA_ES = :"ca-ES"
          CS = :cs
          CS_CZ = :"cs-CZ"
          CY = :cy
          DA = :da
          DA_DK = :"da-DK"
          DE = :de
          DE_AT = :"de-AT"
          DE_CH = :"de-CH"
          DE_DE = :"de-DE"
          EL = :el
          EL_GR = :"el-GR"
          EN = :en
          EN_AU = :"en-AU"
          EN_CA = :"en-CA"
          EN_GB = :"en-GB"
          EN_GH = :"en-GH"
          EN_HK = :"en-HK"
          EN_IE = :"en-IE"
          EN_IN = :"en-IN"
          EN_KE = :"en-KE"
          EN_NG = :"en-NG"
          EN_NZ = :"en-NZ"
          EN_PH = :"en-PH"
          EN_PK = :"en-PK"
          EN_SG = :"en-SG"
          EN_TZ = :"en-TZ"
          EN_US = :"en-US"
          EN_ZA = :"en-ZA"
          ES = :es
          ES_419 = :"es-419"
          ES_AR = :"es-AR"
          ES_BO = :"es-BO"
          ES_CL = :"es-CL"
          ES_CO = :"es-CO"
          ES_CR = :"es-CR"
          ES_DO = :"es-DO"
          ES_EC = :"es-EC"
          ES_ES = :"es-ES"
          ES_GT = :"es-GT"
          ES_HN = :"es-HN"
          ES_MX = :"es-MX"
          ES_NI = :"es-NI"
          ES_PA = :"es-PA"
          ES_PE = :"es-PE"
          ES_PR = :"es-PR"
          ES_PY = :"es-PY"
          ES_SV = :"es-SV"
          ES_US = :"es-US"
          ES_UY = :"es-UY"
          ES_VE = :"es-VE"
          ET = :et
          ET_EE = :"et-EE"
          EU = :eu
          EU_ES = :"eu-ES"
          FA = :fa
          FA_IR = :"fa-IR"
          FI = :fi
          FI_FI = :"fi-FI"
          FIL_PH = :"fil-PH"
          FO = :fo
          FR = :fr
          FR_BE = :"fr-BE"
          FR_CA = :"fr-CA"
          FR_CH = :"fr-CH"
          FR_FR = :"fr-FR"
          GL = :gl
          GL_ES = :"gl-ES"
          GU = :gu
          GU_IN = :"gu-IN"
          HA = :ha
          HAW = :haw
          HE = :he
          HI = :hi
          HI_IN = :"hi-IN"
          HR = :hr
          HR_HR = :"hr-HR"
          HT = :ht
          HU = :hu
          HU_HU = :"hu-HU"
          HY = :hy
          HY_AM = :"hy-AM"
          ID = :id
          ID_ID = :"id-ID"
          IS = :is
          IS_IS = :"is-IS"
          IT = :it
          IT_CH = :"it-CH"
          IT_IT = :"it-IT"
          IW_IL = :"iw-IL"
          JA = :ja
          JA_JP = :"ja-JP"
          JV_ID = :"jv-ID"
          JW = :jw
          KA = :ka
          KA_GE = :"ka-GE"
          KK = :kk
          KK_KZ = :"kk-KZ"
          KM = :km
          KM_KH = :"km-KH"
          KN = :kn
          KN_IN = :"kn-IN"
          KO = :ko
          KO_KR = :"ko-KR"
          LA = :la
          LB = :lb
          LN = :ln
          LO = :lo
          LO_LA = :"lo-LA"
          LT = :lt
          LT_LT = :"lt-LT"
          LV = :lv
          LV_LV = :"lv-LV"
          MG = :mg
          MI = :mi
          MK = :mk
          MK_MK = :"mk-MK"
          ML = :ml
          ML_IN = :"ml-IN"
          MN = :mn
          MN_MN = :"mn-MN"
          MR = :mr
          MR_IN = :"mr-IN"
          MS = :ms
          MS_MY = :"ms-MY"
          MT = :mt
          MY = :my
          MY_MM = :"my-MM"
          NE = :ne
          NE_NP = :"ne-NP"
          NL = :nl
          NL_BE = :"nl-BE"
          NL_NL = :"nl-NL"
          NN = :nn
          NO = :no
          NO_NO = :"no-NO"
          OC = :oc
          PA = :pa
          PA_GURU_IN = :"pa-Guru-IN"
          PL = :pl
          PL_PL = :"pl-PL"
          PS = :ps
          PT = :pt
          PT_BR = :"pt-BR"
          PT_PT = :"pt-PT"
          RO = :ro
          RO_RO = :"ro-RO"
          RU = :ru
          RU_RU = :"ru-RU"
          RW_RW = :"rw-RW"
          SA = :sa
          SD = :sd
          SI = :si
          SI_LK = :"si-LK"
          SK = :sk
          SK_SK = :"sk-SK"
          SL = :sl
          SL_SI = :"sl-SI"
          SN = :sn
          SO = :so
          SQ = :sq
          SQ_AL = :"sq-AL"
          SR = :sr
          SR_RS = :"sr-RS"
          SS_LATN_ZA = :"ss-latn-za"
          ST_ZA = :"st-ZA"
          SU = :su
          SU_ID = :"su-ID"
          SV = :sv
          SV_SE = :"sv-SE"
          SW = :sw
          SW_KE = :"sw-KE"
          SW_TZ = :"sw-TZ"
          TA = :ta
          TA_IN = :"ta-IN"
          TA_LK = :"ta-LK"
          TA_MY = :"ta-MY"
          TA_SG = :"ta-SG"
          TE = :te
          TE_IN = :"te-IN"
          TG = :tg
          TH = :th
          TH_TH = :"th-TH"
          TK = :tk
          TL = :tl
          TN_LATN_ZA = :"tn-latn-za"
          TR = :tr
          TR_TR = :"tr-TR"
          TS_ZA = :"ts-ZA"
          TT = :tt
          UK = :uk
          UK_UA = :"uk-UA"
          UR = :ur
          UR_IN = :"ur-IN"
          UR_PK = :"ur-PK"
          UZ = :uz
          UZ_UZ = :"uz-UZ"
          VE_ZA = :"ve-ZA"
          VI = :vi
          VI_VN = :"vi-VN"
          XH_ZA = :"xh-ZA"
          YI = :yi
          YO = :yo
          YUE_HANT_HK = :"yue-Hant-HK"
          ZH = :zh
          ZH_TW = :"zh-TW"
          ZU_ZA = :"zu-ZA"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # When set to `trim-silence`, silence will be removed from the beginning and end
        # of the recording.
        module Trim
          extend Telnyx::Internal::Type::Enum

          TRIM_SILENCE = :"trim-silence"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
