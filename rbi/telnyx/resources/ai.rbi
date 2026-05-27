# typed: strong

module Telnyx
  module Resources
    # Generate text with LLMs
    class AI
      # Configure AI assistant specifications
      sig { returns(Telnyx::Resources::AI::Assistants) }
      attr_reader :assistants

      sig { returns(Telnyx::Resources::AI::Audio) }
      attr_reader :audio

      # Generate text with LLMs
      sig { returns(Telnyx::Resources::AI::Chat) }
      attr_reader :chat

      # Identify common themes and patterns in your embedded documents
      sig { returns(Telnyx::Resources::AI::Clusters) }
      attr_reader :clusters

      # Manage historical AI assistant conversations
      sig { returns(Telnyx::Resources::AI::Conversations) }
      attr_reader :conversations

      # Embed documents and perform text searches
      sig { returns(Telnyx::Resources::AI::Embeddings) }
      attr_reader :embeddings

      sig { returns(Telnyx::Resources::AI::FineTuning) }
      attr_reader :fine_tuning

      sig { returns(Telnyx::Resources::AI::Integrations) }
      attr_reader :integrations

      sig { returns(Telnyx::Resources::AI::McpServers) }
      attr_reader :mcp_servers

      sig { returns(Telnyx::Resources::AI::Missions) }
      attr_reader :missions

      sig { returns(Telnyx::Resources::AI::OpenAI) }
      attr_reader :openai

      # Configure AI assistant specifications
      sig { returns(Telnyx::Resources::AI::Tools) }
      attr_reader :tools

      # **Deprecated**: Use `POST /v2/ai/openai/responses` instead. This endpoint is
      # compatible with the
      # [OpenAI Responses API](https://developers.openai.com/api/reference/responses/overview)
      # and may be used with the OpenAI JS or Python SDK. Response id parameter is not
      # supported at the moment. Use the `conversation` parameter with a Telnyx
      # Conversation ID to leverage persistent conversations.
      sig do
        params(
          body: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T::Hash[Symbol, T.anything])
      end
      def create_response(body:, request_options: {})
      end

      # **Deprecated**: Use `GET /v2/ai/openai/models` instead.
      #
      # Returns the same `ModelsResponse` payload as the OpenAI-compatible endpoint —
      # open-source LLMs hosted on Telnyx (e.g. `moonshotai/Kimi-K2.6`,
      # `zai-org/GLM-5.1-FP8`, `MiniMaxAI/MiniMax-M2.7`), embedding models, and
      # fine-tuned models — kept around for backwards compatibility. New integrations
      # should use `/v2/ai/openai/models`.
      #
      # Model ids follow the `{organization}/{model_name}` convention from Hugging Face.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::AIRetrieveModelsResponse
        )
      end
      def retrieve_models(request_options: {})
      end

      # Generate a summary of a file's contents.
      #
      # Supports the following text formats:
      #
      # - PDF, HTML, txt, json, csv
      #
      # Supports the following media formats (billed for both the transcription and
      # summary):
      #
      # - flac, mp3, mp4, mpeg, mpga, m4a, ogg, wav, or webm
      # - Up to 100 MB
      sig do
        params(
          bucket: String,
          filename: String,
          system_prompt: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AISummarizeResponse)
      end
      def summarize(
        # The name of the bucket that contains the file to be summarized.
        bucket:,
        # The name of the file to be summarized.
        filename:,
        # A system prompt to guide the summary generation.
        system_prompt: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
