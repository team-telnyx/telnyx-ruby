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
            Telnyx::Models::AI::OpenAIListModelsResponse
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
