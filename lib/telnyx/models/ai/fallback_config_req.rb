# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class FallbackConfigReq < Telnyx::Internal::Type::BaseModel
        # @!attribute external_llm
        #
        #   @return [Telnyx::Models::AI::ExternalLlmReq, nil]
        optional :external_llm, -> { Telnyx::AI::ExternalLlmReq }

        # @!attribute llm_api_key_ref
        #   Integration secret identifier for the fallback model API key.
        #
        #   @return [String, nil]
        optional :llm_api_key_ref, String

        # @!attribute model
        #   Fallback Telnyx-hosted model to use when the primary LLM provider is
        #   unavailable.
        #
        #   @return [String, nil]
        optional :model, String

        # @!method initialize(external_llm: nil, llm_api_key_ref: nil, model: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::FallbackConfigReq} for more details.
        #
        #   @param external_llm [Telnyx::Models::AI::ExternalLlmReq]
        #
        #   @param llm_api_key_ref [String] Integration secret identifier for the fallback model API key.
        #
        #   @param model [String] Fallback Telnyx-hosted model to use when the primary LLM provider is unavailable
      end
    end
  end
end
