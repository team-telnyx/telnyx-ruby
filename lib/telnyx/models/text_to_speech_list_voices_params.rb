# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TextToSpeech#list_voices
    class TextToSpeechListVoicesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute elevenlabs_api_key_ref
      #   Reference to your ElevenLabs API key stored in the Telnyx Portal
      #
      #   @return [String, nil]
      optional :elevenlabs_api_key_ref, String

      # @!attribute provider
      #   Filter voices by provider
      #
      #   @return [Symbol, Telnyx::Models::TextToSpeechListVoicesParams::Provider, nil]
      optional :provider, enum: -> { Telnyx::TextToSpeechListVoicesParams::Provider }

      # @!method initialize(elevenlabs_api_key_ref: nil, provider: nil, request_options: {})
      #   @param elevenlabs_api_key_ref [String] Reference to your ElevenLabs API key stored in the Telnyx Portal
      #
      #   @param provider [Symbol, Telnyx::Models::TextToSpeechListVoicesParams::Provider] Filter voices by provider
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter voices by provider
      module Provider
        extend Telnyx::Internal::Type::Enum

        AWS = :aws
        AZURE = :azure
        ELEVENLABS = :elevenlabs
        TELNYX = :telnyx

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
