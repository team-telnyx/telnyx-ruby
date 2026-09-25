# typed: strong

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          class Profiles
            # What a namespace and a profile hold.
            class Memories
              # One memory by its id, as `recall` and the listing return it, together with what
              # it came from. A fact names its `source_id`: read it with
              # `GET .../sources/{source_id}` to see what was stored. A memory derived from
              # other memories names them in `derived_from` instead; read each of those to reach
              # its source.
              sig do
                params(
                  memory_id: String,
                  namespace: String,
                  profile_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse
                )
              end
              def retrieve(
                # A memory's id, as `recall` and the listing return it.
                memory_id,
                # The namespace. `default` exists for every organization.
                namespace:,
                # The profile: your identifier for the user, caller or agent this memory is about.
                profile_id:,
                request_options: {}
              )
              end

              # Everything stored under one profile, unranked -- ask `recall` for the memories
              # that answer a question. A profile that holds nothing is an empty page rather
              # than a 404: profiles exist by being written to. Each memory names the
              # `source_id` it was extracted from, or null for a memory derived from other
              # memories -- which can read almost the same as the fact it restates. A
              # `source_id` narrows the listing to the memories extracted from that source, and
              # a `session_id` to those extracted from the session, which is the same thing
              # named another way; pass one or the other. Neither is everything the source led
              # to: a memory derived from several sources belongs to no single one and appears
              # only in the unfiltered listing. A memory written while the listing is paged
              # shifts the pages after it, so an entry can be repeated or missed at a page
              # boundary.
              sig do
                params(
                  profile_id: String,
                  namespace: String,
                  page_number: Integer,
                  page_size: Integer,
                  session_id: T.nilable(String),
                  source_id: T.nilable(String),
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Internal::DefaultFlatPagination[
                    Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryListResponse
                  ]
                )
              end
              def list(
                # Path param
                profile_id,
                # Path param
                namespace:,
                # Query param: The page to return, counting from 1. Bounded in depth:
                # (page[number] - 1) \* page[size] may be at most 10000.
                page_number: nil,
                # Query param: How many results a page holds.
                page_size: nil,
                # Query param: An ingested session, by the `session_id` it was ingested with.
                # Narrows the request to the source that session was stored as.
                session_id: nil,
                # Query param: Narrows the listing to the memories extracted from one source, a
                # remembered fact as well as a session. Pass this or `session_id`, not both.
                source_id: nil,
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
      end
    end
  end
end
