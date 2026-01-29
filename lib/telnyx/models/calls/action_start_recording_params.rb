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
        #   @param transcription_language [Symbol, Telnyx::Models::Calls::ActionStartRecordingParams::TranscriptionLanguage]
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

        module TranscriptionLanguage
          extend Telnyx::Internal::Type::Enum

          AF_ZA = :"af-ZA"
          AM_ET = :"am-ET"
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
          AZ_AZ = :"az-AZ"
          BG_BG = :"bg-BG"
          BN_BD = :"bn-BD"
          BN_IN = :"bn-IN"
          BS_BA = :"bs-BA"
          CA_ES = :"ca-ES"
          CS_CZ = :"cs-CZ"
          DA_DK = :"da-DK"
          DE_AT = :"de-AT"
          DE_CH = :"de-CH"
          DE_DE = :"de-DE"
          EL_GR = :"el-GR"
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
          ET_EE = :"et-EE"
          EU_ES = :"eu-ES"
          FA_IR = :"fa-IR"
          FI_FI = :"fi-FI"
          FIL_PH = :"fil-PH"
          FR_BE = :"fr-BE"
          FR_CA = :"fr-CA"
          FR_CH = :"fr-CH"
          FR_FR = :"fr-FR"
          GL_ES = :"gl-ES"
          GU_IN = :"gu-IN"
          HI_IN = :"hi-IN"
          HR_HR = :"hr-HR"
          HU_HU = :"hu-HU"
          HY_AM = :"hy-AM"
          ID_ID = :"id-ID"
          IS_IS = :"is-IS"
          IT_CH = :"it-CH"
          IT_IT = :"it-IT"
          IW_IL = :"iw-IL"
          JA_JP = :"ja-JP"
          JV_ID = :"jv-ID"
          KA_GE = :"ka-GE"
          KK_KZ = :"kk-KZ"
          KM_KH = :"km-KH"
          KN_IN = :"kn-IN"
          KO_KR = :"ko-KR"
          LO_LA = :"lo-LA"
          LT_LT = :"lt-LT"
          LV_LV = :"lv-LV"
          MK_MK = :"mk-MK"
          ML_IN = :"ml-IN"
          MN_MN = :"mn-MN"
          MR_IN = :"mr-IN"
          MS_MY = :"ms-MY"
          MY_MM = :"my-MM"
          NE_NP = :"ne-NP"
          NL_BE = :"nl-BE"
          NL_NL = :"nl-NL"
          NO_NO = :"no-NO"
          PA_GURU_IN = :"pa-Guru-IN"
          PL_PL = :"pl-PL"
          PT_BR = :"pt-BR"
          PT_PT = :"pt-PT"
          RO_RO = :"ro-RO"
          RU_RU = :"ru-RU"
          RW_RW = :"rw-RW"
          SI_LK = :"si-LK"
          SK_SK = :"sk-SK"
          SL_SI = :"sl-SI"
          SQ_AL = :"sq-AL"
          SR_RS = :"sr-RS"
          SS_LATN_ZA = :"ss-latn-za"
          ST_ZA = :"st-ZA"
          SU_ID = :"su-ID"
          SV_SE = :"sv-SE"
          SW_KE = :"sw-KE"
          SW_TZ = :"sw-TZ"
          TA_IN = :"ta-IN"
          TA_LK = :"ta-LK"
          TA_MY = :"ta-MY"
          TA_SG = :"ta-SG"
          TE_IN = :"te-IN"
          TH_TH = :"th-TH"
          TN_LATN_ZA = :"tn-latn-za"
          TR_TR = :"tr-TR"
          TS_ZA = :"ts-ZA"
          UK_UA = :"uk-UA"
          UR_IN = :"ur-IN"
          UR_PK = :"ur-PK"
          UZ_UZ = :"uz-UZ"
          VE_ZA = :"ve-ZA"
          VI_VN = :"vi-VN"
          XH_ZA = :"xh-ZA"
          YUE_HANT_HK = :"yue-Hant-HK"
          ZH = :zh
          ZH_TW = :"zh-TW"
          ZU_ZA = :"zu-ZA"
          EN = :en
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
          ES_419 = :"es-419"

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
