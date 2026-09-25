# frozen_string_literal: true

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            # @see Telnyx::Resources::AI::Memory::Namespaces::Profiles::Sources#retrieve
            class SourceRetrieveResponse < Telnyx::Internal::Type::BaseModel
              # @!attribute data
              #
              #   @return [Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data]
              required :data, -> { Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data }

              # @!method initialize(data:)
              #   @param data [Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data]

              # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse#data
              class Data < Telnyx::Internal::Type::BaseModel
                # @!attribute id
                #   Identifies one source within its profile: an ingested session, or one remembered
                #   fact. Returned by `ingest` and `remember` when the write is accepted.
                #   Re-ingesting a session keeps its source id.
                #
                #   @return [String]
                required :id, String

                # @!attribute content
                #   What was stored, in the shape it was sent: an ingested JSON body as JSON, a
                #   string body or a remembered fact as a string. A session ingested before formats
                #   were recorded is returned as the text it was stored as.
                #
                #   @return [Hash{Symbol=>Object}, Array<Object>, String, Float, Boolean]
                required :content,
                         union: -> { Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content }

                # @!attribute memory_count
                #   Memories extracted from this source. A memory derived from several sources is
                #   not counted here.
                #
                #   @return [Integer]
                required :memory_count, Integer

                # @!attribute session_id
                #   The session this source was ingested as. Null for a remembered fact.
                #
                #   @return [String, nil]
                required :session_id, String, nil?: true

                # @!attribute created_at
                #   When the source was first stored.
                #
                #   @return [String, nil]
                optional :created_at, String, nil?: true

                # @!attribute updated_at
                #   When the source was last written; re-ingesting moves it.
                #
                #   @return [String, nil]
                optional :updated_at, String, nil?: true

                # @!method initialize(id:, content:, memory_count:, session_id:, created_at: nil, updated_at: nil)
                #   Some parameter documentations has been truncated, see
                #   {Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data}
                #   for more details.
                #
                #   @param id [String] Identifies one source within its profile: an ingested session, or one remembered
                #
                #   @param content [Hash{Symbol=>Object}, Array<Object>, String, Float, Boolean] What was stored, in the shape it was sent: an ingested JSON body as JSON, a stri
                #
                #   @param memory_count [Integer] Memories extracted from this source. A memory derived from several sources is no
                #
                #   @param session_id [String, nil] The session this source was ingested as. Null for a remembered fact.
                #
                #   @param created_at [String, nil] When the source was first stored.
                #
                #   @param updated_at [String, nil] When the source was last written; re-ingesting moves it.

                # What was stored, in the shape it was sent: an ingested JSON body as JSON, a
                # string body or a remembered fact as a string. A session ingested before formats
                # were recorded is returned as the text it was stored as.
                #
                # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data#content
                module Content
                  extend Telnyx::Internal::Type::Union

                  variant -> { Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::UnionMember0Map }

                  variant union: -> { Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::UnionMember1 }

                  module UnionMember1
                    extend Telnyx::Internal::Type::Union

                    variant -> { Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::UnionMember1::UnionMember0Array }

                    variant String

                    variant Float

                    variant Telnyx::Internal::Type::Boolean

                    # @!method self.variants
                    #   @return [Array(Array<Object>, String, Float, Boolean)]

                    # @type [Telnyx::Internal::Type::Converter]
                    UnionMember0Array = Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::Unknown]
                  end

                  # @!method self.variants
                  #   @return [Array(Hash{Symbol=>Object}, Array<Object>, String, Float, Boolean)]

                  # @type [Telnyx::Internal::Type::Converter]
                  UnionMember0Map = Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]
                end
              end
            end
          end
        end
      end
    end
  end
end
