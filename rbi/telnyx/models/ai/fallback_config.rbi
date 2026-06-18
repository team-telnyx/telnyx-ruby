# typed: strong

module Telnyx
  module Models
    module AI
      class FallbackConfig < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::FallbackConfig, Telnyx::Internal::AnyHash)
          end

        sig { returns(T.nilable(Telnyx::AI::ExternalLlm)) }
        attr_reader :external_llm

        sig { params(external_llm: Telnyx::AI::ExternalLlm::OrHash).void }
        attr_writer :external_llm

        # Integration secret identifier for the fallback model API key.
        sig { returns(T.nilable(String)) }
        attr_reader :llm_api_key_ref

        sig { params(llm_api_key_ref: String).void }
        attr_writer :llm_api_key_ref

        # Fallback Telnyx-hosted model to use when the primary LLM provider is
        # unavailable.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        sig do
          params(
            external_llm: Telnyx::AI::ExternalLlm::OrHash,
            llm_api_key_ref: String,
            model: String
          ).returns(T.attached_class)
        end
        def self.new(
          external_llm: nil,
          # Integration secret identifier for the fallback model API key.
          llm_api_key_ref: nil,
          # Fallback Telnyx-hosted model to use when the primary LLM provider is
          # unavailable.
          model: nil
        )
        end

        sig do
          override.returns(
            {
              external_llm: Telnyx::AI::ExternalLlm,
              llm_api_key_ref: String,
              model: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
