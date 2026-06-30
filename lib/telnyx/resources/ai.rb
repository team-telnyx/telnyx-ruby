# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      # Configure AI assistant specifications
      # @return [Telnyx::Resources::AI::Assistants]
      attr_reader :assistants

      # @return [Telnyx::Resources::AI::Audio]
      attr_reader :audio

      # Generate text with LLMs
      # @return [Telnyx::Resources::AI::Chat]
      attr_reader :chat

      # Identify common themes and patterns in your embedded documents
      # @return [Telnyx::Resources::AI::Clusters]
      attr_reader :clusters

      # Manage historical AI assistant conversations
      # @return [Telnyx::Resources::AI::Conversations]
      attr_reader :conversations

      # Embed documents and perform text searches
      # @return [Telnyx::Resources::AI::Embeddings]
      attr_reader :embeddings

      # @return [Telnyx::Resources::AI::FineTuning]
      attr_reader :fine_tuning

      # @return [Telnyx::Resources::AI::Integrations]
      attr_reader :integrations

      # @return [Telnyx::Resources::AI::McpServers]
      attr_reader :mcp_servers

      # @return [Telnyx::Resources::AI::Missions]
      attr_reader :missions

      # @return [Telnyx::Resources::AI::OpenAI]
      attr_reader :openai

      # Configure AI assistant specifications
      # @return [Telnyx::Resources::AI::Tools]
      attr_reader :tools

      # @deprecated
      #
      # **Deprecated**: Use `POST /v2/ai/openai/responses` instead. This endpoint is
      # compatible with the
      # [OpenAI Responses API](https://developers.openai.com/api/reference/responses/overview)
      # and may be used with the OpenAI JS or Python SDK. Response id parameter is not
      # supported at the moment. Use the `conversation` parameter with a Telnyx
      # Conversation ID to leverage persistent conversations.
      #
      # @overload create_response_deprecated(body:, request_options: {})
      #
      # @param body [Hash{Symbol=>Object}]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Hash{Symbol=>Object}]
      #
      # @see Telnyx::Models::AICreateResponseDeprecatedParams
      def create_response_deprecated(params)
        parsed, options = Telnyx::AICreateResponseDeprecatedParams.dump_request(params)
        @client.request(
          method: :post,
          path: "ai/responses",
          body: parsed[:body],
          model: Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown],
          options: options
        )
      end

      # @deprecated
      #
      # **Deprecated**: Use `GET /v2/ai/openai/models` instead.
      #
      # Returns the same `ModelsResponse` payload as the OpenAI-compatible endpoint —
      # open-source LLMs hosted on Telnyx (e.g. `moonshotai/Kimi-K2.6`,
      # `zai-org/GLM-5.1-FP8`, `MiniMaxAI/MiniMax-M2.7`), embedding models, and
      # fine-tuned models — kept around for backwards compatibility. New integrations
      # should use `/v2/ai/openai/models`.
      #
      # Model ids follow the `{organization}/{model_name}` convention from Hugging Face.
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

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::AISearchConversationHistoriesParams} for more details.
      #
      # Performs semantic vector search across conversation history records.
      #
      # **How it works:**
      #
      # 1. The query text is embedded into a 1024-dimensional vector using the
      #    multilingual-e5-large model.
      # 2. The vector is compared against indexed record chunks using semantic
      #    similarity search.
      # 3. When no region is specified, all regions are queried in parallel (fan-out)
      #    and results are merged by score.
      # 4. Results are ranked by similarity score (descending) and paginated via
      #    `page[number]` / `page[size]`.
      #
      # **Authentication:** Requires a Telnyx API key via `Authorization: Bearer <key>`.
      # Results are automatically scoped to the caller's organization —
      # `organization_id` is injected from the auth token and cannot be overridden.
      #
      # **Chunking:** Records are split into chunks of up to 480 tokens with 64-token
      # overlap at ingestion time. Each search result represents a single chunk, with
      # `chunk_index` and `chunk_total` indicating its position within the original
      # record.
      #
      # **Filtering:** Use `filter[field][operator]=value` query parameters to narrow
      # results before vector search.
      #
      # Top-level filterable fields: `user_id`, `region`, `record_id`,
      # `record_created_at`, `ingested_at`, `retention`
      #
      # Note: `retention` is filter-only — it can be used to narrow results but is not
      # returned in the response body.
      #
      # Metadata fields: any field not in the list above is resolved to
      # `data.metadata.<field>` (e.g., `filter[language]=en` →
      # `data.metadata.language`).
      #
      # Supported filter operators:
      #
      # - `eq` — exact match (default when no operator specified)
      # - `in` — match any of comma-separated values
      # - `gte`, `gt`, `lte`, `lt` — range comparisons (useful for date filtering)
      # - `contains` — wildcard substring match
      #
      # **Examples:**
      #
      # ```
      # GET /v2/ai/conversation_histories?q=billing+issue&page[size]=10
      # GET /v2/ai/conversation_histories?q=setup+guide&region=USA&min_score=0.5
      # GET /v2/ai/conversation_histories?q=refund&filter[record_created_at][gte]=2026-01-01T00:00:00Z
      # GET /v2/ai/conversation_histories?q=outage&filter[region][in]=USA,DEU
      # GET /v2/ai/conversation_histories?q=hold+time&filter[language]=en
      # ```
      #
      # @overload search_conversation_histories(q:, filter_ingested_at_gte: nil, filter_ingested_at_lte: nil, filter_record_created_at_gte: nil, filter_record_created_at_lte: nil, filter_record_id: nil, filter_region_in: nil, filter_retention: nil, filter_user_id: nil, min_score: nil, page_number: nil, page_size: nil, region: nil, request_options: {})
      #
      # @param q [String] Natural language search query. The text is embedded into a 1024-dimensional vect
      #
      # @param filter_ingested_at_gte [Time] Only include records ingested (chunked, embedded, and indexed) on or after this
      #
      # @param filter_ingested_at_lte [Time] Only include records ingested (chunked, embedded, and indexed) on or before this
      #
      # @param filter_record_created_at_gte [Time] Only include records whose original creation time is on or after this ISO 8601 t
      #
      # @param filter_record_created_at_lte [Time] Only include records whose original creation time is on or before this ISO 8601
      #
      # @param filter_record_id [String] Filter to chunks belonging to a specific parent record (exact match).
      #
      # @param filter_region_in [String] Filter by the region stored on the record. Comma-separated to match multiple reg
      #
      # @param filter_retention [String] Filter by retention policy (exact match). Filter-only: not returned in the respo
      #
      # @param filter_user_id [String] Filter to records owned by a specific user (exact match).
      #
      # @param min_score [Float] Minimum cosine similarity score threshold (0.0 to 1.0). Results below this thres
      #
      # @param page_number [Integer] Page number to return (1-based). Defaults to 1.
      #
      # @param page_size [Integer] Number of results per page. Defaults to 20, maximum 100.
      #
      # @param region [Symbol, Telnyx::Models::AISearchConversationHistoriesParams::Region] Restrict search to a specific region. When omitted, all regions are queried in p
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::AISearchConversationHistoriesResponse]
      #
      # @see Telnyx::Models::AISearchConversationHistoriesParams
      def search_conversation_histories(params)
        parsed, options = Telnyx::AISearchConversationHistoriesParams.dump_request(params)
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "ai/conversation_histories",
          query: query.transform_keys(
            filter_ingested_at_gte: "filter[ingested_at][gte]",
            filter_ingested_at_lte: "filter[ingested_at][lte]",
            filter_record_created_at_gte: "filter[record_created_at][gte]",
            filter_record_created_at_lte: "filter[record_created_at][lte]",
            filter_record_id: "filter[record_id]",
            filter_region_in: "filter[region][in]",
            filter_retention: "filter[retention]",
            filter_user_id: "filter[user_id]",
            page_number: "page[number]",
            page_size: "page[size]"
          ),
          model: Telnyx::Models::AISearchConversationHistoriesResponse,
          options: options
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
        @missions = Telnyx::Resources::AI::Missions.new(client: client)
        @openai = Telnyx::Resources::AI::OpenAI.new(client: client)
        @tools = Telnyx::Resources::AI::Tools.new(client: client)
      end
    end
  end
end
