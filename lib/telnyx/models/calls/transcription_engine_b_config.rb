# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineBConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute language
        #   Language to use for speech recognition
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineBConfig::Language }

        # @!attribute transcription_engine
        #   Engine identifier for Telnyx transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::TranscriptionEngine, nil]
        optional :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine }

        # @!attribute transcription_model
        #   The model to use for transcription.
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::TranscriptionModel, nil]
        optional :transcription_model, enum: -> { Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel }

        # @!method initialize(language: nil, transcription_engine: nil, transcription_model: nil)
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::Language] Language to use for speech recognition
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::TranscriptionEngine] Engine identifier for Telnyx transcription service
        #
        #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineBConfig::TranscriptionModel] The model to use for transcription.

        # Language to use for speech recognition
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineBConfig#language
        module Language
          extend Telnyx::Internal::Type::Enum

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
        # @see Telnyx::Models::Calls::TranscriptionEngineBConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          B = :B

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The model to use for transcription.
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineBConfig#transcription_model
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          OPENAI_WHISPER_TINY = :"openai/whisper-tiny"
          OPENAI_WHISPER_LARGE_V3_TURBO = :"openai/whisper-large-v3-turbo"

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
