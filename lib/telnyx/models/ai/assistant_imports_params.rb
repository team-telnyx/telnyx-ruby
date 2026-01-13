# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Assistants#imports
      class AssistantImportsParams < Telnyx::Internal::Type::BaseModel
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
        #   @return [Symbol, Telnyx::Models::AI::AssistantImportsParams::Provider]
        required :provider, enum: -> { Telnyx::AI::AssistantImportsParams::Provider }

        # @!attribute import_ids
        #   Optional list of assistant IDs to import from the external provider. If not
        #   provided, all assistants will be imported.
        #
        #   @return [Array<String>, nil]
        optional :import_ids, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(api_key_ref:, provider:, import_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::AssistantImportsParams} for more details.
        #
        #   @param api_key_ref [String] Integration secret pointer that refers to the API key for the external provider.
        #
        #   @param provider [Symbol, Telnyx::Models::AI::AssistantImportsParams::Provider] The external provider to import assistants from.
        #
        #   @param import_ids [Array<String>] Optional list of assistant IDs to import from the external provider. If not prov
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # The external provider to import assistants from.
        module Provider
          extend Telnyx::Internal::Type::Enum

          ELEVENLABS = :elevenlabs
          VAPI = :vapi
          RETELL = :retell

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
