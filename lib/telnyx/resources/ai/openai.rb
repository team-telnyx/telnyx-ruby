# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class OpenAI
        # OpenAI-compatible embeddings endpoints for generating vector representations of
        # text
        # @return [Telnyx::Resources::AI::OpenAI::Embeddings]
        attr_reader :embeddings

        # @return [Telnyx::Resources::AI::OpenAI::Chat]
        attr_reader :chat

        # This endpoint returns a list of Open Source and OpenAI models that are available
        # for use. <br /><br /> **Note**: Model `id`'s will be in the form
        # `{source}/{model_name}`. For example `openai/gpt-4` or
        # `mistralai/Mistral-7B-Instruct-v0.1` consistent with HuggingFace naming
        # conventions.
        #
        # @overload list_models(request_options: {})
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::OpenAIListModelsResponse]
        #
        # @see Telnyx::Models::AI::OpenAIListModelsParams
        def list_models(params = {})
          @client.request(
            method: :get,
            path: "ai/openai/models",
            model: Telnyx::Models::AI::OpenAIListModelsResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @embeddings = Telnyx::Resources::AI::OpenAI::Embeddings.new(client: client)
          @chat = Telnyx::Resources::AI::OpenAI::Chat.new(client: client)
        end
      end
    end
  end
end
