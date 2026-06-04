# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpeechToText#list_providers
    class SpeechToTextListProvidersResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::SpeechToTextListProvidersResponse::Data>]
      required :data,
               -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SpeechToTextListProvidersResponse::Data] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::SpeechToTextListProvidersResponse::Meta]
      required :meta, -> { Telnyx::Models::SpeechToTextListProvidersResponse::Meta }

      # @!method initialize(data:, meta:)
      #   List of supported STT providers and models.
      #
      #   @param data [Array<Telnyx::Models::SpeechToTextListProvidersResponse::Data>]
      #   @param meta [Telnyx::Models::SpeechToTextListProvidersResponse::Meta]

      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute model
        #   Provider-scoped model name.
        #
        #   @return [String]
        required :model, String

        # @!attribute provider
        #   STT provider name.
        #
        #   @return [String]
        required :provider, String

        # @!attribute service_types
        #   Service surfaces this (provider, model) supports. When the request filters by
        #   `service_type`, only the matching nested entry is returned for each matching
        #   model.
        #
        #   @return [Array<Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType>]
        required :service_types,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType] }

        # @!method initialize(model:, provider:, service_types:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SpeechToTextListProvidersResponse::Data} for more details.
        #
        #   A (provider, model) tuple along with the service surfaces it supports. Each
        #   entry in `service_types` describes one surface and the languages accepted on it.
        #
        #   @param model [String] Provider-scoped model name.
        #
        #   @param provider [String] STT provider name.
        #
        #   @param service_types [Array<Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType>] Service surfaces this (provider, model) supports. When the request filters by `s

        class ServiceType < Telnyx::Internal::Type::BaseModel
          # @!attribute languages
          #   Languages accepted on this service surface, in the provider's native code
          #   format. `auto` indicates the provider performs language detection.
          #
          #   @return [Array<String>]
          required :languages, Telnyx::Internal::Type::ArrayOf[String]

          # @!attribute type
          #   Service surface a model is available on. `ai_assistant` is the STT surface
          #   configured via Call Control voice-assistant transcription; it covers both
          #   live-streaming and non-streaming/batch models (matching the
          #   `TranscriptionConfig.model` enum on `call-control` voice assistants).
          #
          #   @return [Symbol, Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::Type]
          required :type, enum: -> { Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::Type }

          # @!method initialize(languages:, type:)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType} for more
          #   details.
          #
          #   A supported service surface for a given (provider, model), along with the
          #   language codes accepted on that surface. Language support can differ per surface
          #   — for example, a model may accept a narrower language set for streaming than for
          #   file transcription.
          #
          #   @param languages [Array<String>] Languages accepted on this service surface, in the provider's native code format
          #
          #   @param type [Symbol, Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType::Type] Service surface a model is available on. `ai_assistant` is the STT surface confi

          # Service surface a model is available on. `ai_assistant` is the STT surface
          # configured via Call Control voice-assistant transcription; it covers both
          # live-streaming and non-streaming/batch models (matching the
          # `TranscriptionConfig.model` enum on `call-control` voice assistants).
          #
          # @see Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType#type
          module Type
            extend Telnyx::Internal::Type::Enum

            STREAMING = :streaming
            FILE_BASED = :file_based
            IN_CALL = :in_call
            AI_ASSISTANT = :ai_assistant

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end

      # @see Telnyx::Models::SpeechToTextListProvidersResponse#meta
      class Meta < Telnyx::Internal::Type::BaseModel
        # @!attribute total
        #   Total number of entries returned.
        #
        #   @return [Integer]
        required :total, Integer

        # @!method initialize(total:)
        #   @param total [Integer] Total number of entries returned.
      end
    end
  end
end
