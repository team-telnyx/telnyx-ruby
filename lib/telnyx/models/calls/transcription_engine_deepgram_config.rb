# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # Deepgram Nova-2 specialty models: `deepgram/nova-2-medical` (medical vocabulary)
      # and `deepgram/nova-2-phonecall` (low-bandwidth phone audio). English only.
      module TranscriptionEngineDeepgramConfig
        extend Telnyx::Internal::Type::Union

        discriminator :transcription_model

        variant :"deepgram/nova-2", -> { Telnyx::Calls::DeepgramNova2Config }

        variant :"deepgram/nova-3", -> { Telnyx::Calls::DeepgramNova3Config }

        # Deepgram Nova-3 medical model, tuned for medical vocabulary. English only.
        variant :"deepgram/nova-3-medical",
                -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical }

        # Deepgram Flux (English), a conversational speech recognition model with built-in end-of-turn detection. `smart_format`, `utterance_end_ms`, `hints` and `keywords_boosting` do not apply to Flux.
        variant :"deepgram/flux", -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux }

        # Deepgram Flux multilingual, a conversational speech recognition model with built-in end-of-turn detection. `smart_format`, `utterance_end_ms`, `hints` and `keywords_boosting` do not apply to Flux.
        variant :"deepgram/flux-multi", -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti }

        # Deepgram Nova-2 specialty models: `deepgram/nova-2-medical` (medical vocabulary) and `deepgram/nova-2-phonecall` (low-bandwidth phone audio). English only.
        variant -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig }

        class DeepgramNova2SpecialtyConfig < Telnyx::Internal::Type::BaseModel
          # @!attribute transcription_engine
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine]
          required :transcription_engine,
                   enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine }

          # @!attribute transcription_model
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel]
          required :transcription_model,
                   enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel }

          # @!attribute hints
          #   Nova-2 keyword biasing without intensifiers. Up to 100 terms to bias recognition
          #   toward. For weighted biasing, use `keywords_boosting` instead. Supported on
          #   Nova-2 models only (`deepgram/nova-2`, `deepgram/nova-2-medical`,
          #   `deepgram/nova-2-phonecall`); use `keyterms` on Nova-3 and Flux.
          #
          #   @return [Array<String>, nil]
          optional :hints, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute interim_results
          #   Whether to send also interim results. If set to false, only final results will
          #   be sent.
          #
          #   @return [Boolean, nil]
          optional :interim_results, Telnyx::Internal::Type::Boolean

          # @!attribute keywords_boosting
          #   Keywords and their respective intensifiers (boosting values) to improve
          #   transcription accuracy for specific words or phrases. The intensifier should be
          #   a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
          #
          #   @return [Hash{Symbol=>Float}, nil]
          optional :keywords_boosting, Telnyx::Internal::Type::HashOf[Float]

          # @!attribute language
          #   Language to transcribe. Deepgram's medical and phonecall models support English
          #   only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::DeepgramEnglishTranscriptionLanguage, nil]
          optional :language, enum: -> { Telnyx::Calls::DeepgramEnglishTranscriptionLanguage }

          # @!attribute smart_format
          #   Enable Deepgram's smart formatting (capitalization, punctuation, and digit
          #   normalization). Note: Telnyx defaults this to `true`, overriding Deepgram's
          #   underlying default of `false` — omit the field to get a smart-formatted
          #   transcript, or set it to `false` to receive the raw lowercase transcript without
          #   punctuation.
          #
          #   @return [Boolean, nil]
          optional :smart_format, Telnyx::Internal::Type::Boolean

          # @!attribute utterance_end_ms
          #   Number of milliseconds of silence to consider an utterance ended. Ranges from 0
          #   to 5000 ms.
          #
          #   @return [Integer, nil]
          optional :utterance_end_ms, Integer

          # @!method initialize(transcription_engine:, transcription_model:, hints: nil, interim_results: nil, keywords_boosting: nil, language: nil, smart_format: nil, utterance_end_ms: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig}
          #   for more details.
          #
          #   Deepgram Nova-2 specialty models: `deepgram/nova-2-medical` (medical vocabulary)
          #   and `deepgram/nova-2-phonecall` (low-bandwidth phone audio). English only.
          #
          #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionEngine]
          #
          #   @param transcription_model [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig::TranscriptionModel]
          #
          #   @param hints [Array<String>] Nova-2 keyword biasing without intensifiers. Up to 100 terms to bias recognition
          #
          #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
          #
          #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
          #
          #   @param language [Symbol, Telnyx::Models::Calls::DeepgramEnglishTranscriptionLanguage] Language to transcribe. Deepgram's medical and phonecall models support English
          #
          #   @param smart_format [Boolean] Enable Deepgram's smart formatting (capitalization, punctuation, and digit norma
          #
          #   @param utterance_end_ms [Integer] Number of milliseconds of silence to consider an utterance ended. Ranges from 0

          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig#transcription_engine
          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM = :Deepgram

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig#transcription_model
          module TranscriptionModel
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM_NOVA_2_MEDICAL = :"deepgram/nova-2-medical"
            DEEPGRAM_NOVA_2_PHONECALL = :"deepgram/nova-2-phonecall"

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class DeepgramNova3Medical < Telnyx::Internal::Type::BaseModel
          # @!attribute transcription_engine
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine]
          required :transcription_engine,
                   enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine }

          # @!attribute transcription_model
          #
          #   @return [Symbol, :"deepgram/nova-3-medical"]
          required :transcription_model, const: :"deepgram/nova-3-medical"

          # @!attribute interim_results
          #   Whether to send also interim results. If set to false, only final results will
          #   be sent.
          #
          #   @return [Boolean, nil]
          optional :interim_results, Telnyx::Internal::Type::Boolean

          # @!attribute keyterms
          #   Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
          #   recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
          #   `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
          #   on Nova-2.
          #
          #   @return [Array<String>, nil]
          optional :keyterms, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute keywords_boosting
          #   Keywords and their respective intensifiers (boosting values) to improve
          #   transcription accuracy for specific words or phrases. The intensifier should be
          #   a numeric value. Example: `{"snuffleupagus": 5, "systrom": 2, "krieger": 1}`.
          #
          #   @return [Hash{Symbol=>Float}, nil]
          optional :keywords_boosting, Telnyx::Internal::Type::HashOf[Float]

          # @!attribute language
          #   Language to transcribe. Deepgram's medical and phonecall models support English
          #   only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::DeepgramEnglishTranscriptionLanguage, nil]
          optional :language, enum: -> { Telnyx::Calls::DeepgramEnglishTranscriptionLanguage }

          # @!attribute smart_format
          #   Enable Deepgram's smart formatting (capitalization, punctuation, and digit
          #   normalization). Note: Telnyx defaults this to `true`, overriding Deepgram's
          #   underlying default of `false` — omit the field to get a smart-formatted
          #   transcript, or set it to `false` to receive the raw lowercase transcript without
          #   punctuation.
          #
          #   @return [Boolean, nil]
          optional :smart_format, Telnyx::Internal::Type::Boolean

          # @!attribute utterance_end_ms
          #   Number of milliseconds of silence to consider an utterance ended. Ranges from 0
          #   to 5000 ms.
          #
          #   @return [Integer, nil]
          optional :utterance_end_ms, Integer

          # @!method initialize(transcription_engine:, interim_results: nil, keyterms: nil, keywords_boosting: nil, language: nil, smart_format: nil, utterance_end_ms: nil, transcription_model: :"deepgram/nova-3-medical")
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical}
          #   for more details.
          #
          #   Deepgram Nova-3 medical model, tuned for medical vocabulary. English only.
          #
          #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical::TranscriptionEngine]
          #
          #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
          #
          #   @param keyterms [Array<String>] Keyterm prompting. Up to 100 domain-specific terms or brand names to bias recogn
          #
          #   @param keywords_boosting [Hash{Symbol=>Float}] Keywords and their respective intensifiers (boosting values) to improve transcri
          #
          #   @param language [Symbol, Telnyx::Models::Calls::DeepgramEnglishTranscriptionLanguage] Language to transcribe. Deepgram's medical and phonecall models support English
          #
          #   @param smart_format [Boolean] Enable Deepgram's smart formatting (capitalization, punctuation, and digit norma
          #
          #   @param utterance_end_ms [Integer] Number of milliseconds of silence to consider an utterance ended. Ranges from 0
          #
          #   @param transcription_model [Symbol, :"deepgram/nova-3-medical"]

          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical#transcription_engine
          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM = :Deepgram

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class DeepgramFlux < Telnyx::Internal::Type::BaseModel
          # @!attribute transcription_engine
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine]
          required :transcription_engine,
                   enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine }

          # @!attribute transcription_model
          #
          #   @return [Symbol, :"deepgram/flux"]
          required :transcription_model, const: :"deepgram/flux"

          # @!attribute interim_results
          #   Whether to send also interim results. If set to false, only final results will
          #   be sent.
          #
          #   @return [Boolean, nil]
          optional :interim_results, Telnyx::Internal::Type::Boolean

          # @!attribute keyterms
          #   Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
          #   recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
          #   `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
          #   on Nova-2.
          #
          #   @return [Array<String>, nil]
          optional :keyterms, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute language
          #   Language to transcribe. `deepgram/flux` supports English only.
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language, nil]
          optional :language, enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language }

          # @!method initialize(transcription_engine:, interim_results: nil, keyterms: nil, language: nil, transcription_model: :"deepgram/flux")
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux} for
          #   more details.
          #
          #   Deepgram Flux (English), a conversational speech recognition model with built-in
          #   end-of-turn detection. `smart_format`, `utterance_end_ms`, `hints` and
          #   `keywords_boosting` do not apply to Flux.
          #
          #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::TranscriptionEngine]
          #
          #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
          #
          #   @param keyterms [Array<String>] Keyterm prompting. Up to 100 domain-specific terms or brand names to bias recogn
          #
          #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux::Language] Language to transcribe. `deepgram/flux` supports English only.
          #
          #   @param transcription_model [Symbol, :"deepgram/flux"]

          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux#transcription_engine
          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM = :Deepgram

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Language to transcribe. `deepgram/flux` supports English only.
          #
          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux#language
          module Language
            extend Telnyx::Internal::Type::Enum

            EN = :en

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        class DeepgramFluxMulti < Telnyx::Internal::Type::BaseModel
          # @!attribute transcription_engine
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine]
          required :transcription_engine,
                   enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine }

          # @!attribute transcription_model
          #
          #   @return [Symbol, :"deepgram/flux-multi"]
          required :transcription_model, const: :"deepgram/flux-multi"

          # @!attribute interim_results
          #   Whether to send also interim results. If set to false, only final results will
          #   be sent.
          #
          #   @return [Boolean, nil]
          optional :interim_results, Telnyx::Internal::Type::Boolean

          # @!attribute keyterms
          #   Keyterm prompting. Up to 100 domain-specific terms or brand names to bias
          #   recognition toward. Supported on Nova-3 and Flux models (`deepgram/nova-3`,
          #   `deepgram/nova-3-medical`, `deepgram/flux`, `deepgram/flux-multi`); use `hints`
          #   on Nova-2.
          #
          #   @return [Array<String>, nil]
          optional :keyterms, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute language
          #   Language to transcribe. Flux-multi uses the language as a hint; `auto` lets Flux
          #   detect the language.
          #
          #   @return [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language, nil]
          optional :language,
                   enum: -> { Telnyx::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language }

          # @!method initialize(transcription_engine:, interim_results: nil, keyterms: nil, language: nil, transcription_model: :"deepgram/flux-multi")
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti}
          #   for more details.
          #
          #   Deepgram Flux multilingual, a conversational speech recognition model with
          #   built-in end-of-turn detection. `smart_format`, `utterance_end_ms`, `hints` and
          #   `keywords_boosting` do not apply to Flux.
          #
          #   @param transcription_engine [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::TranscriptionEngine]
          #
          #   @param interim_results [Boolean] Whether to send also interim results. If set to false, only final results will b
          #
          #   @param keyterms [Array<String>] Keyterm prompting. Up to 100 domain-specific terms or brand names to bias recogn
          #
          #   @param language [Symbol, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti::Language] Language to transcribe. Flux-multi uses the language as a hint; `auto` lets Flux
          #
          #   @param transcription_model [Symbol, :"deepgram/flux-multi"]

          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti#transcription_engine
          module TranscriptionEngine
            extend Telnyx::Internal::Type::Enum

            DEEPGRAM = :Deepgram

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          # Language to transcribe. Flux-multi uses the language as a hint; `auto` lets Flux
          # detect the language.
          #
          # @see Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti#language
          module Language
            extend Telnyx::Internal::Type::Enum

            EN = :en
            ES = :es
            FR = :fr
            DE = :de
            HI = :hi
            RU = :ru
            PT = :pt
            JA = :ja
            IT = :it
            NL = :nl
            AUTO = :auto

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Calls::DeepgramNova2Config, Telnyx::Models::Calls::DeepgramNova3Config, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova3Medical, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFlux, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramFluxMulti, Telnyx::Models::Calls::TranscriptionEngineDeepgramConfig::DeepgramNova2SpecialtyConfig)]
      end
    end
  end
end
