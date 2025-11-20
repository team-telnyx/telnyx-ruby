# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      # @return [Telnyx::Resources::AI::Assistants]
      attr_reader :assistants

      # @return [Telnyx::Resources::AI::Audio]
      attr_reader :audio

      # @return [Telnyx::Resources::AI::Chat]
      attr_reader :chat

      # @return [Telnyx::Resources::AI::Clusters]
      attr_reader :clusters

      # @return [Telnyx::Resources::AI::Conversations]
      attr_reader :conversations

      # @return [Telnyx::Resources::AI::Embeddings]
      attr_reader :embeddings

      # @return [Telnyx::Resources::AI::FineTuning]
      attr_reader :fine_tuning

      # @return [Telnyx::Resources::AI::Integrations]
      attr_reader :integrations

      # @return [Telnyx::Resources::AI::McpServers]
      attr_reader :mcp_servers

      # This endpoint returns a list of Open Source and OpenAI models that are available
      # for use. <br /><br /> **Note**: Model `id`'s will be in the form
      # `{source}/{model_name}`. For example `openai/gpt-4` or
      # `mistralai/Mistral-7B-Instruct-v0.1` consistent with HuggingFace naming
      # conventions.
      #
      # @overload retrieve_models(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AIRetrieveModelsResponse]
      #
      # @see Telnyx::Models::AIRetrieveModelsParams
      def retrieve_models(params = {})
        @client.request(
          method: :get,
          path: "ai/models",
          model: Telnyx::Models::AIRetrieveModelsResponse,
          options: params[:request_options]
        )
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
      #
      # @overload summarize(bucket:, filename:, system_prompt: nil, request_options: {})
      #
      # @param bucket [String] The name of the bucket that contains the file to be summarized.
      #
      # @param filename [String] The name of the file to be summarized.
      #
      # @param system_prompt [String] A system prompt to guide the summary generation.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AISummarizeResponse]
      #
      # @see Telnyx::Models::AISummarizeParams
      def summarize(params)
        parsed, options = Telnyx::AISummarizeParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ai/summarize",
          body: parsed,
          model: Telnyx::Models::AISummarizeResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @assistants = Telnyx::Resources::AI::Assistants.new(client: client)
        @audio = Telnyx::Resources::AI::Audio.new(client: client)
        @chat = Telnyx::Resources::AI::Chat.new(client: client)
        @clusters = Telnyx::Resources::AI::Clusters.new(client: client)
        @conversations = Telnyx::Resources::AI::Conversations.new(client: client)
        @embeddings = Telnyx::Resources::AI::Embeddings.new(client: client)
        @fine_tuning = Telnyx::Resources::AI::FineTuning.new(client: client)
        @integrations = Telnyx::Resources::AI::Integrations.new(client: client)
        @mcp_servers = Telnyx::Resources::AI::McpServers.new(client: client)
      end
    end
  end
end
