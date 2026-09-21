# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BotChallenge#create
    class BotChallengeCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute llm_model_name
      #   Name of the LLM the client is using.
      #
      #   @return [String, nil]
      optional :llm_model_name, String

      # @!attribute llm_parameter_count
      #   Parameter count of the client LLM.
      #
      #   @return [String, nil]
      optional :llm_parameter_count, String

      # @!attribute llm_quantization
      #   Quantization of the client LLM.
      #
      #   @return [String, nil]
      optional :llm_quantization, String

      # @!method initialize(llm_model_name: nil, llm_parameter_count: nil, llm_quantization: nil, request_options: {})
      #   @param llm_model_name [String] Name of the LLM the client is using.
      #
      #   @param llm_parameter_count [String] Parameter count of the client LLM.
      #
      #   @param llm_quantization [String] Quantization of the client LLM.
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
