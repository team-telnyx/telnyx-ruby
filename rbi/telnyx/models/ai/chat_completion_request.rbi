# typed: strong

module Telnyx
  module Models
    module AI
      class ChatCompletionRequest < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::AI::ChatCompletionRequest, Telnyx::Internal::AnyHash)
          end

        # A list of the previous chat messages for context.
        sig { returns(T::Array[Telnyx::AI::ChatCompletionRequest::Message]) }
        attr_accessor :messages

        # If you are using an external inference provider like xAI or OpenAI, this field
        # allows you to pass along a reference to your API key. After creating an
        # [integration secret](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
        # for you API key, pass the secret's `identifier` in this field.
        sig { returns(T.nilable(String)) }
        attr_reader :api_key_ref

        sig { params(api_key_ref: String).void }
        attr_writer :api_key_ref

        # This is used with `use_beam_search` to determine how many candidate beams to
        # explore.
        sig { returns(T.nilable(Integer)) }
        attr_reader :best_of

        sig { params(best_of: Integer).void }
        attr_writer :best_of

        # This is used with `use_beam_search`. If `true`, generation stops as soon as
        # there are `best_of` complete candidates; if `false`, a heuristic is applied and
        # the generation stops when is it very unlikely to find better candidates.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :early_stopping

        sig { params(early_stopping: T::Boolean).void }
        attr_writer :early_stopping

        # Whether to enable the thinking/reasoning phase for models that support it (e.g.,
        # QwQ, Qwen3). When set to false, the model will skip the internal reasoning step
        # and respond directly, which can reduce latency. Defaults to true.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :enable_thinking

        sig { params(enable_thinking: T::Boolean).void }
        attr_writer :enable_thinking

        # Higher values will penalize the model from repeating the same output tokens.
        sig { returns(T.nilable(Float)) }
        attr_reader :frequency_penalty

        sig { params(frequency_penalty: Float).void }
        attr_writer :frequency_penalty

        # This is used with `use_beam_search` to prefer shorter or longer completions.
        sig { returns(T.nilable(Float)) }
        attr_reader :length_penalty

        sig { params(length_penalty: Float).void }
        attr_writer :length_penalty

        # Whether to return log probabilities of the output tokens or not. If true,
        # returns the log probabilities of each output token returned in the `content` of
        # `message`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :logprobs

        sig { params(logprobs: T::Boolean).void }
        attr_writer :logprobs

        # Maximum number of completion tokens the model should generate.
        sig { returns(T.nilable(Integer)) }
        attr_reader :max_tokens

        sig { params(max_tokens: Integer).void }
        attr_writer :max_tokens

        # This is an alternative to `top_p` that
        # [many prefer](https://github.com/huggingface/transformers/issues/27670). Must be
        # in [0, 1].
        sig { returns(T.nilable(Float)) }
        attr_reader :min_p

        sig { params(min_p: Float).void }
        attr_writer :min_p

        # How strictly `region` is applied. `preferred` (the default when `region` is set)
        # tries that region first and falls back to another when the model cannot be
        # served there, so a request that would have succeeded still succeeds. `strict`
        # pins the request: it is served from that region or it fails with a 422, never
        # redirected to another region. Requires `region`.
        sig do
          returns(T.nilable(Telnyx::AI::ChatCompletionRequest::Mode::OrSymbol))
        end
        attr_reader :mode

        sig do
          params(mode: Telnyx::AI::ChatCompletionRequest::Mode::OrSymbol).void
        end
        attr_writer :mode

        # The language model to chat with.
        sig { returns(T.nilable(String)) }
        attr_reader :model

        sig { params(model: String).void }
        attr_writer :model

        # This will return multiple choices for you instead of a single chat completion.
        sig { returns(T.nilable(Float)) }
        attr_reader :n

        sig { params(n: Float).void }
        attr_writer :n

        # Higher values will penalize the model from repeating the same output tokens.
        sig { returns(T.nilable(Float)) }
        attr_reader :presence_penalty

        sig { params(presence_penalty: Float).void }
        attr_writer :presence_penalty

        # Controls the reasoning effort for models that support it. When set, the model
        # spends more or less compute on internal reasoning before generating its
        # response. Supported values: none, minimal, low, medium, high, xhigh, max. Not
        # all models support all values; unsupported values are rejected with a 400 error.
        # When omitted, reasoning models use their default effort level.
        sig do
          returns(
            T.nilable(
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::OrSymbol
            )
          )
        end
        attr_reader :reasoning_effort

        sig do
          params(
            reasoning_effort:
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::OrSymbol
          ).void
        end
        attr_writer :reasoning_effort

        # Optional data-residency region the request should be served from, using the same
        # vocabulary as your account's Data Locality setting. Behavior depends on `mode`.
        # Supported for Telnyx-hosted models only: a request routed to an external
        # provider never passes through Telnyx model routing, so a region cannot be
        # enforced for it. Omit for today's latency-based routing.
        sig do
          returns(
            T.nilable(Telnyx::AI::ChatCompletionRequest::Region::OrSymbol)
          )
        end
        attr_reader :region

        sig do
          params(
            region: Telnyx::AI::ChatCompletionRequest::Region::OrSymbol
          ).void
        end
        attr_writer :region

        # Controls the format of the model output. `json_object` guarantees valid JSON
        # output without defining a schema; `json_schema` constrains the output to the
        # JSON schema you supply via the `json_schema` property and is the supported way
        # to get guaranteed structured output on Telnyx-hosted models.
        sig do
          returns(
            T.nilable(
              T.any(
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText,
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject,
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam
              )
            )
          )
        end
        attr_reader :response_format

        sig do
          params(
            response_format:
              T.any(
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText::OrHash,
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject::OrHash,
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::OrHash
              )
          ).void
        end
        attr_writer :response_format

        # If specified, the system will make a best effort to sample deterministically,
        # such that repeated requests with the same `seed` and parameters should return
        # the same result.
        sig { returns(T.nilable(Integer)) }
        attr_reader :seed

        sig { params(seed: Integer).void }
        attr_writer :seed

        # The service tier to use for this request. Supported values vary by model; use
        # `GET /v2/ai/openai/models` and inspect the model's `service_tiers` field. If
        # omitted, Telnyx-hosted models use `default`.
        sig { returns(T.nilable(String)) }
        attr_reader :service_tier

        sig { params(service_tier: String).void }
        attr_writer :service_tier

        # Up to 4 sequences where the API will stop generating further tokens. The
        # returned text will not contain the stop sequence.
        sig do
          returns(T.nilable(Telnyx::AI::ChatCompletionRequest::Stop::Variants))
        end
        attr_reader :stop

        sig do
          params(stop: Telnyx::AI::ChatCompletionRequest::Stop::Variants).void
        end
        attr_writer :stop

        # Whether or not to stream data-only server-sent events as they become available.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :stream

        sig { params(stream: T::Boolean).void }
        attr_writer :stream

        # Adjusts the "creativity" of the model. Lower values make the model more
        # deterministic and repetitive, while higher values make the model more random and
        # creative.
        sig { returns(T.nilable(Float)) }
        attr_reader :temperature

        sig { params(temperature: Float).void }
        attr_writer :temperature

        sig do
          returns(
            T.nilable(Telnyx::AI::ChatCompletionRequest::ToolChoice::OrSymbol)
          )
        end
        attr_reader :tool_choice

        sig do
          params(
            tool_choice: Telnyx::AI::ChatCompletionRequest::ToolChoice::OrSymbol
          ).void
        end
        attr_writer :tool_choice

        # The `function` tool type follows the same schema as the
        # [OpenAI Chat Completions API](https://platform.openai.com/docs/api-reference/chat).
        # The `retrieval` tool type is unique to Telnyx. You may pass a list of
        # [embedded storage buckets](https://developers.telnyx.com/api-reference/embeddings/embed-documents)
        # for retrieval-augmented generation.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::AI::ChatCompletionRequest::Tool::Function,
                  Telnyx::AI::ChatCompletionRequest::Tool::Retrieval
                )
              ]
            )
          )
        end
        attr_reader :tools

        sig do
          params(
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::ChatCompletionRequest::Tool::Function::OrHash,
                  Telnyx::AI::ChatCompletionRequest::Tool::Retrieval::OrHash
                )
              ]
          ).void
        end
        attr_writer :tools

        # This is used with `logprobs`. An integer between 0 and 20 specifying the number
        # of most likely tokens to return at each token position, each with an associated
        # log probability.
        sig { returns(T.nilable(Integer)) }
        attr_reader :top_logprobs

        sig { params(top_logprobs: Integer).void }
        attr_writer :top_logprobs

        # An alternative or complement to `temperature`. This adjusts how many of the top
        # possibilities to consider.
        sig { returns(T.nilable(Float)) }
        attr_reader :top_p

        sig { params(top_p: Float).void }
        attr_writer :top_p

        # Setting this to `true` will allow the model to
        # [explore more completion options](https://huggingface.co/blog/how-to-generate#beam-search).
        # This is not supported by OpenAI.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :use_beam_search

        sig { params(use_beam_search: T::Boolean).void }
        attr_writer :use_beam_search

        sig do
          params(
            messages:
              T::Array[Telnyx::AI::ChatCompletionRequest::Message::OrHash],
            api_key_ref: String,
            best_of: Integer,
            early_stopping: T::Boolean,
            enable_thinking: T::Boolean,
            frequency_penalty: Float,
            length_penalty: Float,
            logprobs: T::Boolean,
            max_tokens: Integer,
            min_p: Float,
            mode: Telnyx::AI::ChatCompletionRequest::Mode::OrSymbol,
            model: String,
            n: Float,
            presence_penalty: Float,
            reasoning_effort:
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::OrSymbol,
            region: Telnyx::AI::ChatCompletionRequest::Region::OrSymbol,
            response_format:
              T.any(
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText::OrHash,
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject::OrHash,
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::OrHash
              ),
            seed: Integer,
            service_tier: String,
            stop: Telnyx::AI::ChatCompletionRequest::Stop::Variants,
            stream: T::Boolean,
            temperature: Float,
            tool_choice:
              Telnyx::AI::ChatCompletionRequest::ToolChoice::OrSymbol,
            tools:
              T::Array[
                T.any(
                  Telnyx::AI::ChatCompletionRequest::Tool::Function::OrHash,
                  Telnyx::AI::ChatCompletionRequest::Tool::Retrieval::OrHash
                )
              ],
            top_logprobs: Integer,
            top_p: Float,
            use_beam_search: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # A list of the previous chat messages for context.
          messages:,
          # If you are using an external inference provider like xAI or OpenAI, this field
          # allows you to pass along a reference to your API key. After creating an
          # [integration secret](https://developers.telnyx.com/api-reference/integration-secrets/create-a-secret)
          # for you API key, pass the secret's `identifier` in this field.
          api_key_ref: nil,
          # This is used with `use_beam_search` to determine how many candidate beams to
          # explore.
          best_of: nil,
          # This is used with `use_beam_search`. If `true`, generation stops as soon as
          # there are `best_of` complete candidates; if `false`, a heuristic is applied and
          # the generation stops when is it very unlikely to find better candidates.
          early_stopping: nil,
          # Whether to enable the thinking/reasoning phase for models that support it (e.g.,
          # QwQ, Qwen3). When set to false, the model will skip the internal reasoning step
          # and respond directly, which can reduce latency. Defaults to true.
          enable_thinking: nil,
          # Higher values will penalize the model from repeating the same output tokens.
          frequency_penalty: nil,
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
          # How strictly `region` is applied. `preferred` (the default when `region` is set)
          # tries that region first and falls back to another when the model cannot be
          # served there, so a request that would have succeeded still succeeds. `strict`
          # pins the request: it is served from that region or it fails with a 422, never
          # redirected to another region. Requires `region`.
          mode: nil,
          # The language model to chat with.
          model: nil,
          # This will return multiple choices for you instead of a single chat completion.
          n: nil,
          # Higher values will penalize the model from repeating the same output tokens.
          presence_penalty: nil,
          # Controls the reasoning effort for models that support it. When set, the model
          # spends more or less compute on internal reasoning before generating its
          # response. Supported values: none, minimal, low, medium, high, xhigh, max. Not
          # all models support all values; unsupported values are rejected with a 400 error.
          # When omitted, reasoning models use their default effort level.
          reasoning_effort: nil,
          # Optional data-residency region the request should be served from, using the same
          # vocabulary as your account's Data Locality setting. Behavior depends on `mode`.
          # Supported for Telnyx-hosted models only: a request routed to an external
          # provider never passes through Telnyx model routing, so a region cannot be
          # enforced for it. Omit for today's latency-based routing.
          region: nil,
          # Controls the format of the model output. `json_object` guarantees valid JSON
          # output without defining a schema; `json_schema` constrains the output to the
          # JSON schema you supply via the `json_schema` property and is the supported way
          # to get guaranteed structured output on Telnyx-hosted models.
          response_format: nil,
          # If specified, the system will make a best effort to sample deterministically,
          # such that repeated requests with the same `seed` and parameters should return
          # the same result.
          seed: nil,
          # The service tier to use for this request. Supported values vary by model; use
          # `GET /v2/ai/openai/models` and inspect the model's `service_tiers` field. If
          # omitted, Telnyx-hosted models use `default`.
          service_tier: nil,
          # Up to 4 sequences where the API will stop generating further tokens. The
          # returned text will not contain the stop sequence.
          stop: nil,
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
          use_beam_search: nil
        )
        end

        sig do
          override.returns(
            {
              messages: T::Array[Telnyx::AI::ChatCompletionRequest::Message],
              api_key_ref: String,
              best_of: Integer,
              early_stopping: T::Boolean,
              enable_thinking: T::Boolean,
              frequency_penalty: Float,
              length_penalty: Float,
              logprobs: T::Boolean,
              max_tokens: Integer,
              min_p: Float,
              mode: Telnyx::AI::ChatCompletionRequest::Mode::OrSymbol,
              model: String,
              n: Float,
              presence_penalty: Float,
              reasoning_effort:
                Telnyx::AI::ChatCompletionRequest::ReasoningEffort::OrSymbol,
              region: Telnyx::AI::ChatCompletionRequest::Region::OrSymbol,
              response_format:
                T.any(
                  Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText,
                  Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject,
                  Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam
                ),
              seed: Integer,
              service_tier: String,
              stop: Telnyx::AI::ChatCompletionRequest::Stop::Variants,
              stream: T::Boolean,
              temperature: Float,
              tool_choice:
                Telnyx::AI::ChatCompletionRequest::ToolChoice::OrSymbol,
              tools:
                T::Array[
                  T.any(
                    Telnyx::AI::ChatCompletionRequest::Tool::Function,
                    Telnyx::AI::ChatCompletionRequest::Tool::Retrieval
                  )
                ],
              top_logprobs: Integer,
              top_p: Float,
              use_beam_search: T::Boolean
            }
          )
        end
        def to_hash
        end

        class Message < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::ChatCompletionRequest::Message,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::AI::ChatCompletionRequest::Message::Content::Variants
            )
          end
          attr_accessor :content

          sig do
            returns(Telnyx::AI::ChatCompletionRequest::Message::Role::OrSymbol)
          end
          attr_accessor :role

          sig do
            params(
              content:
                Telnyx::AI::ChatCompletionRequest::Message::Content::Variants,
              role: Telnyx::AI::ChatCompletionRequest::Message::Role::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(content:, role:)
          end

          sig do
            override.returns(
              {
                content:
                  Telnyx::AI::ChatCompletionRequest::Message::Content::Variants,
                role: Telnyx::AI::ChatCompletionRequest::Message::Role::OrSymbol
              }
            )
          end
          def to_hash
          end

          module Content
            extend Telnyx::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  String,
                  T::Array[
                    Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray
                  ]
                )
              end

            class TextAndImageArray < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type::OrSymbol
                )
              end
              attr_accessor :type

              sig { returns(T.nilable(String)) }
              attr_reader :image_url

              sig { params(image_url: String).void }
              attr_writer :image_url

              sig { returns(T.nilable(String)) }
              attr_reader :text

              sig { params(text: String).void }
              attr_writer :text

              sig do
                params(
                  type:
                    Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type::OrSymbol,
                  image_url: String,
                  text: String
                ).returns(T.attached_class)
              end
              def self.new(type:, image_url: nil, text: nil)
              end

              sig do
                override.returns(
                  {
                    type:
                      Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type::OrSymbol,
                    image_url: String,
                    text: String
                  }
                )
              end
              def to_hash
              end

              module Type
                extend Telnyx::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TEXT =
                  T.let(
                    :text,
                    Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type::TaggedSymbol
                  )
                IMAGE_URL =
                  T.let(
                    :image_url,
                    Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::ChatCompletionRequest::Message::Content::Variants
                ]
              )
            end
            def self.variants
            end

            TextAndImage2DArray =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::ChatCompletionRequest::Message::Content::TextAndImageArray
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          module Role
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Telnyx::AI::ChatCompletionRequest::Message::Role)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SYSTEM =
              T.let(
                :system,
                Telnyx::AI::ChatCompletionRequest::Message::Role::TaggedSymbol
              )
            USER =
              T.let(
                :user,
                Telnyx::AI::ChatCompletionRequest::Message::Role::TaggedSymbol
              )
            ASSISTANT =
              T.let(
                :assistant,
                Telnyx::AI::ChatCompletionRequest::Message::Role::TaggedSymbol
              )
            TOOL =
              T.let(
                :tool,
                Telnyx::AI::ChatCompletionRequest::Message::Role::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::ChatCompletionRequest::Message::Role::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        # How strictly `region` is applied. `preferred` (the default when `region` is set)
        # tries that region first and falls back to another when the model cannot be
        # served there, so a request that would have succeeded still succeeds. `strict`
        # pins the request: it is served from that region or it fails with a 422, never
        # redirected to another region. Requires `region`.
        module Mode
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::ChatCompletionRequest::Mode)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PREFERRED =
            T.let(
              :preferred,
              Telnyx::AI::ChatCompletionRequest::Mode::TaggedSymbol
            )
          STRICT =
            T.let(
              :strict,
              Telnyx::AI::ChatCompletionRequest::Mode::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Telnyx::AI::ChatCompletionRequest::Mode::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Controls the reasoning effort for models that support it. When set, the model
        # spends more or less compute on internal reasoning before generating its
        # response. Supported values: none, minimal, low, medium, high, xhigh, max. Not
        # all models support all values; unsupported values are rejected with a 400 error.
        # When omitted, reasoning models use their default effort level.
        module ReasoningEffort
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::ChatCompletionRequest::ReasoningEffort)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::TaggedSymbol
            )
          MINIMAL =
            T.let(
              :minimal,
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::TaggedSymbol
            )
          LOW =
            T.let(
              :low,
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::TaggedSymbol
            )
          MEDIUM =
            T.let(
              :medium,
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::TaggedSymbol
            )
          HIGH =
            T.let(
              :high,
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::TaggedSymbol
            )
          XHIGH =
            T.let(
              :xhigh,
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::TaggedSymbol
            )
          MAX =
            T.let(
              :max,
              Telnyx::AI::ChatCompletionRequest::ReasoningEffort::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::ChatCompletionRequest::ReasoningEffort::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Optional data-residency region the request should be served from, using the same
        # vocabulary as your account's Data Locality setting. Behavior depends on `mode`.
        # Supported for Telnyx-hosted models only: a request routed to an external
        # provider never passes through Telnyx model routing, so a region cannot be
        # enforced for it. Omit for today's latency-based routing.
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::ChatCompletionRequest::Region)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USA =
            T.let(:USA, Telnyx::AI::ChatCompletionRequest::Region::TaggedSymbol)
          EU =
            T.let(:EU, Telnyx::AI::ChatCompletionRequest::Region::TaggedSymbol)
          AUS =
            T.let(:AUS, Telnyx::AI::ChatCompletionRequest::Region::TaggedSymbol)
          UAE =
            T.let(:UAE, Telnyx::AI::ChatCompletionRequest::Region::TaggedSymbol)

          sig do
            override.returns(
              T::Array[Telnyx::AI::ChatCompletionRequest::Region::TaggedSymbol]
            )
          end
          def self.values
          end
        end

        # Controls the format of the model output. `json_object` guarantees valid JSON
        # output without defining a schema; `json_schema` constrains the output to the
        # JSON schema you supply via the `json_schema` property and is the supported way
        # to get guaranteed structured output on Telnyx-hosted models.
        module ResponseFormat
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText,
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject,
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam
              )
            end

          class ResponseFormatText < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatText,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :type

            # Plain text output.
            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: :text)
            end

            sig { override.returns({ type: Symbol }) }
            def to_hash
            end
          end

          class ResponseFormatJsonObject < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonObject,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Symbol) }
            attr_accessor :type

            # JSON mode: the model output is valid JSON, without a schema.
            sig { params(type: Symbol).returns(T.attached_class) }
            def self.new(type: :json_object)
            end

            sig { override.returns({ type: Symbol }) }
            def to_hash
            end
          end

          class ResponseFormatJsonSchemaParam < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam,
                  Telnyx::Internal::AnyHash
                )
              end

            # The JSON schema configuration, required when `type` is `json_schema`. Matches
            # the
            # [OpenAI structured outputs](https://platform.openai.com/docs/guides/structured-outputs)
            # `json_schema` response format.
            sig do
              returns(
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema
              )
            end
            attr_reader :json_schema

            sig do
              params(
                json_schema:
                  Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema::OrHash
              ).void
            end
            attr_writer :json_schema

            sig { returns(Symbol) }
            attr_accessor :type

            # Structured output: the model output is constrained to the JSON schema supplied
            # in `json_schema`.
            sig do
              params(
                json_schema:
                  Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema::OrHash,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(
              # The JSON schema configuration, required when `type` is `json_schema`. Matches
              # the
              # [OpenAI structured outputs](https://platform.openai.com/docs/guides/structured-outputs)
              # `json_schema` response format.
              json_schema:,
              type: :json_schema
            )
            end

            sig do
              override.returns(
                {
                  json_schema:
                    Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            class JsonSchema < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::ChatCompletionRequest::ResponseFormat::ResponseFormatJsonSchemaParam::JsonSchema,
                    Telnyx::Internal::AnyHash
                  )
                end

              # The name of the response format. Used for clarity only.
              sig { returns(String) }
              attr_accessor :name

              # A description of what the response format is for, typically used to guide the
              # model.
              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              # The JSON schema the model output must conform to. A valid
              # [JSON Schema](https://json-schema.org) object, e.g. a Pydantic
              # `model_json_schema()` export.
              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :schema

              sig { params(schema: T::Hash[Symbol, T.anything]).void }
              attr_writer :schema

              # Enables strict schema adherence when supported by the model. If the generated
              # output does not match the provided schema, the request fails instead of
              # returning non-conformant output.
              sig { returns(T.nilable(T::Boolean)) }
              attr_reader :strict

              sig { params(strict: T::Boolean).void }
              attr_writer :strict

              # The JSON schema configuration, required when `type` is `json_schema`. Matches
              # the
              # [OpenAI structured outputs](https://platform.openai.com/docs/guides/structured-outputs)
              # `json_schema` response format.
              sig do
                params(
                  name: String,
                  description: String,
                  schema: T::Hash[Symbol, T.anything],
                  strict: T::Boolean
                ).returns(T.attached_class)
              end
              def self.new(
                # The name of the response format. Used for clarity only.
                name:,
                # A description of what the response format is for, typically used to guide the
                # model.
                description: nil,
                # The JSON schema the model output must conform to. A valid
                # [JSON Schema](https://json-schema.org) object, e.g. a Pydantic
                # `model_json_schema()` export.
                schema: nil,
                # Enables strict schema adherence when supported by the model. If the generated
                # output does not match the provided schema, the request fails instead of
                # returning non-conformant output.
                strict: nil
              )
              end

              sig do
                override.returns(
                  {
                    name: String,
                    description: String,
                    schema: T::Hash[Symbol, T.anything],
                    strict: T::Boolean
                  }
                )
              end
              def to_hash
              end
            end
          end

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::ChatCompletionRequest::ResponseFormat::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Up to 4 sequences where the API will stop generating further tokens. The
        # returned text will not contain the stop sequence.
        module Stop
          extend Telnyx::Internal::Type::Union

          Variants = T.type_alias { T.any(String, T::Array[String]) }

          sig do
            override.returns(
              T::Array[Telnyx::AI::ChatCompletionRequest::Stop::Variants]
            )
          end
          def self.variants
          end

          StringArray =
            T.let(
              Telnyx::Internal::Type::ArrayOf[String],
              Telnyx::Internal::Type::Converter
            )
        end

        module ToolChoice
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::ChatCompletionRequest::ToolChoice)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::AI::ChatCompletionRequest::ToolChoice::TaggedSymbol
            )
          AUTO =
            T.let(
              :auto,
              Telnyx::AI::ChatCompletionRequest::ToolChoice::TaggedSymbol
            )
          REQUIRED =
            T.let(
              :required,
              Telnyx::AI::ChatCompletionRequest::ToolChoice::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::ChatCompletionRequest::ToolChoice::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        module Tool
          extend Telnyx::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                Telnyx::AI::ChatCompletionRequest::Tool::Function,
                Telnyx::AI::ChatCompletionRequest::Tool::Retrieval
              )
            end

          class Function < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ChatCompletionRequest::Tool::Function,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::AI::ChatCompletionRequest::Tool::Function::Function
              )
            end
            attr_reader :function

            sig do
              params(
                function:
                  Telnyx::AI::ChatCompletionRequest::Tool::Function::Function::OrHash
              ).void
            end
            attr_writer :function

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                function:
                  Telnyx::AI::ChatCompletionRequest::Tool::Function::Function::OrHash,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(function:, type: :function)
            end

            sig do
              override.returns(
                {
                  function:
                    Telnyx::AI::ChatCompletionRequest::Tool::Function::Function,
                  type: Symbol
                }
              )
            end
            def to_hash
            end

            class Function < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::ChatCompletionRequest::Tool::Function::Function,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :name

              sig { returns(T.nilable(String)) }
              attr_reader :description

              sig { params(description: String).void }
              attr_writer :description

              sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
              attr_reader :parameters

              sig { params(parameters: T::Hash[Symbol, T.anything]).void }
              attr_writer :parameters

              sig do
                params(
                  name: String,
                  description: String,
                  parameters: T::Hash[Symbol, T.anything]
                ).returns(T.attached_class)
              end
              def self.new(name:, description: nil, parameters: nil)
              end

              sig do
                override.returns(
                  {
                    name: String,
                    description: String,
                    parameters: T::Hash[Symbol, T.anything]
                  }
                )
              end
              def to_hash
              end
            end
          end

          class Retrieval < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ChatCompletionRequest::Tool::Retrieval,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::AI::BucketIDs) }
            attr_reader :retrieval

            sig { params(retrieval: Telnyx::AI::BucketIDs::OrHash).void }
            attr_writer :retrieval

            sig { returns(Symbol) }
            attr_accessor :type

            sig do
              params(
                retrieval: Telnyx::AI::BucketIDs::OrHash,
                type: Symbol
              ).returns(T.attached_class)
            end
            def self.new(retrieval:, type: :retrieval)
            end

            sig do
              override.returns(
                { retrieval: Telnyx::AI::BucketIDs, type: Symbol }
              )
            end
            def to_hash
            end
          end

          sig do
            override.returns(
              T::Array[Telnyx::AI::ChatCompletionRequest::Tool::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
