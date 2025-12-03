# typed: strong

module Telnyx
  module Models
    module AI
      class ChatCreateCompletionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Telnyx::AI::ChatCreateCompletionParams,
              Telnyx::Internal::AnyHash
            )
          end

        # A list of the previous chat messages for context.
        sig do
          returns(T::Array[Telnyx::AI::ChatCreateCompletionParams::Message])
        end
        attr_accessor :messages

        # If you are using an external inference provider like xAI or OpenAI, this field
        # allows you to pass along a reference to your API key. After creating an
        # [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
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

        # Higher values will penalize the model from repeating the same output tokens.
        sig { returns(T.nilable(Float)) }
        attr_reader :frequency_penalty

        sig { params(frequency_penalty: Float).void }
        attr_writer :frequency_penalty

        # If specified, the output will be exactly one of the choices.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :guided_choice

        sig { params(guided_choice: T::Array[String]).void }
        attr_writer :guided_choice

        # Must be a valid JSON schema. If specified, the output will follow the JSON
        # schema.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :guided_json

        sig { params(guided_json: T::Hash[Symbol, T.anything]).void }
        attr_writer :guided_json

        # If specified, the output will follow the regex pattern.
        sig { returns(T.nilable(String)) }
        attr_reader :guided_regex

        sig { params(guided_regex: String).void }
        attr_writer :guided_regex

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

        # Use this is you want to guarantee a JSON output without defining a schema. For
        # control over the schema, use `guided_json`.
        sig do
          returns(
            T.nilable(Telnyx::AI::ChatCreateCompletionParams::ResponseFormat)
          )
        end
        attr_reader :response_format

        sig do
          params(
            response_format:
              Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::OrHash
          ).void
        end
        attr_writer :response_format

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
            T.nilable(
              Telnyx::AI::ChatCreateCompletionParams::ToolChoice::OrSymbol
            )
          )
        end
        attr_reader :tool_choice

        sig do
          params(
            tool_choice:
              Telnyx::AI::ChatCreateCompletionParams::ToolChoice::OrSymbol
          ).void
        end
        attr_writer :tool_choice

        # The `function` tool type follows the same schema as the
        # [OpenAI Chat Completions API](https://platform.openai.com/docs/api-reference/chat).
        # The `retrieval` tool type is unique to Telnyx. You may pass a list of
        # [embedded storage buckets](https://developers.telnyx.com/api/inference/inference-embedding/post-embedding)
        # for retrieval-augmented generation.
        sig do
          returns(
            T.nilable(
              T::Array[
                T.any(
                  Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam,
                  Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval
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
                  Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::OrHash,
                  Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::OrHash
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
                  Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::OrHash,
                  Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::OrHash
                )
              ],
            top_logprobs: Integer,
            top_p: Float,
            use_beam_search: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
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
          # [embedded storage buckets](https://developers.telnyx.com/api/inference/inference-embedding/post-embedding)
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

        sig do
          override.returns(
            {
              messages:
                T::Array[Telnyx::AI::ChatCreateCompletionParams::Message],
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
                Telnyx::AI::ChatCreateCompletionParams::ResponseFormat,
              stream: T::Boolean,
              temperature: Float,
              tool_choice:
                Telnyx::AI::ChatCreateCompletionParams::ToolChoice::OrSymbol,
              tools:
                T::Array[
                  T.any(
                    Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam,
                    Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval
                  )
                ],
              top_logprobs: Integer,
              top_p: Float,
              use_beam_search: T::Boolean,
              request_options: Telnyx::RequestOptions
            }
          )
        end
        def to_hash
        end

        class Message < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::ChatCreateCompletionParams::Message,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::AI::ChatCreateCompletionParams::Message::Content::Variants
            )
          end
          attr_accessor :content

          sig do
            returns(
              Telnyx::AI::ChatCreateCompletionParams::Message::Role::OrSymbol
            )
          end
          attr_accessor :role

          sig do
            params(
              content:
                Telnyx::AI::ChatCreateCompletionParams::Message::Content::Variants,
              role:
                Telnyx::AI::ChatCreateCompletionParams::Message::Role::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(content:, role:)
          end

          sig do
            override.returns(
              {
                content:
                  Telnyx::AI::ChatCreateCompletionParams::Message::Content::Variants,
                role:
                  Telnyx::AI::ChatCreateCompletionParams::Message::Role::OrSymbol
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
                    Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray
                  ]
                )
              end

            class TextAndImageArray < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type::OrSymbol
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
                    Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type::OrSymbol,
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
                      Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type::OrSymbol,
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
                      Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                TEXT =
                  T.let(
                    :text,
                    Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type::TaggedSymbol
                  )
                IMAGE_URL =
                  T.let(
                    :image_url,
                    Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type::TaggedSymbol
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
                  Telnyx::AI::ChatCreateCompletionParams::Message::Content::Variants
                ]
              )
            end
            def self.variants
            end

            TextAndImage2DArray =
              T.let(
                Telnyx::Internal::Type::ArrayOf[
                  Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray
                ],
                Telnyx::Internal::Type::Converter
              )
          end

          module Role
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::ChatCreateCompletionParams::Message::Role
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SYSTEM =
              T.let(
                :system,
                Telnyx::AI::ChatCreateCompletionParams::Message::Role::TaggedSymbol
              )
            USER =
              T.let(
                :user,
                Telnyx::AI::ChatCreateCompletionParams::Message::Role::TaggedSymbol
              )
            ASSISTANT =
              T.let(
                :assistant,
                Telnyx::AI::ChatCreateCompletionParams::Message::Role::TaggedSymbol
              )
            TOOL =
              T.let(
                :tool,
                Telnyx::AI::ChatCreateCompletionParams::Message::Role::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::ChatCreateCompletionParams::Message::Role::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        class ResponseFormat < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::ChatCreateCompletionParams::ResponseFormat,
                Telnyx::Internal::AnyHash
              )
            end

          sig do
            returns(
              Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::Type::OrSymbol
            )
          end
          attr_accessor :type

          # Use this is you want to guarantee a JSON output without defining a schema. For
          # control over the schema, use `guided_json`.
          sig do
            params(
              type:
                Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::Type::OrSymbol
            ).returns(T.attached_class)
          end
          def self.new(type:)
          end

          sig do
            override.returns(
              {
                type:
                  Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::Type::OrSymbol
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
                  Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::Type
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            TEXT =
              T.let(
                :text,
                Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::Type::TaggedSymbol
              )
            JSON_OBJECT =
              T.let(
                :json_object,
                Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::Type::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end

        module ToolChoice
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Telnyx::AI::ChatCreateCompletionParams::ToolChoice)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :none,
              Telnyx::AI::ChatCreateCompletionParams::ToolChoice::TaggedSymbol
            )
          AUTO =
            T.let(
              :auto,
              Telnyx::AI::ChatCreateCompletionParams::ToolChoice::TaggedSymbol
            )
          REQUIRED =
            T.let(
              :required,
              Telnyx::AI::ChatCreateCompletionParams::ToolChoice::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::AI::ChatCreateCompletionParams::ToolChoice::TaggedSymbol
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
                Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam,
                Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval
              )
            end

          class ChatCompletionToolParam < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam,
                  Telnyx::Internal::AnyHash
                )
              end

            sig do
              returns(
                Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Function
              )
            end
            attr_reader :function

            sig do
              params(
                function:
                  Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Function::OrHash
              ).void
            end
            attr_writer :function

            sig do
              returns(
                Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Type::OrSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                function:
                  Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Function::OrHash,
                type:
                  Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(function:, type:)
            end

            sig do
              override.returns(
                {
                  function:
                    Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Function,
                  type:
                    Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Type::OrSymbol
                }
              )
            end
            def to_hash
            end

            class Function < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Function,
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

            module Type
              extend Telnyx::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              FUNCTION =
                T.let(
                  :function,
                  Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::ChatCreateCompletionParams::Tool::ChatCompletionToolParam::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          class Retrieval < Telnyx::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval,
                  Telnyx::Internal::AnyHash
                )
              end

            sig { returns(Telnyx::AI::InferenceEmbeddingBucketIDs) }
            attr_reader :retrieval

            sig do
              params(
                retrieval: Telnyx::AI::InferenceEmbeddingBucketIDs::OrHash
              ).void
            end
            attr_writer :retrieval

            sig do
              returns(
                Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::Type::OrSymbol
              )
            end
            attr_accessor :type

            sig do
              params(
                retrieval: Telnyx::AI::InferenceEmbeddingBucketIDs::OrHash,
                type:
                  Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::Type::OrSymbol
              ).returns(T.attached_class)
            end
            def self.new(retrieval:, type:)
            end

            sig do
              override.returns(
                {
                  retrieval: Telnyx::AI::InferenceEmbeddingBucketIDs,
                  type:
                    Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::Type::OrSymbol
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
                    Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::Type
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              RETRIEVAL =
                T.let(
                  :retrieval,
                  Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::Type::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval::Type::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end

          sig do
            override.returns(
              T::Array[Telnyx::AI::ChatCreateCompletionParams::Tool::Variants]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
