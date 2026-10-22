# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      # Language to transcribe. Deepgram's medical and phonecall models support English
      # only.
      module DeepgramEnglishTranscriptionLanguage
        extend Telnyx::Internal::Type::Enum

        EN = :en
        EN_US = :"en-US"
        EN_AU = :"en-AU"
        EN_GB = :"en-GB"
        EN_IN = :"en-IN"
        EN_NZ = :"en-NZ"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
