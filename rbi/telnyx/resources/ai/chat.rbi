# typed: strong

module Telnyx
  module Resources
    class AI
      class Chat
        # Chat with a language model. This endpoint is consistent with the
        # [OpenAI Chat Completions API](https://platform.openai.com/docs/api-reference/chat)
        # and may be used with the OpenAI JS or Python SDK.
        sig do
          params(
            messages:
              T::Array[Telnyx::AI::ChatCreateCompletionParams::Message::OrHash],
            api_key_ref: String,
            best_of: Integer,
            early_stopping: T::Boolean,
            frequency_penalty: Float,
            guided_choice: T::Array[String],
            guided_json: T::Hash[Symbol, T.anything],
            guided_regex: String,
            length_penalty: Float,
            logprobs: T::Boolean,
            max_tokens: Integer,
            min_p: Float,
            model: String,
            n: Float,
            presence_penalty: Float,
            response_format:
              Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::OrHash,
            stream: T::Boolean,
            temperature: Float,
            tool_choice:
              Telnyx::AI::ChatCreateCompletionParams::ToolChoice::OrSymbol,
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::ChatCreateCompletionParams::Tool::Function::OrHash,
                  Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::OrHash
                )
              ],
            top_logprobs: Integer,
            top_p: Float,
            use_beam_search: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def create_completion(
          # A list of the previous chat messages for context.
          messages:,
          # If you are using an external inference provider like xAI or OpenAI, this field
          # allows you to pass along a reference to your API key. After creating an
          # [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
          # for you API key, pass the secret's `identifier` in this field.
          api_key_ref: nil,
          # This is used with `use_beam_search` to determine how many candidate beams to
          # explore.
          best_of: nil,
          # This is used with `use_beam_search`. If `true`, generation stops as soon as
          # there are `best_of` complete candidates; if `false`, a heuristic is applied and
          # the generation stops when is it very unlikely to find better candidates.
          early_stopping: nil,
          # Higher values will penalize the model from repeating the same output tokens.
          frequency_penalty: nil,
          # If specified, the output will be exactly one of the choices.
          guided_choice: nil,
          # Must be a valid JSON schema. If specified, the output will follow the JSON
          # schema.
          guided_json: nil,
          # If specified, the output will follow the regex pattern.
          guided_regex: nil,
          # This is used with `use_beam_search` to prefer shorter or longer completions.
          length_penalty: nil,
          # Whether to return log probabilities of the output tokens or not. If true,
          # returns the log probabilities of each output token returned in the `content` of
          # `message`.
          logprobs: nil,
          # Maximum number of completion tokens the model should generate.
          max_tokens: nil,
          # This is an alternative to `top_p` that
          # [many prefer](https://github.com/huggingface/transformers/issues/27670). Must be
          # in [0, 1].
          min_p: nil,
          # The language model to chat with.
          model: nil,
          # This will return multiple choices for you instead of a single chat completion.
          n: nil,
          # Higher values will penalize the model from repeating the same output tokens.
          presence_penalty: nil,
          # Use this is you want to guarantee a JSON output without defining a schema. For
          # control over the schema, use `guided_json`.
          response_format: nil,
          # Whether or not to stream data-only server-sent events as they become available.
          stream: nil,
          # Adjusts the "creativity" of the model. Lower values make the model more
          # deterministic and repetitive, while higher values make the model more random and
          # creative.
          temperature: nil,
          tool_choice: nil,
          # The `function` tool type follows the same schema as the
          # [OpenAI Chat Completions API](https://platform.openai.com/docs/api-reference/chat).
          # The `retrieval` tool type is unique to Telnyx. You may pass a list of
          # [embedded storage buckets](https://developers.telnyx.com/api-reference/embeddings/embed-documents)
          # for retrieval-augmented generation.
          tools: nil,
          # This is used with `logprobs`. An integer between 0 and 20 specifying the number
          # of most likely tokens to return at each token position, each with an associated
          # log probability.
          top_logprobs: nil,
          # An alternative or complement to `temperature`. This adjusts how many of the top
          # possibilities to consider.
          top_p: nil,
          # Setting this to `true` will allow the model to
          # [explore more completion options](https://huggingface.co/blog/how-to-generate#beam-search).
          # This is not supported by OpenAI.
          use_beam_search: nil,
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
