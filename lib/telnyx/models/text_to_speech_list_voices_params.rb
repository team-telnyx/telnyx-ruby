# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#list_voices
    class TextToSpeechListVoicesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute api_key
      #   API key for providers that require one to list voices (e.g. ElevenLabs).
      #
      #   @return [String, nil]
      optional :api_key, String

      # @!attribute provider
      #   Filter voices by provider. If omitted, voices from all providers are returned.
      #
      #   @return [Symbol, Telnyx::Models::TextToSpeechListVoicesParams::Provider, nil]
      optional :provider, enum: -> { Telnyx::TextToSpeechListVoicesParams::Provider }

      # @!method initialize(api_key: nil, provider: nil, request_options: {})
      #   @param api_key [String] API key for providers that require one to list voices (e.g. ElevenLabs).
      #
      #   @param provider [Symbol, Telnyx::Models::TextToSpeechListVoicesParams::Provider] Filter voices by provider. If omitted, voices from all providers are returned.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter voices by provider. If omitted, voices from all providers are returned.
      module Provider
        extend Telnyx::Internal::Type::Enum

        AWS = :aws
        TELNYX = :telnyx
        AZURE = :azure
        ELEVENLABS = :elevenlabs
        MINIMAX = :minimax
        RIME = :rime
        RESEMBLE = :resemble

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
