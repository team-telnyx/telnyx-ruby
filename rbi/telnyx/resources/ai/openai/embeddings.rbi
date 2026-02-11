# typed: strong

module Telnyx
  module Resources
    class AI
      class OpenAI
        class Embeddings
          # Creates an embedding vector representing the input text. This endpoint is
          # compatible with the
          # [OpenAI Embeddings API](https://platform.openai.com/docs/api-reference/embeddings)
          # and may be used with the OpenAI JS or Python SDK by setting the base URL to
          # `https://api.telnyx.com/v2/ai/openai`.
          sig do
            params(
              input: Telnyx::AI::OpenAI::EmbeddingCreateParams::Input::Variants,
              model: String,
              dimensions: Integer,
              encoding_format:
                Telnyx::AI::OpenAI::EmbeddingCreateParams::EncodingFormat::OrSymbol,
              user: String,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(Telnyx::Models::AI::OpenAI::EmbeddingCreateResponse)
          end
          def create(
            # Input text to embed. Can be a string or array of strings.
            input:,
            # ID of the model to use. Use the List embedding models endpoint to see available
            # models.
            model:,
            # The number of dimensions the resulting output embeddings should have. Only
            # supported in some models.
            dimensions: nil,
            # The format to return the embeddings in.
            encoding_format: nil,
            # A unique identifier representing your end-user for monitoring and abuse
            # detection.
            user: nil,
            request_options: {}
          )
          end

          # Returns a list of available embedding models. This endpoint is compatible with
          # the OpenAI Models API format.
          sig do
            params(request_options: Telnyx::RequestOptions::OrHash).returns(
              Telnyx::Models::AI::OpenAI::EmbeddingListModelsResponse
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
end
