# typed: strong

module Telnyx
  module Models
    class AIRetrieveConversationHistoriesParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Telnyx::AIRetrieveConversationHistoriesParams,
            Telnyx::Internal::AnyHash
          )
        end

      # Natural language search query. The text is embedded into a 1024-dimensional
      # vector and compared against indexed record chunks using kNN cosine similarity.
      sig { returns(String) }
      attr_accessor :q

      # The type of records to search. Each record type is stored in a separate vector
      # index.
      sig do
        returns(
          Telnyx::AIRetrieveConversationHistoriesParams::RecordType::OrSymbol
        )
      end
      attr_accessor :record_type

      # Filter by document identifier (exact match). Populated for knowledge_base
      # records.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_document_id

      sig { params(filter_document_id: String).void }
      attr_writer :filter_document_id

      # Only include records ingested (chunked, embedded, and indexed) on or after this
      # ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :filter_ingested_at_gte

      sig { params(filter_ingested_at_gte: Time).void }
      attr_writer :filter_ingested_at_gte

      # Only include records ingested (chunked, embedded, and indexed) on or before this
      # ISO 8601 timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :filter_ingested_at_lte

      sig { params(filter_ingested_at_lte: Time).void }
      attr_writer :filter_ingested_at_lte

      # Only include records whose original creation time is on or after this ISO 8601
      # timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :filter_record_created_at_gte

      sig { params(filter_record_created_at_gte: Time).void }
      attr_writer :filter_record_created_at_gte

      # Only include records whose original creation time is on or before this ISO 8601
      # timestamp.
      sig { returns(T.nilable(Time)) }
      attr_reader :filter_record_created_at_lte

      sig { params(filter_record_created_at_lte: Time).void }
      attr_writer :filter_record_created_at_lte

      # Filter to chunks belonging to a specific parent record (exact match).
      sig { returns(T.nilable(String)) }
      attr_reader :filter_record_id

      sig { params(filter_record_id: String).void }
      attr_writer :filter_record_id

      # Filter by the region stored on the record. Comma-separated to match multiple
      # regions (USA, DEU, AUS, UAE). Distinct from the `region` parameter, which
      # selects which cluster(s) are queried.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_region_in

      sig { params(filter_region_in: String).void }
      attr_writer :filter_region_in

      # Filter by retention policy (exact match). Filter-only: not returned in the
      # response body.
      sig { returns(T.nilable(String)) }
      attr_reader :filter_retention

      sig { params(filter_retention: String).void }
      attr_writer :filter_retention

      # Filter to records owned by a specific user (exact match).
      sig { returns(T.nilable(String)) }
      attr_reader :filter_user_id

      sig { params(filter_user_id: String).void }
      attr_writer :filter_user_id

      # Minimum cosine similarity score threshold (0.0 to 1.0). Results below this
      # threshold are excluded.
      sig { returns(T.nilable(Float)) }
      attr_reader :min_score

      sig { params(min_score: Float).void }
      attr_writer :min_score

      # Restrict search to a specific region's OpenSearch cluster. When omitted, all
      # regions are queried in parallel (fan-out) and results are merged by cosine
      # similarity score.
      sig do
        returns(
          T.nilable(
            Telnyx::AIRetrieveConversationHistoriesParams::Region::OrSymbol
          )
        )
      end
      attr_reader :region

      sig do
        params(
          region:
            Telnyx::AIRetrieveConversationHistoriesParams::Region::OrSymbol
        ).void
      end
      attr_writer :region

      # Maximum number of results to return. Defaults to 20, maximum 100.
      sig { returns(T.nilable(Integer)) }
      attr_reader :top_k

      sig { params(top_k: Integer).void }
      attr_writer :top_k

      sig do
        params(
          q: String,
          record_type:
            Telnyx::AIRetrieveConversationHistoriesParams::RecordType::OrSymbol,
          filter_document_id: String,
          filter_ingested_at_gte: Time,
          filter_ingested_at_lte: Time,
          filter_record_created_at_gte: Time,
          filter_record_created_at_lte: Time,
          filter_record_id: String,
          filter_region_in: String,
          filter_retention: String,
          filter_user_id: String,
          min_score: Float,
          region:
            Telnyx::AIRetrieveConversationHistoriesParams::Region::OrSymbol,
          top_k: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Natural language search query. The text is embedded into a 1024-dimensional
        # vector and compared against indexed record chunks using kNN cosine similarity.
        q:,
        # The type of records to search. Each record type is stored in a separate vector
        # index.
        record_type:,
        # Filter by document identifier (exact match). Populated for knowledge_base
        # records.
        filter_document_id: nil,
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
        # Restrict search to a specific region's OpenSearch cluster. When omitted, all
        # regions are queried in parallel (fan-out) and results are merged by cosine
        # similarity score.
        region: nil,
        # Maximum number of results to return. Defaults to 20, maximum 100.
        top_k: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            q: String,
            record_type:
              Telnyx::AIRetrieveConversationHistoriesParams::RecordType::OrSymbol,
            filter_document_id: String,
            filter_ingested_at_gte: Time,
            filter_ingested_at_lte: Time,
            filter_record_created_at_gte: Time,
            filter_record_created_at_lte: Time,
            filter_record_id: String,
            filter_region_in: String,
            filter_retention: String,
            filter_user_id: String,
            min_score: Float,
            region:
              Telnyx::AIRetrieveConversationHistoriesParams::Region::OrSymbol,
            top_k: Integer,
            request_options: Telnyx::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The type of records to search. Each record type is stored in a separate vector
      # index.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::AIRetrieveConversationHistoriesParams::RecordType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VOICE =
          T.let(
            :voice,
            Telnyx::AIRetrieveConversationHistoriesParams::RecordType::TaggedSymbol
          )
        MESSAGE =
          T.let(
            :message,
            Telnyx::AIRetrieveConversationHistoriesParams::RecordType::TaggedSymbol
          )
        AI_PIPELINE_STORAGE =
          T.let(
            :ai_pipeline_storage,
            Telnyx::AIRetrieveConversationHistoriesParams::RecordType::TaggedSymbol
          )
        KNOWLEDGE_BASE =
          T.let(
            :knowledge_base,
            Telnyx::AIRetrieveConversationHistoriesParams::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::AIRetrieveConversationHistoriesParams::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      # Restrict search to a specific region's OpenSearch cluster. When omitted, all
      # regions are queried in parallel (fan-out) and results are merged by cosine
      # similarity score.
      module Region
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::AIRetrieveConversationHistoriesParams::Region)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        USA =
          T.let(
            :USA,
            Telnyx::AIRetrieveConversationHistoriesParams::Region::TaggedSymbol
          )
        DEU =
          T.let(
            :DEU,
            Telnyx::AIRetrieveConversationHistoriesParams::Region::TaggedSymbol
          )
        AUS =
          T.let(
            :AUS,
            Telnyx::AIRetrieveConversationHistoriesParams::Region::TaggedSymbol
          )
        UAE =
          T.let(
            :UAE,
            Telnyx::AIRetrieveConversationHistoriesParams::Region::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::AIRetrieveConversationHistoriesParams::Region::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
