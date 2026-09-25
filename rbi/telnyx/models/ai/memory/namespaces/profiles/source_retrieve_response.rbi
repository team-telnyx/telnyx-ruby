# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            class SourceRetrieveResponse < Telnyx::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data
                )
              end
              attr_reader :data

              sig do
                params(
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::OrHash
                ).void
              end
              attr_writer :data

              sig do
                params(
                  data:
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::OrHash
                ).returns(T.attached_class)
              end
              def self.new(data:)
              end

              sig do
                override.returns(
                  {
                    data:
                      Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data
                  }
                )
              end
              def to_hash
              end

              class Data < Telnyx::Internal::Type::BaseModel
                OrHash =
                  T.type_alias do
                    T.any(
                      Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data,
                      Telnyx::Internal::AnyHash
                    )
                  end

                # Identifies one source within its profile: an ingested session, or one remembered
                # fact. Returned by `ingest` and `remember` when the write is accepted.
                # Re-ingesting a session keeps its source id.
                sig { returns(String) }
                attr_accessor :id

                # What was stored, in the shape it was sent: an ingested JSON body as JSON, a
                # string body or a remembered fact as a string. A session ingested before formats
                # were recorded is returned as the text it was stored as.
                sig do
                  returns(
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::Variants
                  )
                end
                attr_accessor :content

                # Memories extracted from this source. A memory derived from several sources is
                # not counted here.
                sig { returns(Integer) }
                attr_accessor :memory_count

                # The session this source was ingested as. Null for a remembered fact.
                sig { returns(T.nilable(String)) }
                attr_accessor :session_id

                # When the source was first stored.
                sig { returns(T.nilable(String)) }
                attr_accessor :created_at

                # When the source was last written; re-ingesting moves it.
                sig { returns(T.nilable(String)) }
                attr_accessor :updated_at

                sig do
                  params(
                    id: String,
                    content:
                      Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::Variants,
                    memory_count: Integer,
                    session_id: T.nilable(String),
                    created_at: T.nilable(String),
                    updated_at: T.nilable(String)
                  ).returns(T.attached_class)
                end
                def self.new(
                  # Identifies one source within its profile: an ingested session, or one remembered
                  # fact. Returned by `ingest` and `remember` when the write is accepted.
                  # Re-ingesting a session keeps its source id.
                  id:,
                  # What was stored, in the shape it was sent: an ingested JSON body as JSON, a
                  # string body or a remembered fact as a string. A session ingested before formats
                  # were recorded is returned as the text it was stored as.
                  content:,
                  # Memories extracted from this source. A memory derived from several sources is
                  # not counted here.
                  memory_count:,
                  # The session this source was ingested as. Null for a remembered fact.
                  session_id:,
                  # When the source was first stored.
                  created_at: nil,
                  # When the source was last written; re-ingesting moves it.
                  updated_at: nil
                )
                end

                sig do
                  override.returns(
                    {
                      id: String,
                      content:
                        Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::Variants,
                      memory_count: Integer,
                      session_id: T.nilable(String),
                      created_at: T.nilable(String),
                      updated_at: T.nilable(String)
                    }
                  )
                end
                def to_hash
                end

                # What was stored, in the shape it was sent: an ingested JSON body as JSON, a
                # string body or a remembered fact as a string. A session ingested before formats
                # were recorded is returned as the text it was stored as.
                module Content
                  extend Telnyx::Internal::Type::Union

                  Variants =
                    T.type_alias do
                      T.any(
                        T::Hash[Symbol, T.anything],
                        Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::UnionMember1::Variants
                      )
                    end

                  module UnionMember1
                    extend Telnyx::Internal::Type::Union

                    Variants =
                      T.type_alias do
                        T.any(T::Array[T.anything], String, Float, T::Boolean)
                      end

                    sig do
                      override.returns(
                        T::Array[
                          Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::UnionMember1::Variants
                        ]
                      )
                    end
                    def self.variants
                    end

                    UnionMember0Array =
                      T.let(
                        Telnyx::Internal::Type::ArrayOf[
                          Telnyx::Internal::Type::Unknown
                        ],
                        Telnyx::Internal::Type::Converter
                      )
                  end

                  sig do
                    override.returns(
                      T::Array[
                        Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse::Data::Content::Variants
                      ]
                    )
                  end
                  def self.variants
                  end

                  UnionMember0Map =
                    T.let(
                      Telnyx::Internal::Type::HashOf[
                        Telnyx::Internal::Type::Unknown
                      ],
                      Telnyx::Internal::Type::Converter
                    )
                end
              end
            end
          end
        end
      end
    end
  end
end
