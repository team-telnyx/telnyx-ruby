# typed: strong

module Telnyx
  module Models
    module AI
      module Memory
        module Namespaces
          module Profiles
            class MemoryListParams < Telnyx::Internal::Type::BaseModel
              extend Telnyx::Internal::Type::RequestParameters::Converter
              include Telnyx::Internal::Type::RequestParameters

              OrHash =
                T.type_alias do
                  T.any(
                    Telnyx::AI::Memory::Namespaces::Profiles::MemoryListParams,
                    Telnyx::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :namespace

              sig { returns(String) }
              attr_accessor :profile_id

              # The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
              # page[size] may be at most 10000.
              sig { returns(T.nilable(Integer)) }
              attr_reader :page_number

              sig { params(page_number: Integer).void }
              attr_writer :page_number

              # How many results a page holds.
              sig { returns(T.nilable(Integer)) }
              attr_reader :page_size

              sig { params(page_size: Integer).void }
              attr_writer :page_size

              # An ingested session, by the `session_id` it was ingested with. Narrows the
              # request to the source that session was stored as.
              sig { returns(T.nilable(String)) }
              attr_accessor :session_id

              # Narrows the listing to the memories extracted from one source, a remembered fact
              # as well as a session. Pass this or `session_id`, not both.
              sig { returns(T.nilable(String)) }
              attr_accessor :source_id

              sig do
                params(
                  namespace: String,
                  profile_id: String,
                  page_number: Integer,
                  page_size: Integer,
                  session_id: T.nilable(String),
                  source_id: T.nilable(String),
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(T.attached_class)
              end
              def self.new(
                namespace:,
                profile_id:,
                # The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
                # page[size] may be at most 10000.
                page_number: nil,
                # How many results a page holds.
                page_size: nil,
                # An ingested session, by the `session_id` it was ingested with. Narrows the
                # request to the source that session was stored as.
                session_id: nil,
                # Narrows the listing to the memories extracted from one source, a remembered fact
                # as well as a session. Pass this or `session_id`, not both.
                source_id: nil,
                request_options: {}
              )
              end

              sig do
                override.returns(
                  {
                    namespace: String,
                    profile_id: String,
                    page_number: Integer,
                    page_size: Integer,
                    session_id: T.nilable(String),
                    source_id: T.nilable(String),
                    request_options: Telnyx::RequestOptions
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
