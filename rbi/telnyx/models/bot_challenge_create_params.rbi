# typed: strong

module Telnyx
  module Models
    class BotChallengeCreateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Telnyx::BotChallengeCreateParams, Telnyx::Internal::AnyHash)
        end

      # Name of the LLM the client is using.
      sig { returns(T.nilable(String)) }
      attr_reader :llm_model_name

      sig { params(llm_model_name: String).void }
      attr_writer :llm_model_name

      # Parameter count of the client LLM.
      sig { returns(T.nilable(String)) }
      attr_reader :llm_parameter_count

      sig { params(llm_parameter_count: String).void }
      attr_writer :llm_parameter_count

      # Quantization of the client LLM.
      sig { returns(T.nilable(String)) }
      attr_reader :llm_quantization

      sig { params(llm_quantization: String).void }
      attr_writer :llm_quantization

      sig do
        params(
          llm_model_name: String,
          llm_parameter_count: String,
          llm_quantization: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Name of the LLM the client is using.
        llm_model_name: nil,
        # Parameter count of the client LLM.
        llm_parameter_count: nil,
        # Quantization of the client LLM.
        llm_quantization: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            llm_model_name: String,
            llm_parameter_count: String,
            llm_quantization: String,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
