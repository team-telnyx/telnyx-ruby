# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      class ChatCompletionRequest < Telnyx::Internal::Type::BaseModel
        # @!attribute messages
        #   A list of the previous chat messages for context.
        #
        #   @return [Array<Telnyx::Models::AI::ChatCompletionRequest::Message>]
        required :messages, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::ChatCompletionRequest::Message] }

        # @!attribute api_key_ref
        #   If you are using an external inference provider like xAI or OpenAI, this field
        #   allows you to pass along a reference to your API key. After creating an
        #   [integration secret](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        #   for you API key, pass the secret's `identifier` in this field.
        #
        #   @return [String, nil]
        optional :api_key_ref, String

        # @!attribute best_of
        #   This is used with `use_beam_search` to determine how many candidate beams to
        #   explore.
        #
        #   @return [Integer, nil]
        optional :best_of, Integer

        # @!attribute early_stopping
        #   This is used with `use_beam_search`. If `true`, generation stops as soon as
        #   there are `best_of` complete candidates; if `false`, a heuristic is applied and
        #   the generation stops when is it very unlikely to find better candidates.
        #
        #   @return [Boolean, nil]
        optional :early_stopping, Telnyx::Internal::Type::Boolean

        # @!attribute enable_thinking
        #   Whether to enable the thinking/reasoning phase for models that support it (e.g.,
        #   QwQ, Qwen3). When set to false, the model will skip the internal reasoning step
        #   and respond directly, which can reduce latency. Defaults to true.
        #
        #   @return [Boolean, nil]
        optional :enable_thinking, Telnyx::Internal::Type::Boolean

        # @!attribute frequency_penalty
        #   Higher values will penalize the model from repeating the same output tokens.
        #
        #   @return [Float, nil]
        optional :frequency_penalty, Float

        # @!attribute length_penalty
        #   This is used with `use_beam_search` to prefer shorter or longer completions.
        #
        #   @return [Float, nil]
        optional :length_penalty, Float

        # @!attribute logprobs
        #   Whether to return log probabilities of the output tokens or not. If true,
        #   returns the log probabilities of each output token returned in the `content` of
        #   `message`.
        #
        #   @return [Boolean, nil]
        optional :logprobs, Telnyx::Internal::Type::Boolean

        # @!attribute max_tokens
        #   Maximum number of completion tokens the model should generate.
        #
        #   @return [Integer, nil]
        optional :max_tokens, Integer

        # @!attribute min_p
        #   This is an alternative to `top_p` that
        #   [many prefer](https://github.com/huggingface/transformers/issues/27670). Must be
        #   in [0, 1].
        #
        #   @return [Float, nil]
        optional :min_p, Float

        # @!attribute mode
        #   How strictly `region` is applied. `preferred` (the default when `region` is set)
        #   tries that region first and falls back to another when the model cannot be
        #   served there, so a request that would have succeeded still succeeds. `strict`
        #   pins the request: it is served from that region or it fails with a 422, never
        #   redirected to another region. Requires `region`.
        #
        #   @return [Symbol, Telnyx::Models::AI::ChatCompletionRequest::Mode, nil]
        optional :mode, enum: -> { Telnyx::AI::ChatCompletionRequest::Mode }

        # @!attribute model
        #   The language model to chat with.
        #
        #   @return [String, nil]
        optional :model, String

        # @!attribute n
        #   This will return multiple choices for you instead of a single chat completion.
        #
        #   @return [Float, nil]
        optional :n, Float

        # @!attribute presence_penalty
        #   Higher values will penalize the model from repeating the same output tokens.
        #
        #   @return [Float, nil]
        optional :presence_penalty, Float

        # @!attribute reasoning_effort
        #   Controls the reasoning effort for models that support it. When set, the model
        #   spends more or less compute on internal reasoning before generating its
        #   response. Supported values: none, minimal, low, medium, high, xhigh, max. Not
        #   all models support all values; unsupported values are rejected with a 400 error.
        #   When omitted, reasoning models use their default effort level.
        #
        #   @return [Symbol, Telnyx::Models::AI::ChatCompletionRequest::ReasoningEffort, nil]
        optional :reasoning_effort, enum: -> { Telnyx::AI::ChatCompletionRequest::ReasoningEffort }

        # @!attribute region
        #   Optional data-residency region the request should be served from, using the same
        #   vocabulary as your account's Data Locality setting. Behavior depends on `mode`.
        #   Supported for Telnyx-hosted models only: a request routed to an external
        #   provider never passes through Telnyx model routing, so a region cannot be
        #   enforced for it. Omit for today's latency-based routing.
        #
        #   @return [Symbol, Telnyx::Models::AI::ChatCompletionRequest::Region, nil]
        optional :region, enum: -> { Telnyx::AI::ChatCompletionRequest::Region }

        # @!attribute response_format
        #   Controls the format of the model output. `json_object` guarantees valid JSON
        #   output without defining a schema; `json_schema` constrains the output to the
        #   JSON schema you supply via the `json_schema` property and is the supported way
        #   to get guaranteed structured output on Telnyx-hosted models.
        #
        #   @return [Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText, Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject, Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam, nil]
        optional :response_format, union: -> { Telnyx::AI::ChatCompletionRequest::ResponseFormat }

        # @!attribute seed
        #   If specified, the system will make a best effort to sample deterministically,
        #   such that repeated requests with the same `seed` and parameters should return
        #   the same result.
        #
        #   @return [Integer, nil]
        optional :seed, Integer

        # @!attribute service_tier
        #   The service tier to use for this request. Supported values vary by model; use
        #   `GET /v2/ai/openai/models` and inspect the model's `service_tiers` field. If
        #   omitted, Telnyx-hosted models use `default`.
        #
        #   @return [String, nil]
        optional :service_tier, String

        # @!attribute stop
        #   Up to 4 sequences where the API will stop generating further tokens. The
        #   returned text will not contain the stop sequence.
        #
        #   @return [String, Array<String>, nil]
        optional :stop, union: -> { Telnyx::AI::ChatCompletionRequest::Stop }

        # @!attribute stream
        #   Whether or not to stream data-only server-sent events as they become available.
        #
        #   @return [Boolean, nil]
        optional :stream, Telnyx::Internal::Type::Boolean

        # @!attribute temperature
        #   Adjusts the "creativity" of the model. Lower values make the model more
        #   deterministic and repetitive, while higher values make the model more random and
        #   creative.
        #
        #   @return [Float, nil]
        optional :temperature, Float

        # @!attribute tool_choice
        #
        #   @return [Symbol, Telnyx::Models::AI::ChatCompletionRequest::ToolChoice, nil]
        optional :tool_choice, enum: -> { Telnyx::AI::ChatCompletionRequest::ToolChoice }

        # @!attribute tools
        #   The `function` tool type follows the same schema as the
        #   [OpenAI Chat Completions API](https://platform.openai.com/docs/api-reference/chat).
        #   The `retrieval` tool type is unique to Telnyx. You may pass a list of
        #   [embedded storage buckets](https://developers.telnyx.com/api-reference/embeddings/embed-documents)
        #   for retrieval-augmented generation.
        #
        #   @return [Array<Telnyx::Models::AI::ChatCompletionRequest::Tool::Function, Telnyx::Models::AI::ChatCompletionRequest::Tool::Retrieval>, nil]
        optional :tools, -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::ChatCompletionRequest::Tool] }

        # @!attribute top_logprobs
        #   This is used with `logprobs`. An integer between 0 and 20 specifying the number
        #   of most likely tokens to return at each token position, each with an associated
        #   log probability.
        #
        #   @return [Integer, nil]
        optional :top_logprobs, Integer

        # @!attribute top_p
        #   An alternative or complement to `temperature`. This adjusts how many of the top
        #   possibilities to consider.
        #
        #   @return [Float, nil]
        optional :top_p, Float

        # @!attribute use_beam_search
        #   Setting this to `true` will allow the model to
        #   [explore more completion options](https://huggingface.co/blog/how-to-generate#beam-search).
        #   This is not supported by OpenAI.
        #
        #   @return [Boolean, nil]
        optional :use_beam_search, Telnyx::Internal::Type::Boolean

        # @!method initialize(messages:, api_key_ref: nil, best_of: nil, early_stopping: nil, enable_thinking: nil, frequency_penalty: nil, length_penalty: nil, logprobs: nil, max_tokens: nil, min_p: nil, mode: nil, model: nil, n: nil, presence_penalty: nil, reasoning_effort: nil, region: nil, response_format: nil, seed: nil, service_tier: nil, stop: nil, stream: nil, temperature: nil, tool_choice: nil, tools: nil, top_logprobs: nil, top_p: nil, use_beam_search: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ChatCompletionRequest} for more details.
        #
        #   @param messages [Array<Telnyx::Models::AI::ChatCompletionRequest::Message>] A list of the previous chat messages for context.
        #
        #   @param api_key_ref [String] If you are using an external inference provider like xAI or OpenAI, this field a
        #
        #   @param best_of [Integer] This is used with `use_beam_search` to determine how many candidate beams to exp
        #
        #   @param early_stopping [Boolean] This is used with `use_beam_search`. If `true`, generation stops as soon as ther
        #
        #   @param enable_thinking [Boolean] Whether to enable the thinking/reasoning phase for models that support it (e.g.,
        #
        #   @param frequency_penalty [Float] Higher values will penalize the model from repeating the same output tokens.
        #
        #   @param length_penalty [Float] This is used with `use_beam_search` to prefer shorter or longer completions.
        #
        #   @param logprobs [Boolean] Whether to return log probabilities of the output tokens or not. If true, return
        #
        #   @param max_tokens [Integer] Maximum number of completion tokens the model should generate.
        #
        #   @param min_p [Float] This is an alternative to `top_p` that [many prefer](https://github.com/huggingf
        #
        #   @param mode [Symbol, Telnyx::Models::AI::ChatCompletionRequest::Mode] How strictly `region` is applied. `preferred` (the default when `region` is set)
        #
        #   @param model [String] The language model to chat with.
        #
        #   @param n [Float] This will return multiple choices for you instead of a single chat completion.
        #
        #   @param presence_penalty [Float] Higher values will penalize the model from repeating the same output tokens.
        #
        #   @param reasoning_effort [Symbol, Telnyx::Models::AI::ChatCompletionRequest::ReasoningEffort] Controls the reasoning effort for models that support it. When set, the model sp
        #
        #   @param region [Symbol, Telnyx::Models::AI::ChatCompletionRequest::Region] Optional data-residency region the request should be served from, using the same
        #
        #   @param response_format [Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText, Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject, Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam] Controls the format of the model output. `json_object` guarantees valid JSON out
        #
        #   @param seed [Integer] If specified, the system will make a best effort to sample deterministically, su
        #
        #   @param service_tier [String] The service tier to use for this request. Supported values vary by model; use `G
        #
        #   @param stop [String, Array<String>] Up to 4 sequences where the API will stop generating further tokens. The returne
        #
        #   @param stream [Boolean] Whether or not to stream data-only server-sent events as they become available.
        #
        #   @param temperature [Float] Adjusts the "creativity" of the model. Lower values make the model more determin
        #
        #   @param tool_choice [Symbol, Telnyx::Models::AI::ChatCompletionRequest::ToolChoice]
        #
        #   @param tools [Array<Telnyx::Models::AI::ChatCompletionRequest::Tool::Function, Telnyx::Models::AI::ChatCompletionRequest::Tool::Retrieval>] The `function` tool type follows the same schema as the [OpenAI Chat Completions
        #
        #   @param top_logprobs [Integer] This is used with `logprobs`. An integer between 0 and 20 specifying the number
        #
        #   @param top_p [Float] An alternative or complement to `temperature`. This adjusts how many of the top
        #
        #   @param use_beam_search [Boolean] Setting this to `true` will allow the model to [explore more completion options]

        class Message < Telnyx::Internal::Type::BaseModel
          # @!attribute content
          #
          #   @return [String, Array<Telnyx::Models::AI::ChatCompletionRequest::Message::Content::TextAndImageArray>]
          required :content, union: -> { Telnyx::AI::ChatCompletionRequest::Message::Content }

          # @!attribute role
          #
          #   @return [Symbol, Telnyx::Models::AI::ChatCompletionRequest::Message::Role]
          required :role, enum: -> { Telnyx::AI::ChatCompletionRequest::Message::Role }

          # @!method initialize(content:, role:)
          #   @param content [String, Array<Telnyx::Models::AI::ChatCompletionRequest::Message::Content::TextAndImageArray>]
          #   @param role [Symbol, Telnyx::Models::AI::ChatCompletionRequest::Message::Role]

          # @see Telnyx::Models::AI::ChatCompletionRequest::Message#content
          module Content
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::ChatCompletionRequest::Message::Content::TextAndImage2DArray }

            class TextAndImageArray < Telnyx::Internal::Type::BaseModel
              # @!attribute type
              #
              #   @return [Symbol, Telnyx::Models::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type]
              required :type, enum: -> { Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type }

              # @!attribute image_url
              #
              #   @return [String, nil]
              optional :image_url, String

              # @!attribute text
              #
              #   @return [String, nil]
              optional :text, String

              # @!method initialize(type:, image_url: nil, text: nil)
              #   @param type [Symbol, Telnyx::Models::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type]
              #   @param image_url [String]
              #   @param text [String]

              # @see Telnyx::Models::AI::ChatCompletionRequest::Message::Content::TextAndImageArray#type
              module Type
                extend Telnyx::Internal::Type::Enum

                TEXT = :text
                IMAGE_URL = :image_url

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(String, Array<Telnyx::Models::AI::ChatCompletionRequest::Message::Content::TextAndImageArray>)]

            # @type [Telnyx::Internal::Type::Converter]
            TextAndImage2DArray =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray
              }]
          end

          # @see Telnyx::Models::AI::ChatCompletionRequest::Message#role
          module Role
            extend Telnyx::Internal::Type::Enum

            SYSTEM = :system
            USER = :user
            ASSISTANT = :assistant
            TOOL = :tool

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

        # How strictly `region` is applied. `preferred` (the default when `region` is set)
        # tries that region first and falls back to another when the model cannot be
        # served there, so a request that would have succeeded still succeeds. `strict`
        # pins the request: it is served from that region or it fails with a 422, never
        # redirected to another region. Requires `region`.
        #
        # @see Telnyx::Models::AI::ChatCompletionRequest#mode
        module Mode
          extend Telnyx::Internal::Type::Enum

          PREFERRED = :preferred
          STRICT = :strict

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Controls the reasoning effort for models that support it. When set, the model
        # spends more or less compute on internal reasoning before generating its
        # response. Supported values: none, minimal, low, medium, high, xhigh, max. Not
        # all models support all values; unsupported values are rejected with a 400 error.
        # When omitted, reasoning models use their default effort level.
        #
        # @see Telnyx::Models::AI::ChatCompletionRequest#reasoning_effort
        module ReasoningEffort
          extend Telnyx::Internal::Type::Enum

          NONE = :none
          MINIMAL = :minimal
          LOW = :low
          MEDIUM = :medium
          HIGH = :high
          XHIGH = :xhigh
          MAX = :max

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Optional data-residency region the request should be served from, using the same
        # vocabulary as your account's Data Locality setting. Behavior depends on `mode`.
        # Supported for Telnyx-hosted models only: a request routed to an external
        # provider never passes through Telnyx model routing, so a region cannot be
        # enforced for it. Omit for today's latency-based routing.
        #
        # @see Telnyx::Models::AI::ChatCompletionRequest#region
        module Region
          extend Telnyx::Internal::Type::Enum

          USA = :USA
          EU = :EU
          AUS = :AUS
          UAE = :UAE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Controls the format of the model output. `json_object` guarantees valid JSON
        # output without defining a schema; `json_schema` constrains the output to the
        # JSON schema you supply via the `json_schema` property and is the supported way
        # to get guaranteed structured output on Telnyx-hosted models.
        #
        # @see Telnyx::Models::AI::ChatCompletionRequest#response_format
        module ResponseFormat
          extend Telnyx::Internal::Type::Union

          # Plain text output.
          variant -> { Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText }

          # JSON mode: the model output is valid JSON, without a schema.
          variant -> { Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject }

          # Structured output: the model output is constrained to the JSON schema supplied in `json_schema`.
          variant -> { Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam }

          class ResponseFormatText < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [Symbol, :text]
            required :type, const: :text

            # @!method initialize(type: :text)
            #   Plain text output.
            #
            #   @param type [Symbol, :text]
          end

          class ResponseFormatJsonObject < Telnyx::Internal::Type::BaseModel
            # @!attribute type
            #
            #   @return [Symbol, :json_object]
            required :type, const: :json_object

            # @!method initialize(type: :json_object)
            #   JSON mode: the model output is valid JSON, without a schema.
            #
            #   @param type [Symbol, :json_object]
          end

          class ResponseFormatJsonSchemaParam < Telnyx::Internal::Type::BaseModel
            # @!attribute json_schema
            #   The JSON schema configuration, required when `type` is `json_schema`. Matches
            #   the
            #   [OpenAI structured outputs](https://platform.openai.com/docs/guides/structured-outputs)
            #   `json_schema` response format.
            #
            #   @return [Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema]
            required :json_schema,
                     -> { Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema }

            # @!attribute type
            #
            #   @return [Symbol, :json_schema]
            required :type, const: :json_schema

            # @!method initialize(json_schema:, type: :json_schema)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam}
            #   for more details.
            #
            #   Structured output: the model output is constrained to the JSON schema supplied
            #   in `json_schema`.
            #
            #   @param json_schema [Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema] The JSON schema configuration, required when `type` is `json_schema`. Matches th
            #
            #   @param type [Symbol, :json_schema]

            # @see Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam#json_schema
            class JsonSchema < Telnyx::Internal::Type::BaseModel
              # @!attribute name
              #   The name of the response format. Used for clarity only.
              #
              #   @return [String]
              required :name, String

              # @!attribute description
              #   A description of what the response format is for, typically used to guide the
              #   model.
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute schema
              #   The JSON schema the model output must conform to. A valid
              #   [JSON Schema](https://json-schema.org) object, e.g. a Pydantic
              #   `model_json_schema()` export.
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :schema, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

              # @!attribute strict
              #   Enables strict schema adherence when supported by the model. If the generated
              #   output does not match the provided schema, the request fails instead of
              #   returning non-conformant output.
              #
              #   @return [Boolean, nil]
              optional :strict, Telnyx::Internal::Type::Boolean

              # @!method initialize(name:, description: nil, schema: nil, strict: nil)
              #   Some parameter documentations has been truncated, see
              #   {Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema}
              #   for more details.
              #
              #   The JSON schema configuration, required when `type` is `json_schema`. Matches
              #   the
              #   [OpenAI structured outputs](https://platform.openai.com/docs/guides/structured-outputs)
              #   `json_schema` response format.
              #
              #   @param name [String] The name of the response format. Used for clarity only.
              #
              #   @param description [String] A description of what the response format is for, typically used to guide the mo
              #
              #   @param schema [Hash{Symbol=>Object}] The JSON schema the model output must conform to. A valid [JSON Schema](https://
              #
              #   @param strict [Boolean] Enables strict schema adherence when supported by the model. If the generated ou
            end
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText, Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject, Telnyx::Models::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam)]
        end

        # Up to 4 sequences where the API will stop generating further tokens. The
        # returned text will not contain the stop sequence.
        #
        # @see Telnyx::Models::AI::ChatCompletionRequest#stop
        module Stop
          extend Telnyx::Internal::Type::Union

          variant String

          variant -> { Telnyx::Models::AI::ChatCompletionRequest::Stop::StringArray }

          # @!method self.variants
          #   @return [Array(String, Array<String>)]

          # @type [Telnyx::Internal::Type::Converter]
          StringArray = Telnyx::Internal::Type::ArrayOf[String]
        end

        # @see Telnyx::Models::AI::ChatCompletionRequest#tool_choice
        module ToolChoice
          extend Telnyx::Internal::Type::Enum

          NONE = :none
          AUTO = :auto
          REQUIRED = :required

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        module Tool
          extend Telnyx::Internal::Type::Union

          discriminator :type

          variant :function, -> { Telnyx::AI::ChatCompletionRequest::Tool::Function }

          variant :retrieval, -> { Telnyx::AI::ChatCompletionRequest::Tool::Retrieval }

          class Function < Telnyx::Internal::Type::BaseModel
            # @!attribute function
            #
            #   @return [Telnyx::Models::AI::OpenAI::FunctionDefinition]
            required :function, -> { Telnyx::AI::OpenAI::FunctionDefinition }

            # @!attribute type
            #
            #   @return [Symbol, :function]
            required :type, const: :function

            # @!method initialize(function:, type: :function)
            #   @param function [Telnyx::Models::AI::OpenAI::FunctionDefinition]
            #   @param type [Symbol, :function]
          end

          class Retrieval < Telnyx::Internal::Type::BaseModel
            # @!attribute retrieval
            #
            #   @return [Telnyx::Models::AI::BucketIDs]
            required :retrieval, -> { Telnyx::AI::BucketIDs }

            # @!attribute type
            #
            #   @return [Symbol, :retrieval]
            required :type, const: :retrieval

            # @!method initialize(retrieval:, type: :retrieval)
            #   @param retrieval [Telnyx::Models::AI::BucketIDs]
            #   @param type [Symbol, :retrieval]
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::ChatCompletionRequest::Tool::Function, Telnyx::Models::AI::ChatCompletionRequest::Tool::Retrieval)]
        end
      end
    end
  end
end
