# typed: strong

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          class Profiles
            # What a namespace and a profile hold.
            sig do
              returns(
                Telnyx::Resources::AI::Memory::Namespaces::Profiles::Memories
              )
            end
            attr_reader :memories

            # What a profile stored, and what its memories came from.
            sig do
              returns(
                Telnyx::Resources::AI::Memory::Namespaces::Profiles::Sources
              )
            end
            attr_reader :sources

            # Profiles are never created, only written to, so this lists the ones that hold a
            # memory. A profile whose first ingest is still running is not here yet. Ordered
            # by memory count, largest first, so a profile written to while the listing is
            # paged can move between pages and be repeated or missed.
            sig do
              params(
                namespace: String,
                page_number: Integer,
                page_size: Integer,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Internal::DefaultFlatPagination[
                  Telnyx::Models::AI::Memory::Namespaces::ProfileListResponse
                ]
              )
            end
            def list(
              namespace,
              # The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
              # page[size] may be at most 10000.
              page_number: nil,
              # How many results a page holds.
              page_size: nil,
              request_options: {}
            )
            end

            # Delete everything held about one profile. A 2xx means none of its memories are
            # left, and its summary goes with them. There is no undo.
            sig do
              params(
                profile_id: String,
                namespace: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse
              )
            end
            def delete(
              # The profile: your identifier for the user, caller or agent this memory is about.
              profile_id,
              # The namespace. `default` exists for every organization.
              namespace:,
              request_options: {}
            )
            end

            # Store a session. Facts are extracted from whatever you send — the body is taken
            # as any JSON value and stored whole, so a framework's own transcript shape works
            # unchanged. `messages` of `role`/`content` is the conventional shape, not a
            # requirement. An empty object or a null body is refused. Carry a `session_id` to
            # name the session: re-ingesting the same one replaces what it held. Omit it and a
            # session is opened and returned. Extraction runs asynchronously — poll the
            # returned operation.
            sig do
              params(
                profile_id: String,
                namespace: String,
                body:
                  Telnyx::AI::Memory::Namespaces::ProfileIngestParams::Body::Variants,
                session_id: T.nilable(String),
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse
              )
            end
            def ingest(
              # Path param
              profile_id,
              # Path param
              namespace:,
              # Body param: The session's messages, in whatever shape your framework produces.
              # Any JSON value but null is accepted and stored whole, as long as it holds
              # something to remember: a body with no content anywhere in it -- `{}`, `[]`,
              # `""`, `{"messages": []}` -- is a 422.
              body:,
              # Query param: Names the session. Re-ingesting the same session replaces what it
              # held and keeps its `source_id`. Omit it to have one derived from the content and
              # returned. No whitespace, control characters, or any of / \ # ? %.
              session_id: nil,
              request_options: {}
            )
            end

            # Ranked memories for a question. Matching runs over the profile's memories and
            # returns them in rank order with a relevance `score`; the score is null where the
            # deployment's reranker is a passthrough, in which case order is the only signal.
            # No model runs in this path — recall returns facts, it does not compose an
            # answer.
            sig do
              params(
                profile_id: String,
                namespace: String,
                query: String,
                top_k: T.nilable(Integer),
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse
              )
            end
            def recall(
              # Path param
              profile_id,
              # Path param
              namespace:,
              # Body param
              query:,
              # Body param
              top_k: nil,
              request_options: {}
            )
            end

            # For a fact the agent has already distilled: `text` is stored as given, with
            # nothing extracted from it. Send a transcript to `ingest` instead. Remembering
            # the same text again writes the same memory rather than a second copy of it, so a
            # retry is safe. The write runs asynchronously -- poll the returned operation.
            sig do
              params(
                profile_id: String,
                namespace: String,
                text: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse
              )
            end
            def remember(
              # Path param
              profile_id,
              # Path param
              namespace:,
              # Body param
              text:,
              request_options: {}
            )
            end

            # The whole profile as one card, precomputed, with no query. Built for the start
            # of a session, where there is no question to ask yet.
            #
            # A summary is generated in the background. `is_stale` tells you newer memories
            # have arrived since it was written; that is ordinary and the card is still
            # usable.
            sig do
              params(
                profile_id: String,
                namespace: String,
                request_options: Telnyx::RequestOptions::OrHash
              ).returns(
                Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse
              )
            end
            def retrieve_summary(
              # The profile: your identifier for the user, caller or agent this memory is about.
              profile_id,
              # The namespace. `default` exists for every organization.
              namespace:,
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
