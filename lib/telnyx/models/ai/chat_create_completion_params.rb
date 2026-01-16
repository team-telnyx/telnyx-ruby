# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      # @see Telnyx::Resources::AI::Chat#create_completion
      class ChatCreateCompletionParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute messages
        #   A list of the previous chat messages for context.
        #
        #   @return [Array<Telnyx::Models::AI::ChatCreateCompletionParams::Message>]
        required :messages,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::AI::ChatCreateCompletionParams::Message] }

        # @!attribute api_key_ref
        #   If you are using an external inference provider like xAI or OpenAI, this field
        #   allows you to pass along a reference to your API key. After creating an
        #   [integration secret](https://developers.telnyx.com/api/secrets-manager/integration-secrets/create-integration-secret)
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

        # @!attribute frequency_penalty
        #   Higher values will penalize the model from repeating the same output tokens.
        #
        #   @return [Float, nil]
        optional :frequency_penalty, Float

        # @!attribute guided_choice
        #   If specified, the output will be exactly one of the choices.
        #
        #   @return [Array<String>, nil]
        optional :guided_choice, Telnyx::Internal::Type::ArrayOf[String]

        # @!attribute guided_json
        #   Must be a valid JSON schema. If specified, the output will follow the JSON
        #   schema.
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :guided_json, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

        # @!attribute guided_regex
        #   If specified, the output will follow the regex pattern.
        #
        #   @return [String, nil]
        optional :guided_regex, String

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

        # @!attribute response_format
        #   Use this is you want to guarantee a JSON output without defining a schema. For
        #   control over the schema, use `guided_json`.
        #
        #   @return [Telnyx::Models::AI::ChatCreateCompletionParams::ResponseFormat, nil]
        optional :response_format, -> { Telnyx::AI::ChatCreateCompletionParams::ResponseFormat }

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
        #   @return [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::ToolChoice, nil]
        optional :tool_choice, enum: -> { Telnyx::AI::ChatCreateCompletionParams::ToolChoice }

        # @!attribute tools
        #   The `function` tool type follows the same schema as the
        #   [OpenAI Chat Completions API](https://platform.openai.com/docs/api-reference/chat).
        #   The `retrieval` tool type is unique to Telnyx. You may pass a list of
        #   [embedded storage buckets](https://developers.telnyx.com/api-reference/embeddings/embed-documents)
        #   for retrieval-augmented generation.
        #
        #   @return [Array<Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Function, Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Retrieval>, nil]
        optional :tools,
                 -> { Telnyx::Internal::Type::ArrayOf[union: Telnyx::AI::ChatCreateCompletionParams::Tool] }

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

        # @!method initialize(messages:, api_key_ref: nil, best_of: nil, early_stopping: nil, frequency_penalty: nil, guided_choice: nil, guided_json: nil, guided_regex: nil, length_penalty: nil, logprobs: nil, max_tokens: nil, min_p: nil, model: nil, n: nil, presence_penalty: nil, response_format: nil, stream: nil, temperature: nil, tool_choice: nil, tools: nil, top_logprobs: nil, top_p: nil, use_beam_search: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::AI::ChatCreateCompletionParams} for more details.
        #
        #   @param messages [Array<Telnyx::Models::AI::ChatCreateCompletionParams::Message>] A list of the previous chat messages for context.
        #
        #   @param api_key_ref [String] If you are using an external inference provider like xAI or OpenAI, this field a
        #
        #   @param best_of [Integer] This is used with `use_beam_search` to determine how many candidate beams to exp
        #
        #   @param early_stopping [Boolean] This is used with `use_beam_search`. If `true`, generation stops as soon as ther
        #
        #   @param frequency_penalty [Float] Higher values will penalize the model from repeating the same output tokens.
        #
        #   @param guided_choice [Array<String>] If specified, the output will be exactly one of the choices.
        #
        #   @param guided_json [Hash{Symbol=>Object}] Must be a valid JSON schema. If specified, the output will follow the JSON schem
        #
        #   @param guided_regex [String] If specified, the output will follow the regex pattern.
        #
        #   @param length_penalty [Float] This is used with `use_beam_search` to prefer shorter or longer completions.
        #
        #   @param logprobs [Boolean] Whether to return log probabilities of the output tokens or not. If true, return
        #
        #   @param max_tokens [Integer] Maximum number of completion tokens the model should generate.
        #
        #   @param min_p [Float] This is an alternative to `top_p` that [many prefer](https://github.com/huggingf
        #
        #   @param model [String] The language model to chat with.
        #
        #   @param n [Float] This will return multiple choices for you instead of a single chat completion.
        #
        #   @param presence_penalty [Float] Higher values will penalize the model from repeating the same output tokens.
        #
        #   @param response_format [Telnyx::Models::AI::ChatCreateCompletionParams::ResponseFormat] Use this is you want to guarantee a JSON output without defining a schema. For c
        #
        #   @param stream [Boolean] Whether or not to stream data-only server-sent events as they become available.
        #
        #   @param temperature [Float] Adjusts the "creativity" of the model. Lower values make the model more determin
        #
        #   @param tool_choice [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::ToolChoice]
        #
        #   @param tools [Array<Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Function, Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Retrieval>] The `function` tool type follows the same schema as the [OpenAI Chat Completions
        #
        #   @param top_logprobs [Integer] This is used with `logprobs`. An integer between 0 and 20 specifying the number
        #
        #   @param top_p [Float] An alternative or complement to `temperature`. This adjusts how many of the top
        #
        #   @param use_beam_search [Boolean] Setting this to `true` will allow the model to [explore more completion options]
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Message < Telnyx::Internal::Type::BaseModel
          # @!attribute content
          #
          #   @return [String, Array<Telnyx::Models::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray>]
          required :content, union: -> { Telnyx::AI::ChatCreateCompletionParams::Message::Content }

          # @!attribute role
          #
          #   @return [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::Message::Role]
          required :role, enum: -> { Telnyx::AI::ChatCreateCompletionParams::Message::Role }

          # @!method initialize(content:, role:)
          #   @param content [String, Array<Telnyx::Models::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray>]
          #   @param role [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::Message::Role]

          # @see Telnyx::Models::AI::ChatCreateCompletionParams::Message#content
          module Content
            extend Telnyx::Internal::Type::Union

            variant String

            variant -> { Telnyx::Models::AI::ChatCreateCompletionParams::Message::Content::TextAndImage2DArray }

            class TextAndImageArray < Telnyx::Internal::Type::BaseModel
              # @!attribute type
              #
              #   @return [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type]
              required :type,
                       enum: -> { Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type }

              # @!attribute image_url
              #
              #   @return [String, nil]
              optional :image_url, String

              # @!attribute text
              #
              #   @return [String, nil]
              optional :text, String

              # @!method initialize(type:, image_url: nil, text: nil)
              #   @param type [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray::Type]
              #   @param image_url [String]
              #   @param text [String]

              # @see Telnyx::Models::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray#type
              module Type
                extend Telnyx::Internal::Type::Enum

                TEXT = :text
                IMAGE_URL = :image_url

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(String, Array<Telnyx::Models::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray>)]

            # @type [Telnyx::Internal::Type::Converter]
            TextAndImage2DArray =
              Telnyx::Internal::Type::ArrayOf[-> {
                Telnyx::AI::ChatCreateCompletionParams::Message::Content::TextAndImageArray
              }]
          end

          # @see Telnyx::Models::AI::ChatCreateCompletionParams::Message#role
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

        class ResponseFormat < Telnyx::Internal::Type::BaseModel
          # @!attribute type
          #
          #   @return [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::ResponseFormat::Type]
          required :type, enum: -> { Telnyx::AI::ChatCreateCompletionParams::ResponseFormat::Type }

          # @!method initialize(type:)
          #   Use this is you want to guarantee a JSON output without defining a schema. For
          #   control over the schema, use `guided_json`.
          #
          #   @param type [Symbol, Telnyx::Models::AI::ChatCreateCompletionParams::ResponseFormat::Type]

          # @see Telnyx::Models::AI::ChatCreateCompletionParams::ResponseFormat#type
          module Type
            extend Telnyx::Internal::Type::Enum

            TEXT = :text
            JSON_OBJECT = :json_object

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end

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

          variant :function, -> { Telnyx::AI::ChatCreateCompletionParams::Tool::Function }

          variant :retrieval, -> { Telnyx::AI::ChatCreateCompletionParams::Tool::Retrieval }

          class Function < Telnyx::Internal::Type::BaseModel
            # @!attribute function
            #
            #   @return [Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Function::Function]
            required :function, -> { Telnyx::AI::ChatCreateCompletionParams::Tool::Function::Function }

            # @!attribute type
            #
            #   @return [Symbol, :function]
            required :type, const: :function

            # @!method initialize(function:, type: :function)
            #   @param function [Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Function::Function]
            #   @param type [Symbol, :function]

            # @see Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Function#function
            class Function < Telnyx::Internal::Type::BaseModel
              # @!attribute name
              #
              #   @return [String]
              required :name, String

              # @!attribute description
              #
              #   @return [String, nil]
              optional :description, String

              # @!attribute parameters
              #
              #   @return [Hash{Symbol=>Object}, nil]
              optional :parameters, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

              # @!method initialize(name:, description: nil, parameters: nil)
              #   @param name [String]
              #   @param description [String]
              #   @param parameters [Hash{Symbol=>Object}]
            end
          end

          class Retrieval < Telnyx::Internal::Type::BaseModel
            # @!attribute retrieval
            #
            #   @return [Telnyx::Models::AI::InferenceEmbeddingBucketIDs]
            required :retrieval, -> { Telnyx::AI::InferenceEmbeddingBucketIDs }

            # @!attribute type
            #
            #   @return [Symbol, :retrieval]
            required :type, const: :retrieval

            # @!method initialize(retrieval:, type: :retrieval)
            #   @param retrieval [Telnyx::Models::AI::InferenceEmbeddingBucketIDs]
            #   @param type [Symbol, :retrieval]
          end

          # @!method self.variants
          #   @return [Array(Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Function, Telnyx::Models::AI::ChatCreateCompletionParams::Tool::Retrieval)]
        end
      end
    end
  end
end
