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

        # This endpoint returns a list of Open Source and OpenAI models that are available
        # for use. <br /><br /> **Note**: Model `id`'s will be in the form
        # `{source}/{model_name}`. For example `openai/gpt-4` or
        # `mistralai/Mistral-7B-Instruct-v0.1` consistent with HuggingFace naming
        # conventions.
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
