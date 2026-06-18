# typed: strong

module Telnyx
  module Models
    class AIRetrieveConversationHistoriesResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::AIRetrieveConversationHistoriesResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Ranked list of matching text chunks, sorted by cosine similarity score
      # descending.
      sig do
        returns(
          T::Array[
            Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data
          ]
        )
      end
      attr_accessor :data

      # Pagination metadata following the standard Telnyx V2 API format.
      sig do
        returns(Telnyx::Models::AIRetrieveConversationHistoriesResponse::Meta)
      end
      attr_reader :meta

      sig do
        params(
          meta:
            Telnyx::Models::AIRetrieveConversationHistoriesResponse::Meta::OrHash
        ).void
      end
      attr_writer :meta

      # Search response following the standard Telnyx V2 API format.
      sig do
        params(
          data:
            T::Array[
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::OrHash
            ],
          meta:
            Telnyx::Models::AIRetrieveConversationHistoriesResponse::Meta::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Ranked list of matching text chunks, sorted by cosine similarity score
        # descending.
        data:,
        # Pagination metadata following the standard Telnyx V2 API format.
        meta:
      )
      end

      sig do
        override.returns(
          {
            data:
              T::Array[
                Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data
              ],
            meta: Telnyx::Models::AIRetrieveConversationHistoriesResponse::Meta
          }
        )
      end
      def to_hash
      end

      class Data < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data,
              Telnyx::Internal::AnyHash
            )
          end

        # Unique chunk identifier.
        sig { returns(String) }
        attr_accessor :id

        # Zero-based index of this chunk within the parent record.
        sig { returns(Integer) }
        attr_accessor :chunk_index

        # Total number of chunks the parent record was split into.
        sig { returns(Integer) }
        attr_accessor :chunk_total

        # Document identifier. Present only for knowledge_base records; null for all other
        # record types.
        sig { returns(T.nilable(String)) }
        attr_accessor :document_id

        # When the record was chunked, embedded, and indexed (ISO 8601).
        sig { returns(Time) }
        attr_accessor :ingested_at

        # Identifier of the organization that owns this record.
        sig { returns(String) }
        attr_accessor :organization_id

        # When the original record was created (ISO 8601).
        sig { returns(Time) }
        attr_accessor :record_created_at

        # Identifier of the parent record. Multiple chunks from the same record share this
        # ID.
        sig { returns(String) }
        attr_accessor :record_id

        # Type of the record.
        sig do
          returns(
            Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType::TaggedSymbol
          )
        end
        attr_accessor :record_type

        # The region where this record is stored.
        sig do
          returns(
            Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region::TaggedSymbol
          )
        end
        attr_accessor :region

        # Cosine similarity score between the query vector and this chunk's vector. Higher
        # values indicate greater semantic relevance.
        sig { returns(Float) }
        attr_accessor :score

        # The text content of this chunk (up to 480 tokens).
        sig { returns(String) }
        attr_accessor :text

        # Identifier of the user who owns this record.
        sig { returns(String) }
        attr_accessor :user_id

        # Arbitrary metadata attached to the record at ingestion time. Stored as a
        # flat_object in OpenSearch and filterable via filter[field]=value query
        # parameters.
        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :metadata

        sig { params(metadata: T::Hash[Symbol, T.anything]).void }
        attr_writer :metadata

        # A single search result representing one chunk of a conversation history record.
        # Records are split into chunks of up to 480 tokens with 64-token overlap at
        # ingestion time.
        sig do
          params(
            id: String,
            chunk_index: Integer,
            chunk_total: Integer,
            document_id: T.nilable(String),
            ingested_at: Time,
            organization_id: String,
            record_created_at: Time,
            record_id: String,
            record_type:
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType::OrSymbol,
            region:
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region::OrSymbol,
            score: Float,
            text: String,
            user_id: String,
            metadata: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique chunk identifier.
          id:,
          # Zero-based index of this chunk within the parent record.
          chunk_index:,
          # Total number of chunks the parent record was split into.
          chunk_total:,
          # Document identifier. Present only for knowledge_base records; null for all other
          # record types.
          document_id:,
          # When the record was chunked, embedded, and indexed (ISO 8601).
          ingested_at:,
          # Identifier of the organization that owns this record.
          organization_id:,
          # When the original record was created (ISO 8601).
          record_created_at:,
          # Identifier of the parent record. Multiple chunks from the same record share this
          # ID.
          record_id:,
          # Type of the record.
          record_type:,
          # The region where this record is stored.
          region:,
          # Cosine similarity score between the query vector and this chunk's vector. Higher
          # values indicate greater semantic relevance.
          score:,
          # The text content of this chunk (up to 480 tokens).
          text:,
          # Identifier of the user who owns this record.
          user_id:,
          # Arbitrary metadata attached to the record at ingestion time. Stored as a
          # flat_object in OpenSearch and filterable via filter[field]=value query
          # parameters.
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              chunk_index: Integer,
              chunk_total: Integer,
              document_id: T.nilable(String),
              ingested_at: Time,
              organization_id: String,
              record_created_at: Time,
              record_id: String,
              record_type:
                Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType::TaggedSymbol,
              region:
                Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region::TaggedSymbol,
              score: Float,
              text: String,
              user_id: String,
              metadata: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end

        # Type of the record.
        module RecordType
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          VOICE =
            T.let(
              :voice,
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType::TaggedSymbol
            )
          MESSAGE =
            T.let(
              :message,
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType::TaggedSymbol
            )
          AI_PIPELINE_STORAGE =
            T.let(
              :ai_pipeline_storage,
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType::TaggedSymbol
            )
          KNOWLEDGE_BASE =
            T.let(
              :knowledge_base,
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::RecordType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # The region where this record is stored.
        module Region
          extend Telnyx::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          USA =
            T.let(
              :USA,
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region::TaggedSymbol
            )
          DEU =
            T.let(
              :DEU,
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region::TaggedSymbol
            )
          AUS =
            T.let(
              :AUS,
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region::TaggedSymbol
            )
          UAE =
            T.let(
              :UAE,
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Telnyx::Models::AIRetrieveConversationHistoriesResponse::Data::Region::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Meta < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Telnyx::Models::AIRetrieveConversationHistoriesResponse::Meta,
              Telnyx::Internal::AnyHash
            )
          end

        # Current page number (always 1 — this API does not support pagination, use top_k
        # instead).
        sig { returns(Integer) }
        attr_accessor :page_number

        # Number of results per page (equals the effective top_k value).
        sig { returns(Integer) }
        attr_accessor :page_size

        # Total number of pages.
        sig { returns(Integer) }
        attr_accessor :total_pages

        # Total number of matching results across all queried regions (before top_k
        # truncation).
        sig { returns(Integer) }
        attr_accessor :total_results

        # Pagination metadata following the standard Telnyx V2 API format.
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            total_pages: Integer,
            total_results: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Current page number (always 1 — this API does not support pagination, use top_k
          # instead).
          page_number:,
          # Number of results per page (equals the effective top_k value).
          page_size:,
          # Total number of pages.
          total_pages:,
          # Total number of matching results across all queried regions (before top_k
          # truncation).
          total_results:
        )
        end

        sig do
          override.returns(
            {
              page_number: Integer,
              page_size: Integer,
              total_pages: Integer,
              total_results: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
