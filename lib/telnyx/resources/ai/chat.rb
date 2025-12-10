# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Chat
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::AI::ChatCreateCompletionParams} for more details.
        #
        # Chat with a language model. This endpoint is consistent with the
        # [OpenAI Chat Completions API](https://platform.openai.com/docs/api-reference/chat)
        # and may be used with the OpenAI JS or Python SDK.
        #
        # @overload create_completion(messages:, api_key_ref: nil, best_of: nil, early_stopping: nil, frequency_penalty: nil, guided_choice: nil, guided_json: nil, guided_regex: nil, length_penalty: nil, logprobs: nil, max_tokens: nil, min_p: nil, model: nil, n: nil, presence_penalty: nil, response_format: nil, stream: nil, temperature: nil, tool_choice: nil, tools: nil, top_logprobs: nil, top_p: nil, use_beam_search: nil, request_options: {})
        #
        # @param messages [Array<Telnyx::Models::AI::ChatCreateCompletionParams::Message>] A list of the previous chat messages for context.
        #
        # @param api_key_ref [String] If you are using an external inference provider like xAI or OpenAI, this field a
        #
        # @param best_of [Integer] This is used with `use_beam_search` to determine how many candidate beams to exp
        #
        # @param early_stopping [Boolean] This is used with `use_beam_search`. If `true`, generation stops as soon as ther
        #
        # @param frequency_penalty [Float] Higher values will penalize the model from repeating the same output tokens.
        #
        # @param guided_choice [Array<String>] If specified, the output will be exactly one of the choices.
        #
        # @param guided_json [Hash{Symbol=>Object}] Must be a valid JSON schema. If specified, the output will follow the JSON schem
        #
        # @param guided_regex [String] If specified, the output will follow the regex pattern.
        #
        # @param length_penalty [Float] This is used with `use_beam_search` to prefer shorter or longer completions.
        #
        # @param logprobs [Boolean] Whether to return log probabilities of the output tokens or not. If true, return
        #
        # @param max_tokens [Integer] Maximum number of completion tokens the model should generate.
        #
        # @param min_p [Float] This is an alternative to `top_p` that [many prefer](https://github.com/huggingf
        #
        # @param model [String] The language model to chat with.
        #
        # @param n [Float] This will return multiple choices for you instead of a single chat completion.
        #
        # @param presence_penalty [Float] Higher values will penalize the model from repeating the same output tokens.
        #
        # @param response_format [Telnyx::Models::AI::ChatCreateCompletionParams::ResponseFormat] Use this is you want to guarantee a JSON output without defining a schema. For c
        #
        # @param stream [Boolean] Whether or not to stream data-only server-sent events as they become available.
        #
        # @param temperature [Float] Adjusts the "creativity" of the model. Lower values make the model more determin
        #
        # @param tool_choice [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::ToolChoice]
        #
        # @param tools [Array<Telnyx::Models::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam, Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Retrieval>] The `function` tool type follows the same schema as the [OpenAI Chat Completions
        #
        # @param top_logprobs [Integer] This is used with `logprobs`. An integer between 0 and 20 specifying the number
        #
        # @param top_p [Float] An alternative or complement to `temperature`. This adjusts how many of the top
        #
        # @param use_beam_search [Boolean] Setting this to `true` will allow the model to [explore more completion options]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Hash{Symbol=>Object}]
        #
        # @see Telnyx::Models::AI::ChatCreateCompletionParams
        def create_completion(params)
          parsed, options = Telnyx::AI::ChatCreateCompletionParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/chat/completions",
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
