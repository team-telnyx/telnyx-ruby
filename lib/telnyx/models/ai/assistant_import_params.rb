# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#import
      class AssistantImportParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute api_key_ref
        #   Integration secret pointer that refers to the API key for the external provider.
        #   This should be an identifier for an integration secret created via
        #   /v2/integration_secrets.
        #
        #   @return [String]
        required :api_key_ref, String

        # @!attribute provider
        #   The external provider to import assistants from.
        #
        #   @return [Symbol, Telnyx::Models::AI::AssistantImportParams::Provider]
        required :provider, enum: -> { Telnyx::AI::AssistantImportParams::Provider }

        # @!method initialize(api_key_ref:, provider:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantImportParams} for more details.
        #
        #   @param api_key_ref [String] Integration secret pointer that refers to the API key for the external provider.
        #
        #   @param provider [Symbol, Telnyx::Models::AI::AssistantImportParams::Provider] The external provider to import assistants from.
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The external provider to import assistants from.
        module Provider
          extend Telnyx::Internal::Type::Enum

          ELEVENLABS = :elevenlabs
          VAPI = :vapi

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
