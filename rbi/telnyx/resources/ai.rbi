# typed: strong

module Telnyx
  module Resources
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
          response_request: T::Hash[Symbol, T.anything],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T::Hash[Symbol, T.anything])
      end
      def create_response_deprecated(response_request:, request_options: {})
      end

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
      sig do
        params(
          q: String,
          filter_ingested_at_gte: Time,
          filter_ingested_at_lte: Time,
          filter_record_created_at_gte: Time,
          filter_record_created_at_lte: Time,
          filter_record_id: String,
          filter_region_in: String,
          filter_retention: String,
          filter_user_id: String,
          min_score: Float,
          page_number: Integer,
          page_size: Integer,
          region:
            Telnyx::AIRetrieveConversationHistoriesParams::Region::OrSymbol,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AIRetrieveConversationHistoriesResponse)
      end
      def retrieve_conversation_histories(
        # Natural language search query. The text is embedded into a 1024-dimensional
        # vector and compared against indexed record chunks using semantic similarity.
        q:,
        # Only include records ingested (chunked, embedded, and indexed) on or after this
        # ISO 8601 timestamp.
        filter_ingested_at_gte: nil,
        # Only include records ingested (chunked, embedded, and indexed) on or before this
        # ISO 8601 timestamp.
        filter_ingested_at_lte: nil,
        # Only include records whose original creation time is on or after this ISO 8601
        # timestamp.
        filter_record_created_at_gte: nil,
        # Only include records whose original creation time is on or before this ISO 8601
        # timestamp.
        filter_record_created_at_lte: nil,
        # Filter to chunks belonging to a specific parent record (exact match).
        filter_record_id: nil,
        # Filter by the region stored on the record. Comma-separated to match multiple
        # regions (USA, DEU, AUS, UAE). Distinct from the `region` parameter, which
        # selects which cluster(s) are queried.
        filter_region_in: nil,
        # Filter by retention policy (exact match). Filter-only: not returned in the
        # response body.
        filter_retention: nil,
        # Filter to records owned by a specific user (exact match).
        filter_user_id: nil,
        # Minimum cosine similarity score threshold (0.0 to 1.0). Results below this
        # threshold are excluded.
        min_score: nil,
        # Page number to return (1-based). Defaults to 1.
        page_number: nil,
        # Number of results per page. Defaults to 20, maximum 100.
        page_size: nil,
        # Restrict search to a specific region. When omitted, all regions are queried in
        # parallel (fan-out) and results are merged by similarity score.
        region: nil,
        request_options: {}
      )
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
          Telnyx::ModelsResponse
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
