# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class OpenAI
        class Embeddings
          # Some parameter documentations has been truncated, see
          # {Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsParams} for more details.
          #
          # Creates an embedding vector representing the input text. This endpoint is
          # compatible with the
          # [OpenAI Embeddings API](https://platform.openai.com/docs/api-reference/embeddings)
          # and may be used with the OpenAI JS or Python SDK by setting the base URL to
          # `https://api.telnyx.com/v2/ai/openai`.
          #
          # @overload create_embeddings(input:, model:, dimensions: nil, encoding_format: nil, user: nil, request_options: {})
          #
          # @param input [String, Array<String>] Input text to embed. Can be a string or array of strings.
          #
          # @param model [String] ID of the model to use. Use the List embedding models endpoint to see available
          #
          # @param dimensions [Integer] The number of dimensions the resulting output embeddings should have. Only suppo
          #
          # @param encoding_format [Symbol, Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsParams::EncodingFormat] The format to return the embeddings in.
          #
          # @param user [String] A unique identifier representing your end-user for monitoring and abuse detectio
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse]
          #
          # @see Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsParams
          def create_embeddings(params)
            parsed, options = Telnyx::AI::OpenAI::EmbeddingCreateEmbeddingsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "ai/openai/embeddings",
              body: parsed,
              model: Telnyx::Models::AI::OpenAI::EmbeddingCreateEmbeddingsResponse,
              options: options
            )
          end

          # Returns a list of available embedding models. This endpoint is compatible with
          # the OpenAI Models API format.
          #
          # @overload list_embedding_models(request_options: {})
          #
          # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse]
          #
          # @see Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsParams
          def list_embedding_models(params = {})
            @client.request(
              method: :get,
              path: "ai/openai/embeddings/models",
              model: Telnyx::Models::AI::OpenAI::EmbeddingListEmbeddingModelsResponse,
              options: params[:request_options]
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
end
