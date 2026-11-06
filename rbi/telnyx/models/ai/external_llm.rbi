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
        sig { returns(T.nilable(Telnyx::AI::AuthenticationMethod::OrSymbol)) }
        attr_reader :authentication_method

        sig do
          params(
            authentication_method: Telnyx::AI::AuthenticationMethod::OrSymbol
          ).void
        end
        attr_writer :authentication_method

        # Integration secret identifier for the client certificate used with certificate
        # authentication.
        sig { returns(T.nilable(String)) }
        attr_reader :certificate_ref

        sig { params(certificate_ref: String).void }
        attr_writer :certificate_ref

        # Custom HTTP headers Telnyx sets on every request to the external LLM endpoint,
        # in addition to the authentication header. Keys are header names, values are
        # static strings. At most 32 headers. Reserved names are rejected:
        # accept-encoding, authorization, connection, content-encoding, content-length,
        # content-type, cookie, expect, host, keep-alive, proxy-authenticate,
        # proxy-authorization, proxy-connection, set-cookie, te, trailer,
        # transfer-encoding, upgrade, x-host-rewrite, x-request-id, x-trace-id, and any
        # x-telnyx-_ or x-stainless-_ header; '\_' counts as '-' when names are compared.
        # Names must be valid HTTP header names (RFC 7230 token, at most 128 characters)
        # and must not repeat (case-insensitive). Values must be printable ASCII, at most
        # 4096 characters, with no leading or trailing whitespace. Values are stored as
        # plain text and returned when the assistant is retrieved.
        sig { returns(T.nilable(T::Hash[Symbol, String])) }
        attr_accessor :extra_headers

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
            authentication_method: Telnyx::AI::AuthenticationMethod::OrSymbol,
            certificate_ref: String,
            extra_headers: T.nilable(T::Hash[Symbol, String]),
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
          # Custom HTTP headers Telnyx sets on every request to the external LLM endpoint,
          # in addition to the authentication header. Keys are header names, values are
          # static strings. At most 32 headers. Reserved names are rejected:
          # accept-encoding, authorization, connection, content-encoding, content-length,
          # content-type, cookie, expect, host, keep-alive, proxy-authenticate,
          # proxy-authorization, proxy-connection, set-cookie, te, trailer,
          # transfer-encoding, upgrade, x-host-rewrite, x-request-id, x-trace-id, and any
          # x-telnyx-_ or x-stainless-_ header; '\_' counts as '-' when names are compared.
          # Names must be valid HTTP header names (RFC 7230 token, at most 128 characters)
          # and must not repeat (case-insensitive). Values must be printable ASCII, at most
          # 4096 characters, with no leading or trailing whitespace. Values are stored as
          # plain text and returned when the assistant is retrieved.
          extra_headers: nil,
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
              authentication_method: Telnyx::AI::AuthenticationMethod::OrSymbol,
              certificate_ref: String,
              extra_headers: T.nilable(T::Hash[Symbol, String]),
              forward_metadata: T::Boolean,
              llm_api_key_ref: String,
              token_retrieval_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
