# typed: strong

module Telnyx
  module Models
    module Calls
      # Language to transcribe. Deepgram's medical and phonecall models support English
      # only.
      module DeepgramEnglishTranscriptionLanguage
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::Calls::DeepgramEnglishTranscriptionLanguage)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EN =
          T.let(
            :en,
            Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::TaggedSymbol
          )
        EN_US =
          T.let(
            :"en-US",
            Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::TaggedSymbol
          )
        EN_AU =
          T.let(
            :"en-AU",
            Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::TaggedSymbol
          )
        EN_GB =
          T.let(
            :"en-GB",
            Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::TaggedSymbol
          )
        EN_IN =
          T.let(
            :"en-IN",
            Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::TaggedSymbol
          )
        EN_NZ =
          T.let(
            :"en-NZ",
            Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Calls::DeepgramEnglishTranscriptionLanguage::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
