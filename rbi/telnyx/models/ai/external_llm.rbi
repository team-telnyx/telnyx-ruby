# typed: strong

module Telnyx
  module Models
    module AI
      class ExternalLlm < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ExternalLlm, Telnyx::Internal::AnyHash)
          end

        # Base URL for the external LLM endpoint.
        sig { returns(String) }
        attr_accessor :base_url

        # Model identifier to use with the external LLM endpoint.
        sig { returns(String) }
        attr_accessor :model

        # Authentication method used when connecting to the external LLM endpoint.
        sig do
          returns(
            T.nilable(
              Telnyx::AI::ExternalLlm::AuthenticationMethod::TaggedSymbol
            )
          )
        end
        attr_reader :authentication_method

        sig do
          params(
            authentication_method:
              Telnyx::AI::ExternalLlm::AuthenticationMethod::OrSymbol
          ).void
        end
        attr_writer :authentication_method

        # Integration secret identifier for the client certificate used with certificate
        # authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :certificate_ref

        sig { params(certificate_ref: String).void }
        attr_writer :certificate_ref

        # When `true`, Telnyx forwards the assistant's dynamic variables to the external
        # LLM endpoint as a top-level `extra_metadata` object on the chat completion
        # request body. Defaults to `false`. Example payload sent to the external
        # endpoint:
        # `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
        # Distinct from OpenAI's native `metadata` field, which has its own size and type
        # limits.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :forward_metadata

        sig { params(forward_metadata: T::Boolean).void }
        attr_writer :forward_metadata

        # Integration secret identifier for the external LLM API key.
        sig { returns(T.nilable(String)) }
        attr_reader :llm_api_key_ref

        sig { params(llm_api_key_ref: String).void }
        attr_writer :llm_api_key_ref

        # URL used to retrieve an access token when certificate authentication is enabled.
        sig { returns(T.nilable(String)) }
        attr_reader :token_retrieval_url

        sig { params(token_retrieval_url: String).void }
        attr_writer :token_retrieval_url

        sig do
          params(
            base_url: String,
            model: String,
            authentication_method:
              Telnyx::AI::ExternalLlm::AuthenticationMethod::OrSymbol,
            certificate_ref: String,
            forward_metadata: T::Boolean,
            llm_api_key_ref: String,
            token_retrieval_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Base URL for the external LLM endpoint.
          base_url:,
          # Model identifier to use with the external LLM endpoint.
          model:,
          # Authentication method used when connecting to the external LLM endpoint.
          authentication_method: nil,
          # Integration secret identifier for the client certificate used with certificate
          # authentication.
          certificate_ref: nil,
          # When `true`, Telnyx forwards the assistant's dynamic variables to the external
          # LLM endpoint as a top-level `extra_metadata` object on the chat completion
          # request body. Defaults to `false`. Example payload sent to the external
          # endpoint:
          # `{"extra_metadata": {"customer_name": "Jane", "account_id": "acct_789", "telnyx_agent_target": "+13125550100", "telnyx_end_user_target": "+13125550123"}}`.
          # Distinct from OpenAI's native `metadata` field, which has its own size and type
          # limits.
          forward_metadata: nil,
          # Integration secret identifier for the external LLM API key.
          llm_api_key_ref: nil,
          # URL used to retrieve an access token when certificate authentication is enabled.
          token_retrieval_url: nil
        )
        end

        sig do
          override.returns(
            {
              base_url: String,
              model: String,
              authentication_method:
                Telnyx::AI::ExternalLlm::AuthenticationMethod::TaggedSymbol,
              certificate_ref: String,
              forward_metadata: T::Boolean,
              llm_api_key_ref: String,
              token_retrieval_url: String
            }
          )
        end
        def to_hash
        end

        # Authentication method used when connecting to the external LLM endpoint.
        module AuthenticationMethod
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::ExternalLlm::AuthenticationMethod)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TOKEN =
            T.let(
              :token,
              Telnyx::AI::ExternalLlm::AuthenticationMethod::TaggedSymbol
            )
          CERTIFICATE =
            T.let(
              :certificate,
              Telnyx::AI::ExternalLlm::AuthenticationMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::ExternalLlm::AuthenticationMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
