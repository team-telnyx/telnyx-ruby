# typed: strong

module Telnyx
  module Resources
    class AI
      class Anthropic
        class V1
          # Send a message to a language model using the Anthropic Messages API format. This
          # endpoint is compatible with the
          # [Anthropic Messages API](https://docs.anthropic.com/en/api/messages) and may be
          # used with the Anthropic JS or Python SDK by setting the base URL to
          # `https://api.telnyx.com/v2/ai/anthropic`.
          #
          # The endpoint translates Anthropic-format requests into Telnyx's inference
          # internals, then translates the response back to the Anthropic message shape.
          # Streaming responses use Anthropic SSE event types (`message_start`,
          # `content_block_start`, `content_block_delta`, `content_block_stop`,
          # `message_delta`, `message_stop`).
          sig do
            params(
              max_tokens: Integer,
              messages: T::Array[T::Hash[Symbol, T.anything]],
              model: String,
              api_key_ref: String,
              billing_group_id: String,
              fallback_config: T::Hash[Symbol, T.anything],
              max_retries: Integer,
              mcp_servers: T::Array[T::Hash[Symbol, T.anything]],
              metadata: T::Hash[Symbol, T.anything],
              service_tier: String,
              stop_sequences: T::Array[String],
              stream: T::Boolean,
              system_:
                Telnyx::AI::Anthropic::V1MessagesParams::System::Variants,
              temperature: Float,
              thinking: T::Hash[Symbol, T.anything],
              timeout: Float,
              tool_choice: T::Hash[Symbol, T.anything],
              tools: T::Array[T::Hash[Symbol, T.anything]],
              top_k: Integer,
              top_p: Float,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T::Hash[Symbol, T.anything])
          end
          def messages(
            # The maximum number of tokens to generate in the response.
            max_tokens:,
            # The messages to send to the model, following the
            # [Anthropic Messages API](https://docs.anthropic.com/en/api/messages) format.
            messages:,
            # The model to use for generating the response, for example
            # `zai-org/GLM-5.3-Flash` or another model available from the Telnyx models
            # endpoint.
            model:,
            # If you are using an external inference provider, this field allows you to pass
            # along a reference to your API key. After creating an
            # [integration secret](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
            # for your API key, pass the secret's `identifier` in this field.
            api_key_ref: nil,
            # The billing group ID to associate with this request.
            billing_group_id: nil,
            # Configuration for model fallback behavior when the primary model is unavailable.
            fallback_config: nil,
            # Maximum number of retries for the request.
            max_retries: nil,
            # List of MCP (Model Context Protocol) servers to make available to the model.
            mcp_servers: nil,
            # An object describing metadata about the request.
            metadata: nil,
            # The service tier to use for this request. Supported values vary by model; use
            # the Telnyx models endpoint and inspect the model's `service_tiers` field. If
            # omitted, Telnyx-hosted models use `default`.
            service_tier: nil,
            # Custom sequences that will cause the model to stop generating.
            stop_sequences: nil,
            # Whether to stream the response as Anthropic-format Server-Sent Events.
            stream: nil,
            # System prompt. Can be a string or an array of content blocks following the
            # Anthropic API format.
            system_: nil,
            # Amount of randomness injected into the response. Ranges from 0 to 1.
            temperature: nil,
            # Extended thinking configuration for models that support it. Set `type` to
            # `enabled` to turn on extended thinking.
            thinking: nil,
            # Request timeout in seconds.
            timeout: nil,
            # Controls how the model uses tools, following the Anthropic API format.
            tool_choice: nil,
            # Definitions of tools that the model may use, following the Anthropic API format.
            tools: nil,
            # Top-k sampling parameter. Only sample from the top K options for each subsequent
            # token.
            top_k: nil,
            # Nucleus sampling parameter. Use temperature or top_p, but not both.
            top_p: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: Telnyx::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
