# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpeechToText#list_providers
    class SpeechToTextListProvidersParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute provider
      #   Filter to entries for a specific STT provider. The enum mirrors the providers
      #   advertised across the speech-to-text spec (including `google` and `telnyx`,
      #   which are accepted as WebSocket transcription engines). A provider that has no
      #   models currently registered for any service type will return an empty `data`
      #   array rather than an error.
      #
      #   @return [Symbol, Telnyx::Models::SpeechToTextListProvidersParams::Provider, nil]
      optional :provider, enum: -> { Telnyx::SpeechToTextListProvidersParams::Provider }

      # @!attribute service_type
      #   Filter to entries that support the given service type.
      #
      #   @return [Symbol, Telnyx::Models::SpeechToTextListProvidersParams::ServiceType, nil]
      optional :service_type, enum: -> { Telnyx::SpeechToTextListProvidersParams::ServiceType }

      # @!method initialize(provider: nil, service_type: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SpeechToTextListProvidersParams} for more details.
      #
      #   @param provider [Symbol, Telnyx::Models::SpeechToTextListProvidersParams::Provider] Filter to entries for a specific STT provider. The enum mirrors the providers ad
      #
      #   @param service_type [Symbol, Telnyx::Models::SpeechToTextListProvidersParams::ServiceType] Filter to entries that support the given service type.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

      # Filter to entries for a specific STT provider. The enum mirrors the providers
      # advertised across the speech-to-text spec (including `google` and `telnyx`,
      # which are accepted as WebSocket transcription engines). A provider that has no
      # models currently registered for any service type will return an empty `data`
      # array rather than an error.
      module Provider
        extend Telnyx::Internal::Type::Enum

        DEEPGRAM = :deepgram
        SPEECHMATICS = :speechmatics
        ASSEMBLYAI = :assemblyai
        XAI = :xai
        SONIOX = :soniox
        AZURE = :azure
        OPENAI = :openai
        GOOGLE = :google
        TELNYX = :telnyx

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter to entries that support the given service type.
      module ServiceType
        extend Telnyx::Internal::Type::Enum

        STREAMING = :streaming
        FILE_TRANSCRIPTION = :file_transcription
        IN_CALL_TRANSCRIPTION = :in_call_transcription

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
