# typed: strong

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          class Profiles
            # What a profile stored, and what its memories came from.
            class Sources
              # One source and its content, as it was stored: an ingested session's payload or a
              # remembered fact. A source whose ingest is still queued answers 404 until it has
              # been stored.
              sig do
                params(
                  source_id: String,
                  namespace: String,
                  profile_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse
                )
              end
              def retrieve(
                # Identifies one source within its profile: an ingested session, or one remembered
                # fact. Returned by `ingest` and `remember` when the write is accepted.
                # Re-ingesting a session keeps its source id.
                source_id,
                # The namespace. `default` exists for every organization.
                namespace:,
                # The profile: your identifier for the user, caller or agent this memory is about.
                profile_id:,
                request_options: {}
              )
              end

              # Everything a profile has stored and extracts memories from: each ingested
              # session, and each remembered fact, which has no session. Content is not listed;
              # read one source for it. A source whose ingest is still queued is not here yet.
              # Re-ingesting a session moves it to the front, so a listing paged while sessions
              # are written can repeat or miss one at a page boundary. A `session_id` narrows
              # the listing to the source that session was stored as: one source or none, and
              # none -- an empty page, not a 404 -- for a session never ingested, still queued,
              # or another profile's.
              sig do
                params(
                  profile_id: String,
                  namespace: String,
                  page_number: Integer,
                  page_size: Integer,
                  session_id: T.nilable(String),
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Internal::DefaultFlatPagination[
                    Telnyx::AI::Collections::Source
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
                request_options: {}
              )
              end

              # Deletes one source -- an ingested session or a remembered fact -- together with
              # the memories derived from it. A memory derived from this source and others is
              # deleted too, and derived again from what remains in the background. It answers
              # only once the source is gone. A source that is not there -- never stored,
              # another profile's, or already deleted -- answers 404, so on a `502` or a `504`
              # repeat the identical request and read a 404 as done. An ingest of the same
              # session that is still queued is not cancelled, and stores the session again when
              # it runs. Nothing here can be undone.
              sig do
                params(
                  source_id: String,
                  namespace: String,
                  profile_id: String,
                  request_options: Telnyx::RequestOptions::OrHash
                ).returns(
                  Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse
                )
              end
              def delete(
                # Identifies one source within its profile: an ingested session, or one remembered
                # fact. Returned by `ingest` and `remember` when the write is accepted.
                # Re-ingesting a session keeps its source id.
                source_id,
                # The namespace. `default` exists for every organization.
                namespace:,
                # The profile: your identifier for the user, caller or agent this memory is about.
                profile_id:,
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
