# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # Language to use for speech recognition
      module TelnyxTranscriptionLanguage
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
    end
  end
end
