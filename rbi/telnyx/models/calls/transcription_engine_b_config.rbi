# typed: strong

module Telnyx
  module Models
    module Calls
      class TranscriptionEngineBConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Calls::TranscriptionEngineBConfig,
              Telnyx::Internal::AnyHash
            )
          end

        # Language to use for speech recognition
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineBConfig::Language::OrSymbol
            )
          )
        end
        attr_reader :language

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineBConfig::Language::OrSymbol
          ).void
        end
        attr_writer :language

        # Engine identifier for Telnyx transcription service
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::OrSymbol
            )
          )
        end
        attr_reader :transcription_engine

        sig do
          params(
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::OrSymbol
          ).void
        end
        attr_writer :transcription_engine

        # The model to use for transcription.
        sig do
          returns(
            T.nilable(
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::OrSymbol
            )
          )
        end
        attr_reader :transcription_model

        sig do
          params(
            transcription_model:
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::OrSymbol
          ).void
        end
        attr_writer :transcription_model

        sig do
          params(
            language:
              Telnyx::Calls::TranscriptionEngineBConfig::Language::OrSymbol,
            transcription_engine:
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::OrSymbol,
            transcription_model:
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Language to use for speech recognition
          language: nil,
          # Engine identifier for Telnyx transcription service
          transcription_engine: nil,
          # The model to use for transcription.
          transcription_model: nil
        )
        end

        sig do
          override.returns(
            {
              language:
                Telnyx::Calls::TranscriptionEngineBConfig::Language::OrSymbol,
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Language to use for speech recognition
        module Language
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::Calls::TranscriptionEngineBConfig::Language)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EN =
            T.let(
              :en,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          ZH =
            T.let(
              :zh,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          DE =
            T.let(
              :de,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          ES =
            T.let(
              :es,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          RU =
            T.let(
              :ru,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          KO =
            T.let(
              :ko,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          FR =
            T.let(
              :fr,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          JA =
            T.let(
              :ja,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          PT =
            T.let(
              :pt,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          TR =
            T.let(
              :tr,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          PL =
            T.let(
              :pl,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          CA =
            T.let(
              :ca,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          NL =
            T.let(
              :nl,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          AR =
            T.let(
              :ar,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SV =
            T.let(
              :sv,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          IT =
            T.let(
              :it,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          ID =
            T.let(
              :id,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          HI =
            T.let(
              :hi,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          FI =
            T.let(
              :fi,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          VI =
            T.let(
              :vi,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          HE =
            T.let(
              :he,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          UK =
            T.let(
              :uk,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          EL =
            T.let(
              :el,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          MS =
            T.let(
              :ms,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          CS =
            T.let(
              :cs,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          RO =
            T.let(
              :ro,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          DA =
            T.let(
              :da,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          HU =
            T.let(
              :hu,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          TA =
            T.let(
              :ta,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          NO =
            T.let(
              :no,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          TH =
            T.let(
              :th,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          UR =
            T.let(
              :ur,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          HR =
            T.let(
              :hr,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          BG =
            T.let(
              :bg,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          LT =
            T.let(
              :lt,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          LA =
            T.let(
              :la,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          MI =
            T.let(
              :mi,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          ML =
            T.let(
              :ml,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          CY =
            T.let(
              :cy,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SK =
            T.let(
              :sk,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          TE =
            T.let(
              :te,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          FA =
            T.let(
              :fa,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          LV =
            T.let(
              :lv,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          BN =
            T.let(
              :bn,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SR =
            T.let(
              :sr,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          AZ =
            T.let(
              :az,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SL =
            T.let(
              :sl,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          KN =
            T.let(
              :kn,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          ET =
            T.let(
              :et,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          MK =
            T.let(
              :mk,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          BR =
            T.let(
              :br,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          EU =
            T.let(
              :eu,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          IS =
            T.let(
              :is,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          HY =
            T.let(
              :hy,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          NE =
            T.let(
              :ne,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          MN =
            T.let(
              :mn,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          BS =
            T.let(
              :bs,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          KK =
            T.let(
              :kk,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SQ =
            T.let(
              :sq,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SW =
            T.let(
              :sw,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          GL =
            T.let(
              :gl,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          MR =
            T.let(
              :mr,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          PA =
            T.let(
              :pa,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SI =
            T.let(
              :si,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          KM =
            T.let(
              :km,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SN =
            T.let(
              :sn,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          YO =
            T.let(
              :yo,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SO =
            T.let(
              :so,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          AF =
            T.let(
              :af,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          OC =
            T.let(
              :oc,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          KA =
            T.let(
              :ka,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          BE =
            T.let(
              :be,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          TG =
            T.let(
              :tg,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SD =
            T.let(
              :sd,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          GU =
            T.let(
              :gu,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          AM =
            T.let(
              :am,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          YI =
            T.let(
              :yi,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          LO =
            T.let(
              :lo,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          UZ =
            T.let(
              :uz,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          FO =
            T.let(
              :fo,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          HT =
            T.let(
              :ht,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          PS =
            T.let(
              :ps,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          TK =
            T.let(
              :tk,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          NN =
            T.let(
              :nn,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          MT =
            T.let(
              :mt,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SA =
            T.let(
              :sa,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          LB =
            T.let(
              :lb,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          MY =
            T.let(
              :my,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          BO =
            T.let(
              :bo,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          TL =
            T.let(
              :tl,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          MG =
            T.let(
              :mg,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          AS =
            T.let(
              :as,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          TT =
            T.let(
              :tt,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          HAW =
            T.let(
              :haw,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          LN =
            T.let(
              :ln,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          HA =
            T.let(
              :ha,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          BA =
            T.let(
              :ba,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          JW =
            T.let(
              :jw,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          SU =
            T.let(
              :su,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )
          AUTO_DETECT =
            T.let(
              :auto_detect,
              Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineBConfig::Language::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Engine identifier for Telnyx transcription service
        module TranscriptionEngine
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          B =
            T.let(
              :B,
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionEngine::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The model to use for transcription.
        module TranscriptionModel
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OPENAI_WHISPER_TINY =
            T.let(
              :"openai/whisper-tiny",
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::TaggedSymbol
            )
          OPENAI_WHISPER_LARGE_V3_TURBO =
            T.let(
              :"openai/whisper-large-v3-turbo",
              Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Calls::TranscriptionEngineBConfig::TranscriptionModel::TaggedSymbol
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
