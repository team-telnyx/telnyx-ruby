# typed: strong

module Telnyx
  module Models
    module Calls
      # Deepgram Nova-2 specialty models: `deepgram/nova-2-medical` (medical vocabulary)
      # and `deepgram/nova-2-phonecall` (low-bandwidth phone audio). English only.
      module TranscriptionEngineDeepgramConfig
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::Calls::DeepgramNova2Config,
              Telnyx::Calls::DeepgramNova3Config,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti,
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig
            )
          end

        class DeepgramNova2SpecialtyConfig < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine::OrSymbol
            )
          end
          attr_accessor :transcription_engine

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel::OrSymbol
            )
          end
          attr_accessor :transcription_model

          # Nova-2 keyword biasing without intensifiers. Up to 100 terms to bias recognition
          # toward. For weighted biasing, use `keywords_boosting` instead. Supported on
          # Nova-2 models only (`deepgram/nova-2`, `deepgram/nova-2-medical`,
          # `deepgram/nova-2-phonecall`); use `keyterms` on Nova-3 and Flux.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :hints

          sig { params(hints: T::Array[String]).void }
          attr_writer :hints

          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :interim_results

          sig { params(interim_results: T::Boolean).void }
          attr_writer :interim_results

          # Keywords and their respective intensifiers (boosting values) to improve
          # transcription accuracy for specific words or phrases. The intensifier should be
          # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
          sig { returns(T.nilable(T::Hash[Symbol, Float])) }
          attr_reader :keywords_boosting

          sig { params(keywords_boosting: T::Hash[Symbol, Float]).void }
          attr_writer :keywords_boosting

          # Language to transcribe. Deepgram's medical and phonecall models support English
          # only.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::OrSymbol
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::OrSymbol
            ).void
          end
          attr_writer :language

          # Enable Deepgram's smart formatting (capitalization, punctuation, and digit
          # normalization). Note: Telnyx defaults this to `true`, overriding Deepgram's
          # underlying default of `false` — omit the field to get a smart-formatted
          # transcript, or set it to `false` to receive the raw lowercase transcript without
          # punctuation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :smart_format

          sig { params(smart_format: T::Boolean).void }
          attr_writer :smart_format

          # Number of milliseconds of silence to consider an utterance ended. Ranges from 0
          # to 5000 ms.
          sig { returns(T.nilable(Integer)) }
          attr_reader :utterance_end_ms

          sig { params(utterance_end_ms: Integer).void }
          attr_writer :utterance_end_ms

          # Deepgram Nova-2 specialty models: `deepgram/nova-2-medical` (medical vocabulary)
          # and `deepgram/nova-2-phonecall` (low-bandwidth phone audio). English only.
          sig do
            params(
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine::OrSymbol,
              transcription_model:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel::OrSymbol,
              hints: T::Array[String],
              interim_results: T::Boolean,
              keywords_boosting: T::Hash[Symbol, Float],
              language:
                Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::OrSymbol,
              smart_format: T::Boolean,
              utterance_end_ms: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            transcription_engine:,
            transcription_model:,
            # Nova-2 keyword biasing without intensifiers. Up to 100 terms to bias recognition
            # toward. For weighted biasing, use `keywords_boosting` instead. Supported on
            # Nova-2 models only (`deepgram/nova-2`, `deepgram/nova-2-medical`,
            # `deepgram/nova-2-phonecall`); use `keyterms` on Nova-3 and Flux.
            hints: nil,
            # Whether to send also interim results. If set to false, only final results will
            # be sent.
            interim_results: nil,
            # Keywords and their respective intensifiers (boosting values) to improve
            # transcription accuracy for specific words or phrases. The intensifier should be
            # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
            keywords_boosting: nil,
            # Language to transcribe. Deepgram's medical and phonecall models support English
            # only.
            language: nil,
            # Enable Deepgram's smart formatting (capitalization, punctuation, and digit
            # normalization). Note: Telnyx defaults this to `true`, overriding Deepgram's
            # underlying default of `false` — omit the field to get a smart-formatted
            # transcript, or set it to `false` to receive the raw lowercase transcript without
            # punctuation.
            smart_format: nil,
            # Number of milliseconds of silence to consider an utterance ended. Ranges from 0
            # to 5000 ms.
            utterance_end_ms: nil
          )
          end

          sig do
            override.returns(
              {
                transcription_engine:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine::OrSymbol,
                transcription_model:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel::OrSymbol,
                hints: T::Array[String],
                interim_results: T::Boolean,
                keywords_boosting: T::Hash[Symbol, Float],
                language:
                  Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::OrSymbol,
                smart_format: T::Boolean,
                utterance_end_ms: Integer
              }
            )
          end
          def to_hash
          end

          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM =
              T.let(
                :Deepgram,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module TranscriptionModel
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM_NOVA_2_MEDICAL =
              T.let(
                :"deepgram/nova-2-medical",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel::TaggedSymbol
              )
            DEEPGRAM_NOVA_2_PHONECALL =
              T.let(
                :"deepgram/nova-2-phonecall",
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class DeepgramNova3Medical < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine::OrSymbol
            )
          end
          attr_accessor :transcription_engine

          sig { returns(Symbol) }
          attr_accessor :transcription_model

          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :interim_results

          sig { params(interim_results: T::Boolean).void }
          attr_writer :interim_results

          # Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
          # recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
          # `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
          # on Nova-2.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :keyterms

          sig { params(keyterms: T::Array[String]).void }
          attr_writer :keyterms

          # Keywords and their respective intensifiers (boosting values) to improve
          # transcription accuracy for specific words or phrases. The intensifier should be
          # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
          sig { returns(T.nilable(T::Hash[Symbol, Float])) }
          attr_reader :keywords_boosting

          sig { params(keywords_boosting: T::Hash[Symbol, Float]).void }
          attr_writer :keywords_boosting

          # Language to transcribe. Deepgram's medical and phonecall models support English
          # only.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::OrSymbol
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::OrSymbol
            ).void
          end
          attr_writer :language

          # Enable Deepgram's smart formatting (capitalization, punctuation, and digit
          # normalization). Note: Telnyx defaults this to `true`, overriding Deepgram's
          # underlying default of `false` — omit the field to get a smart-formatted
          # transcript, or set it to `false` to receive the raw lowercase transcript without
          # punctuation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :smart_format

          sig { params(smart_format: T::Boolean).void }
          attr_writer :smart_format

          # Number of milliseconds of silence to consider an utterance ended. Ranges from 0
          # to 5000 ms.
          sig { returns(T.nilable(Integer)) }
          attr_reader :utterance_end_ms

          sig { params(utterance_end_ms: Integer).void }
          attr_writer :utterance_end_ms

          # Deepgram Nova-3 medical model, tuned for medical vocabulary. English only.
          sig do
            params(
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine::OrSymbol,
              interim_results: T::Boolean,
              keyterms: T::Array[String],
              keywords_boosting: T::Hash[Symbol, Float],
              language:
                Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::OrSymbol,
              smart_format: T::Boolean,
              utterance_end_ms: Integer,
              transcription_model: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            transcription_engine:,
            # Whether to send also interim results. If set to false, only final results will
            # be sent.
            interim_results: nil,
            # Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
            # recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
            # `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
            # on Nova-2.
            keyterms: nil,
            # Keywords and their respective intensifiers (boosting values) to improve
            # transcription accuracy for specific words or phrases. The intensifier should be
            # a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
            keywords_boosting: nil,
            # Language to transcribe. Deepgram's medical and phonecall models support English
            # only.
            language: nil,
            # Enable Deepgram's smart formatting (capitalization, punctuation, and digit
            # normalization). Note: Telnyx defaults this to `true`, overriding Deepgram's
            # underlying default of `false` — omit the field to get a smart-formatted
            # transcript, or set it to `false` to receive the raw lowercase transcript without
            # punctuation.
            smart_format: nil,
            # Number of milliseconds of silence to consider an utterance ended. Ranges from 0
            # to 5000 ms.
            utterance_end_ms: nil,
            transcription_model: :"deepgram/nova-3-medical"
          )
          end

          sig do
            override.returns(
              {
                transcription_engine:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine::OrSymbol,
                transcription_model: Symbol,
                interim_results: T::Boolean,
                keyterms: T::Array[String],
                keywords_boosting: T::Hash[Symbol, Float],
                language:
                  Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::OrSymbol,
                smart_format: T::Boolean,
                utterance_end_ms: Integer
              }
            )
          end
          def to_hash
          end

          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM =
              T.let(
                :Deepgram,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class DeepgramFlux < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine::OrSymbol
            )
          end
          attr_accessor :transcription_engine

          sig { returns(Symbol) }
          attr_accessor :transcription_model

          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :interim_results

          sig { params(interim_results: T::Boolean).void }
          attr_writer :interim_results

          # Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
          # recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
          # `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
          # on Nova-2.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :keyterms

          sig { params(keyterms: T::Array[String]).void }
          attr_writer :keyterms

          # Language to transcribe. `deepgram/flux` supports English only.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language::OrSymbol
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language::OrSymbol
            ).void
          end
          attr_writer :language

          # Deepgram Flux (English), a conversational speech recognition model with built-in
          # end-of-turn detection. `smart_format`, `utterance_end_ms`, `hints` and
          # `keywords_boosting` do not apply to Flux.
          sig do
            params(
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine::OrSymbol,
              interim_results: T::Boolean,
              keyterms: T::Array[String],
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language::OrSymbol,
              transcription_model: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            transcription_engine:,
            # Whether to send also interim results. If set to false, only final results will
            # be sent.
            interim_results: nil,
            # Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
            # recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
            # `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
            # on Nova-2.
            keyterms: nil,
            # Language to transcribe. `deepgram/flux` supports English only.
            language: nil,
            transcription_model: :"deepgram/flux"
          )
          end

          sig do
            override.returns(
              {
                transcription_engine:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine::OrSymbol,
                transcription_model: Symbol,
                interim_results: T::Boolean,
                keyterms: T::Array[String],
                language:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language::OrSymbol
              }
            )
          end
          def to_hash
          end

          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM =
              T.let(
                :Deepgram,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Language to transcribe. `deepgram/flux` supports English only.
          module Language
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EN =
              T.let(
                :en,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class DeepgramFluxMulti < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine::OrSymbol
            )
          end
          attr_accessor :transcription_engine

          sig { returns(Symbol) }
          attr_accessor :transcription_model

          # Whether to send also interim results. If set to false, only final results will
          # be sent.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :interim_results

          sig { params(interim_results: T::Boolean).void }
          attr_writer :interim_results

          # Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
          # recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
          # `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
          # on Nova-2.
          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :keyterms

          sig { params(keyterms: T::Array[String]).void }
          attr_writer :keyterms

          # Language to transcribe. Flux-multi uses the language as a hint; `auto` lets Flux
          # detect the language.
          sig do
            returns(
              T.nilable(
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::OrSymbol
              )
            )
          end
          attr_reader :language

          sig do
            params(
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::OrSymbol
            ).void
          end
          attr_writer :language

          # Deepgram Flux multilingual, a conversational speech recognition model with
          # built-in end-of-turn detection. `smart_format`, `utterance_end_ms`, `hints` and
          # `keywords_boosting` do not apply to Flux.
          sig do
            params(
              transcription_engine:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine::OrSymbol,
              interim_results: T::Boolean,
              keyterms: T::Array[String],
              language:
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::OrSymbol,
              transcription_model: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            transcription_engine:,
            # Whether to send also interim results. If set to false, only final results will
            # be sent.
            interim_results: nil,
            # Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
            # recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
            # `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
            # on Nova-2.
            keyterms: nil,
            # Language to transcribe. Flux-multi uses the language as a hint; `auto` lets Flux
            # detect the language.
            language: nil,
            transcription_model: :"deepgram/flux-multi"
          )
          end

          sig do
            override.returns(
              {
                transcription_engine:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine::OrSymbol,
                transcription_model: Symbol,
                interim_results: T::Boolean,
                keyterms: T::Array[String],
                language:
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::OrSymbol
              }
            )
          end
          def to_hash
          end

          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            DEEPGRAM =
              T.let(
                :Deepgram,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          # Language to transcribe. Flux-multi uses the language as a hint; `auto` lets Flux
          # detect the language.
          module Language
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EN =
              T.let(
                :en,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            ES =
              T.let(
                :es,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            FR =
              T.let(
                :fr,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            DE =
              T.let(
                :de,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            HI =
              T.let(
                :hi,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            RU =
              T.let(
                :ru,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            PT =
              T.let(
                :pt,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            JA =
              T.let(
                :ja,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            IT =
              T.let(
                :it,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            NL =
              T.let(
                :nl,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )
            AUTO =
              T.let(
                :auto,
                Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        sig do
          override.returns(
            T::Array[Telnyx::Calls::TranscriptionEngineDeepgramConfig::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
