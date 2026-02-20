# frozen_string_literal: true

module Telnyx
  module Models
    module Calls
      module TranscriptionEngineDeepgramConfig
        extend Telnyx::Internal::Type::Union

        discriminator :transcription_model

        variant :"deepgram/nova-2", -> { Telnyx::Calls::DeepgramNova2Config }

        variant :"deepgram/nova-3", -> { Telnyx::Calls::DeepgramNova3Config }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::Calls::DeepgramNova2Config, Telnyx::Models::Calls::DeepgramNova3Config)]
      end
    end
  end
end
