# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Anthropic
        class V1
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::Anthropic::V1MessagesParams} for more details.
          #
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
          #
          # @overload messages(max_tokens:, messages:, model:, api_key_ref: nil, billing_group_id: nil, fallback_config: nil, max_retries: nil, mcp_servers: nil, metadata: nil, service_tier: nil, stop_sequences: nil, stream: nil, system_: nil, temperature: nil, thinking: nil, timeout: nil, tool_choice: nil, tools: nil, top_k: nil, top_p: nil, request_options: {})
          #
          # @param max_tokens [Integer] The maximum number of tokens to generate in the response.
          #
          # @param messages [Array<Hash{Symbol=>Object}>] The messages to send to the model, following the [Anthropic Messages API](https:
          #
          # @param model [String] The model to use for generating the response, for example `zai-org/GLM-5.2` or a
          #
          # @param api_key_ref [String] If you are using an external inference provider, this field allows you to pass a
          #
          # @param billing_group_id [String] The billing group ID to associate with this request.
          #
          # @param fallback_config [Hash{Symbol=>Object}] Configuration for model fallback behavior when the primary model is unavailable.
          #
          # @param max_retries [Integer] Maximum number of retries for the request.
          #
          # @param mcp_servers [Array<Hash{Symbol=>Object}>] List of MCP (Model Context Protocol) servers to make available to the model.
          #
          # @param metadata [Hash{Symbol=>Object}] An object describing metadata about the request.
          #
          # @param service_tier [String] The service tier to use for this request. Supported values vary by model; use th
          #
          # @param stop_sequences [Array<String>] Custom sequences that will cause the model to stop generating.
          #
          # @param stream [Boolean] Whether to stream the response as Anthropic-format Server-Sent Events.
          #
          # @param system_ [String, Array<Hash{Symbol=>Object}>] System prompt. Can be a string or an array of content blocks following the Anthr
          #
          # @param temperature [Float] Amount of randomness injected into the response. Ranges from 0 to 1.
          #
          # @param thinking [Hash{Symbol=>Object}] Extended thinking configuration for models that support it. Set `type` to `enabl
          #
          # @param timeout [Float] Request timeout in seconds.
          #
          # @param tool_choice [Hash{Symbol=>Object}] Controls how the model uses tools, following the Anthropic API format.
          #
          # @param tools [Array<Hash{Symbol=>Object}>] Definitions of tools that the model may use, following the Anthropic API format.
          #
          # @param top_k [Integer] Top-k sampling parameter. Only sample from the top K options for each subsequent
          #
          # @param top_p [Float] Nucleus sampling parameter. Use temperature or top_p, but not both.
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Hash{Symbol=>Object}]
          #
          # @see Telnyx::Models::AI::Anthropic::V1MessagesParams
          def messages(params)
            parsed, options = Telnyx::AI::Anthropic::V1MessagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "ai/anthropic/v1/messages",
              body: parsed,
              model: Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
              options: options
            )
          end

          # @api private
          #
          # @param client [Telnyx::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
