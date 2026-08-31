# typed: strong

module Telnyx
  module Models
    module AI
      module Knowledge
        class CollectionRetrieveDocumentsParams < Telnyx::Internal::Type::BaseModel
          extend Telnyx::Internal::Type::RequestParameters::Converter
          include Telnyx::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams,
                Telnyx::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :slug

          # Field filters applied before ranking, using `filter[field][operator]=value`.
          # Supported operators: `eq` (default), `in`, `gte`, `gt`, `lte`, `lt`, `contains`.
          # Known fields: `record_type`, `record_id`, `user_id`, `record_created_at`,
          # `ingested_at`; any other name resolves to a `metadata.<field>` filter. Example:
          # `filter[record_id][eq]=rec_123`.
          sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
          attr_reader :filter

          sig { params(filter: T::Hash[Symbol, T.anything]).void }
          attr_writer :filter

          # Page number to return (1-based). Defaults to 1.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_number

          sig { params(page_number: Integer).void }
          attr_writer :page_number

          # Number of results per page. Defaults to 20.
          sig { returns(T.nilable(Integer)) }
          attr_reader :page_size

          sig { params(page_size: Integer).void }
          attr_writer :page_size

          # Natural-language search query. When provided, the text is matched against the
          # collection's document chunks using the collection's `retrieval_type` (vector or
          # hybrid). When omitted, documents are returned as a plain catalog listing.
          sig { returns(T.nilable(String)) }
          attr_reader :query

          sig { params(query: String).void }
          attr_writer :query

          # Reserved; not yet functional. A value supplied here is accepted but ignored — it
          # does not override the collection's configured strategy, and it is not echoed
          # back. Searches run `vector` retrieval, and `meta.retrieval_type` reports the
          # mode that actually ran. To change retrieval strategy, set it on the collection's
          # settings subresource.
          sig do
            returns(
              T.nilable(
                Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::OrSymbol
              )
            )
          end
          attr_reader :retrieval_type

          sig do
            params(
              retrieval_type:
                Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::OrSymbol
            ).void
          end
          attr_writer :retrieval_type

          # Comma-separated list of source types to restrict the search to. When omitted,
          # all of the collection's sources are searched.
          sig { returns(T.nilable(String)) }
          attr_reader :sources

          sig { params(sources: String).void }
          attr_writer :sources

          # Maximum number of ranked results to consider. When omitted, the collection's
          # configured `top_k` setting is used.
          sig { returns(T.nilable(Integer)) }
          attr_reader :top_k

          sig { params(top_k: Integer).void }
          attr_writer :top_k

          sig do
            params(
              slug: String,
              filter: T::Hash[Symbol, T.anything],
              page_number: Integer,
              page_size: Integer,
              query: String,
              retrieval_type:
                Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::OrSymbol,
              sources: String,
              top_k: Integer,
              request_options: Telnyx::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            slug:,
            # Field filters applied before ranking, using `filter[field][operator]=value`.
            # Supported operators: `eq` (default), `in`, `gte`, `gt`, `lte`, `lt`, `contains`.
            # Known fields: `record_type`, `record_id`, `user_id`, `record_created_at`,
            # `ingested_at`; any other name resolves to a `metadata.<field>` filter. Example:
            # `filter[record_id][eq]=rec_123`.
            filter: nil,
            # Page number to return (1-based). Defaults to 1.
            page_number: nil,
            # Number of results per page. Defaults to 20.
            page_size: nil,
            # Natural-language search query. When provided, the text is matched against the
            # collection's document chunks using the collection's `retrieval_type` (vector or
            # hybrid). When omitted, documents are returned as a plain catalog listing.
            query: nil,
            # Reserved; not yet functional. A value supplied here is accepted but ignored — it
            # does not override the collection's configured strategy, and it is not echoed
            # back. Searches run `vector` retrieval, and `meta.retrieval_type` reports the
            # mode that actually ran. To change retrieval strategy, set it on the collection's
            # settings subresource.
            retrieval_type: nil,
            # Comma-separated list of source types to restrict the search to. When omitted,
            # all of the collection's sources are searched.
            sources: nil,
            # Maximum number of ranked results to consider. When omitted, the collection's
            # configured `top_k` setting is used.
            top_k: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                slug: String,
                filter: T::Hash[Symbol, T.anything],
                page_number: Integer,
                page_size: Integer,
                query: String,
                retrieval_type:
                  Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::OrSymbol,
                sources: String,
                top_k: Integer,
                request_options: Telnyx::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Reserved; not yet functional. A value supplied here is accepted but ignored — it
          # does not override the collection's configured strategy, and it is not echoed
          # back. Searches run `vector` retrieval, and `meta.retrieval_type` reports the
          # mode that actually ran. To change retrieval strategy, set it on the collection's
          # settings subresource.
          module RetrievalType
            extend Telnyx::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            VECTOR =
              T.let(
                :vector,
                Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::TaggedSymbol
              )
            HYBRID =
              T.let(
                :hybrid,
                Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::TaggedSymbol
              )
            KEYWORD =
              T.let(
                :keyword,
                Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Telnyx::AI::Knowledge::CollectionRetrieveDocumentsParams::RetrievalType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
