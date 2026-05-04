# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ExternalLlm < Telnyx::Internal::Type::BaseModel
        # @!attribute base_url
        #   Base URL for the external LLM endpoint.
        #
        #   @return [String]
        required :base_url, String

        # @!attribute model
        #   Model identifier to use with the external LLM endpoint.
        #
        #   @return [String]
        required :model, String

        # @!attribute authentication_method
        #   Authentication method used when connecting to the external LLM endpoint.
        #
        #   @return [Symbol, Telnyx::Models::AI::ExternalLlm::AuthenticationMethod, nil]
        optional :authentication_method, enum: -> { Telnyx::AI::ExternalLlm::AuthenticationMethod }

        # @!attribute certificate_ref
        #   Integration secret identifier for the client certificate used with certificate
        #   authentication.
        #
        #   @return [String, nil]
        optional :certificate_ref, String

        # @!attribute forward_metadata
        #   When `true`, Telnyx forwards the assistant's dynamic variables to the external
        #   LLM endpoint as a top-level `extra_metadata` object on the chat completion
        #   request body. Defaults to `false`. Example payload sent to the external
        #   endpoint:
        #   `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
        #   Distinct from OpenAI's native `metadata` field, which has its own size and type
        #   limits.
        #
        #   @return [Boolean, nil]
        optional :forward_metadata, Telnyx::Internal::Type::Boolean

        # @!attribute llm_api_key_ref
        #   Integration secret identifier for the external LLM API key.
        #
        #   @return [String, nil]
        optional :llm_api_key_ref, String

        # @!attribute token_retrieval_url
        #   URL used to retrieve an access token when certificate authentication is enabled.
        #
        #   @return [String, nil]
        optional :token_retrieval_url, String

        # @!method initialize(base_url:, model:, authentication_method: nil, certificate_ref: nil, forward_metadata: nil, llm_api_key_ref: nil, token_retrieval_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ExternalLlm} for more details.
        #
        #   @param base_url [String] Base URL for the external LLM endpoint.
        #
        #   @param model [String] Model identifier to use with the external LLM endpoint.
        #
        #   @param authentication_method [Symbol, Telnyx::Models::AI::ExternalLlm::AuthenticationMethod] Authentication method used when connecting to the external LLM endpoint.
        #
        #   @param certificate_ref [String] Integration secret identifier for the client certificate used with certificate a
        #
        #   @param forward_metadata [Boolean] When `true`, Telnyx forwards the assistant's dynamic variables to the external L
        #
        #   @param llm_api_key_ref [String] Integration secret identifier for the external LLM API key.
        #
        #   @param token_retrieval_url [String] URL used to retrieve an access token when certificate authentication is enabled.

        # Authentication method used when connecting to the external LLM endpoint.
        #
        # @see Telnyx::Models::AI::ExternalLlm#authentication_method
        module AuthenticationMethod
          extend Telnyx::Internal::Type::Enum

          TOKEN = :token
          CERTIFICATE = :certificate

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
