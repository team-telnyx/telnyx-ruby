# typed: strong

module Telnyx
  module Resources
    class AI
      sig { returns(Telnyx::Resources::AI::Assistants) }
      attr_reader :assistants

      sig { returns(Telnyx::Resources::AI::Audio) }
      attr_reader :audio

      sig { returns(Telnyx::Resources::AI::Chat) }
      attr_reader :chat

      sig { returns(Telnyx::Resources::AI::Clusters) }
      attr_reader :clusters

      sig { returns(Telnyx::Resources::AI::Conversations) }
      attr_reader :conversations

      sig { returns(Telnyx::Resources::AI::Embeddings) }
      attr_reader :embeddings

      sig { returns(Telnyx::Resources::AI::FineTuning) }
      attr_reader :fine_tuning

      sig { returns(Telnyx::Resources::AI::Integrations) }
      attr_reader :integrations

      sig { returns(Telnyx::Resources::AI::McpServers) }
      attr_reader :mcp_servers

      # This endpoint returns a list of Open Source and OpenAI models that are available
      # for use. <br /><br /> **Note**: Model `id`'s will be in the form
      # `{source}/{model_name}`. For example `openai/gpt-4` or
      # `mistralai/Mistral-7B-Instruct-v0.1` consistent with HuggingFace naming
      # conventions.
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
