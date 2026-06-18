# typed: strong

module Telnyx
  module Resources
    class AI
      class OpenAI
        # OpenAI-compatible embeddings endpoints for generating vector representations of
        # text
        sig { returns(Telnyx::Resources::AI::OpenAI::Embeddings) }
        attr_reader :embeddings

        sig { returns(Telnyx::Resources::AI::OpenAI::Chat) }
        attr_reader :chat

        # Create a response using Telnyx's OpenAI-compatible Responses API. This endpoint
        # is compatible with the
        # [OpenAI Responses API](https://developers.openai.com/api/reference/responses/overview)
        # and may be used with the OpenAI JS or Python SDK by setting the base URL to
        # `https://api.telnyx.com/v2/ai/openai`.
        #
        # The `conversation` parameter refers to a Telnyx Conversation rather than an
        # OpenAI-hosted conversation object. To persist a thread across turns, first
        # [create a conversation](https://developers.telnyx.com/api-reference/conversations/create-a-conversation)
        # with `POST /ai/conversations`, then pass that conversation's `id` in the
        # Responses request as `conversation`. The endpoint appends the new input,
        # assistant output, reasoning, and tool-call messages to that conversation. Reuse
        # the same `conversation` id on subsequent Responses requests, including
        # tool-result followups, so the model receives the prior context.
        #
        # If `conversation` is omitted, the request is processed without persisting
        # messages to a Telnyx conversation. Use the Conversations API to manage history:
        # [list conversations](https://developers.telnyx.com/api-reference/conversations/list-conversations)
        # (optionally filtered by metadata),
        # [fetch messages](https://developers.telnyx.com/api-reference/conversations/get-conversation-messages)
        # for a conversation, and optionally
        # [add messages](https://developers.telnyx.com/api-reference/conversations/create-message)
        # outside the Responses flow.
        #
        # You can attach arbitrary metadata when creating a conversation (for example to
        # tag the conversation's source, channel, or user) and later filter by it when
        # listing conversations.
        sig do
          params(
            conversation: String,
            input: T::Hash[Symbol, T.anything],
            instructions: String,
            model: String,
            stream: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(T::Hash[Symbol, T.anything])
        end
        def create_response(
          # Optional Telnyx Conversation ID from `POST /ai/conversations`. When provided,
          # Telnyx stores this turn on that conversation and uses the conversation's prior
          # messages as context. Reuse the same ID for subsequent turns and tool-result
          # followups. Omit it for a non-persisted, stateless response.
          conversation: nil,
          # The input items for this turn, using the OpenAI Responses API input format.
          input: nil,
          # Optional system/developer instructions for the model. When used with a persisted
          # `conversation`, send these on the first request that creates the thread;
          # subsequent turns can rely on the stored history.
          instructions: nil,
          # Model identifier to use for the response, for example `zai-org/GLM-5.1-FP8` or
          # another model available from the Telnyx OpenAI-compatible models endpoint.
          model: nil,
          # Set to `true` to stream Server-Sent Events, matching OpenAI's Responses
          # streaming format.
          stream: nil,
          request_options: {}
        )
        end

        # Lists every model currently available to your account on Telnyx Inference,
        # including SOTA open-source LLMs hosted on Telnyx GPUs (for example
        # `moonshotai/Kimi-K2.6`, `zai-org/GLM-5.1-FP8`, and `MiniMaxAI/MiniMax-M2.7`),
        # embedding models, and any fine-tuned models you have created.
        #
        # Each entry is a `ModelMetadata` object describing the model id, owner, task,
        # context length, supported languages, billing tier, pricing per 1M tokens,
        # deployment regions, and whether the model supports vision or fine-tuning. Use
        # this endpoint to discover model ids you can pass to
        # `POST /v2/ai/openai/chat/completions`.
        #
        # Model ids follow the `{organization}/{model_name}` convention from Hugging Face
        # (for example `moonshotai/Kimi-K2.6`). This endpoint is OpenAI-compatible:
        # clients pointed at `https://api.telnyx.com/v2/ai/openai` can call
        # `client.models.list()` to retrieve the same payload.
        sig do
          params(request_options: Telnyx::RequestOptions::OrHash).returns(
            Telnyx::ModelsResponse
          )
        end
        def list_models(request_options: {})
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
