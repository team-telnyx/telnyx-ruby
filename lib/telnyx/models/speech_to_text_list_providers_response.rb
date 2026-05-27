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
        # @!attribute languages
        #   Languages this (provider, model) accepts, in the provider's native code format.
        #   `auto` indicates the provider performs language detection.
        #
        #   @return [Array<String>]
        required :languages, Telnyx::Internal::Type::ArrayOf[String]

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
        #   Service surfaces this (provider, model) supports.
        #
        #   @return [Array<Symbol, Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType>]
        required :service_types,
                 -> { Telnyx::Internal::Type::ArrayOf[enum: Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType] }

        # @!method initialize(languages:, model:, provider:, service_types:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::SpeechToTextListProvidersResponse::Data} for more details.
        #
        #   A (provider, model) tuple along with its supported service types and languages.
        #
        #   @param languages [Array<String>] Languages this (provider, model) accepts, in the provider's native code format.
        #
        #   @param model [String] Provider-scoped model name.
        #
        #   @param provider [String] STT provider name.
        #
        #   @param service_types [Array<Symbol, Telnyx::Models::SpeechToTextListProvidersResponse::Data::ServiceType>] Service surfaces this (provider, model) supports.

        # Service surface a model is available on.
        module ServiceType
          extend Telnyx::Internal::Type::Enum

          STREAMING = :streaming
          FILE_TRANSCRIPTION = :file_transcription
          IN_CALL_TRANSCRIPTION = :in_call_transcription

          # @!method self.values
          #   @return [Array<Symbol>]
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
