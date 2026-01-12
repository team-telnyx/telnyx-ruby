# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineAzureConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineAzureConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Azure region to use for speech recognition
        sig do
          returns(
            Telnyx::Calls::TranscriptionEngineAzureConfig::Region::OrSymbol
          )
        end
        attr_accessor :region

        # Engine identifier for Azure transcription service
        sig do
          returns(
            Telnyx::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine::OrSymbol
          )
        end
        attr_accessor :transcription_engine

        # Reference to the API key for authentication. See
        # [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
        # for details. The parameter is optional as defaults are available for some
        # regions.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key_ref

        sig { params(api_key_ref: String).void }
        attr_writer :api_key_ref

        # Language to use for speech recognition
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::OrSymbol
          ).void
        end
        attr_writer :language

        sig do
          params(
            region:
              Telnyx::Calls::TranscriptionEngineAzureConfig::Region::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine::OrSymbol,
            api_key_ref: String,
            language:
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Azure region to use for speech recognition
          region:,
          # Engine identifier for Azure transcription service
          transcription_engine:,
          # Reference to the API key for authentication. See
          # [integration secrets documentation](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # for details. The parameter is optional as defaults are available for some
          # regions.
          api_key_ref: nil,
          # Language to use for speech recognition
          language: nil
        )
        end

        sig do
          override.returns(
            {
              region:
                Telnyx::Calls::TranscriptionEngineAzureConfig::Region::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine::OrSymbol,
              api_key_ref: String,
              language:
                Telnyx::Calls::TranscriptionEngineAzureConfig::Language::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Azure region to use for speech recognition
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineAzureConfig::Region
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AUSTRALIAEAST =
            T.let(
              :australiaeast,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Region::TaggedSymbol
            )
          CENTRALINDIA =
            T.let(
              :centralindia,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Region::TaggedSymbol
            )
          EASTUS =
            T.let(
              :eastus,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Region::TaggedSymbol
            )
          NORTHCENTRALUS =
            T.let(
              :northcentralus,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Region::TaggedSymbol
            )
          WESTEUROPE =
            T.let(
              :westeurope,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Region::TaggedSymbol
            )
          WESTUS2 =
            T.let(
              :westus2,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineAzureConfig::Region::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Engine identifier for Azure transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AZURE =
            T.let(
              :Azure,
              Telnyx::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineAzureConfig::TranscriptionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Language to use for speech recognition
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineAzureConfig::Language
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AF =
            T.let(
              :af,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          GA =
            T.let(
              :ga,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          NB =
            T.let(
              :nb,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          WUU =
            T.let(
              :wuu,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          YUE =
            T.let(
              :yue,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          ZU =
            T.let(
              :zu,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )
          AUTO =
            T.let(
              :auto,
              Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineAzureConfig::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
