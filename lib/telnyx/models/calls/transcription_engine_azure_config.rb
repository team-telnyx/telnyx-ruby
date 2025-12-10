# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineAzureConfig < Telnyx::Internal::Type::BaseModel
        # @!attribute region
        #   Azure region to use for speech recognition
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineAzureConfig::Region]
        required :region, enum: -> { Telnyx::Calls::TranscriptionEngineAzureConfig::Region }

        # @!attribute transcription_engine
        #   Engine identifier for Azure transcription service
        #
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine]
        required :transcription_engine,
                 enum: -> { Telnyx::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine }

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
        #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineAzureConfig::Language, nil]
        optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineAzureConfig::Language }

        # @!method initialize(region:, transcription_engine:, api_key_ref: nil, language: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Calls::TranscriptionEngineAzureConfig} for more details.
        #
        #   @param region [Symbol, Telnyx::Models::Calls::TranscriptionEngineAzureConfig::Region] Azure region to use for speech recognition
        #
        #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine] Engine identifier for Azure transcription service
        #
        #   @param api_key_ref [String] Reference to the API key for authentication. See [integration secrets documentat
        #
        #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineAzureConfig::Language] Language to use for speech recognition

        # Azure region to use for speech recognition
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineAzureConfig#region
        module Region
          extend Telnyx::Internal::Type::Enum

          AUSTRALIAEAST = :australiaeast
          CENTRALINDIA = :centralindia
          EASTUS = :eastus
          NORTHCENTRALUS = :northcentralus
          WESTEUROPE = :westeurope
          WESTUS2 = :westus2

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Engine identifier for Azure transcription service
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineAzureConfig#transcription_engine
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          AZURE = :Azure

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Language to use for speech recognition
        #
        # @see Telnyx::Models::Calls::TranscriptionEngineAzureConfig#language
        module Language
          extend Telnyx::Internal::Type::Enum

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
    end
  end
end
