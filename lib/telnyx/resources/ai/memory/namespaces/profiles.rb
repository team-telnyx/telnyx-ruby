# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          class Profiles
            # What a namespace and a profile hold.
            # @return [Telnyx::Resources::AI::Memory::Namespaces::Profiles::Memories]
            attr_reader :memories

            # What a profile stored, and what its memories came from.
            # @return [Telnyx::Resources::AI::Memory::Namespaces::Profiles::Sources]
            attr_reader :sources

            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::AI::Memory::Namespaces::ProfileListParams} for more details.
            #
            # Profiles are never created, only written to, so this lists the ones that hold a
            # memory. A profile whose first ingest is still running is not here yet. Ordered
            # by memory count, largest first, so a profile written to while the listing is
            # paged can move between pages and be repeated or missed.
            #
            # @overload list(namespace, page_number: nil, page_size: nil, request_options: {})
            #
            # @param namespace [String]
            #
            # @param page_number [Integer] The page to return, counting from 1. Bounded in depth: (page[number] - 1) \*
            # page
            #
            # @param page_size [Integer] How many results a page holds.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Memory::Namespaces::ProfileListResponse>]
            #
            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileListParams
            def list(namespace, params = {})
              parsed, options = Telnyx::AI::Memory::Namespaces::ProfileListParams.dump_request(params)
              query = Telnyx::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: ["ai/memory/namespaces/%1$s/profiles", namespace],
                query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
                page: Telnyx::Internal::DefaultFlatPagination,
                model: Telnyx::Models::AI::Memory::Namespaces::ProfileListResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteParams} for more details.
            #
            # Delete everything held about one profile. A 2xx means none of its memories are
            # left, and its summary goes with them. There is no undo.
            #
            # @overload delete(profile_id, namespace:, request_options: {})
            #
            # @param profile_id [String] The profile: your identifier for the user, caller or agent this memory is about.
            #
            # @param namespace [String] The namespace. `default` exists for every organization.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse]
            #
            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteParams
            def delete(profile_id, params)
              parsed, options = Telnyx::AI::Memory::Namespaces::ProfileDeleteParams.dump_request(params)
              namespace =
                parsed.delete(:namespace) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :delete,
                path: ["ai/memory/namespaces/%1$s/profiles/%2$s", namespace, profile_id],
                model: Telnyx::Models::AI::Memory::Namespaces::ProfileDeleteResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::AI::Memory::Namespaces::ProfileIngestParams} for more details.
            #
            # Store a session. Facts are extracted from whatever you send — the body is taken
            # as any JSON value and stored whole, so a framework's own transcript shape works
            # unchanged. `messages` of `role`/`content` is the conventional shape, not a
            # requirement. An empty object or a null body is refused. Carry a `session_id` to
            # name the session: re-ingesting the same one replaces what it held. Omit it and a
            # session is opened and returned. Extraction runs asynchronously — poll the
            # returned operation.
            #
            # @overload ingest(profile_id, namespace:, body:, session_id: nil, request_options: {})
            #
            # @param profile_id [String] Path param
            #
            # @param namespace [String] Path param
            #
            # @param body [Hash{Symbol=>Object}, Array<Object>, String, Float, Boolean] Body param: The session's messages, in whatever shape your framework produces. A
            #
            # @param session_id [String, nil] Query param: Names the session. Re-ingesting the same session replaces what it h
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse]
            #
            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileIngestParams
            def ingest(profile_id, params)
              parsed, options = Telnyx::AI::Memory::Namespaces::ProfileIngestParams.dump_request(params)
              query = Telnyx::Internal::Util.encode_query_params(parsed.except(:body))
              namespace =
                parsed.delete(:namespace) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["ai/memory/namespaces/%1$s/profiles/%2$s/ingest", namespace, profile_id],
                query: query,
                body: parsed[:body],
                model: Telnyx::Models::AI::Memory::Namespaces::ProfileIngestResponse,
                options: options
              )
            end

            # Ranked memories for a question. Matching runs over the profile's memories and
            # returns them in rank order with a relevance `score`; the score is null where the
            # deployment's reranker is a passthrough, in which case order is the only signal.
            # No model runs in this path — recall returns facts, it does not compose an
            # answer.
            #
            # @overload recall(profile_id, namespace:, query:, top_k: nil, request_options: {})
            #
            # @param profile_id [String] Path param
            #
            # @param namespace [String] Path param
            #
            # @param query [String] Body param
            #
            # @param top_k [Integer, nil] Body param
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse]
            #
            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileRecallParams
            def recall(profile_id, params)
              parsed, options = Telnyx::AI::Memory::Namespaces::ProfileRecallParams.dump_request(params)
              namespace =
                parsed.delete(:namespace) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["ai/memory/namespaces/%1$s/profiles/%2$s/recall", namespace, profile_id],
                body: parsed,
                model: Telnyx::Models::AI::Memory::Namespaces::ProfileRecallResponse,
                options: options
              )
            end

            # For a fact the agent has already distilled: `text` is stored as given, with
            # nothing extracted from it. Send a transcript to `ingest` instead. Remembering
            # the same text again writes the same memory rather than a second copy of it, so a
            # retry is safe. The write runs asynchronously -- poll the returned operation.
            #
            # @overload remember(profile_id, namespace:, text:, request_options: {})
            #
            # @param profile_id [String] Path param
            #
            # @param namespace [String] Path param
            #
            # @param text [String] Body param
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse]
            #
            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileRememberParams
            def remember(profile_id, params)
              parsed, options = Telnyx::AI::Memory::Namespaces::ProfileRememberParams.dump_request(params)
              namespace =
                parsed.delete(:namespace) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["ai/memory/namespaces/%1$s/profiles/%2$s/remember", namespace, profile_id],
                body: parsed,
                model: Telnyx::Models::AI::Memory::Namespaces::ProfileRememberResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryParams} for more
            # details.
            #
            # The whole profile as one card, precomputed, with no query. Built for the start
            # of a session, where there is no question to ask yet.
            #
            # A summary is generated in the background. `is_stale` tells you newer memories
            # have arrived since it was written; that is ordinary and the card is still
            # usable.
            #
            # @overload retrieve_summary(profile_id, namespace:, request_options: {})
            #
            # @param profile_id [String] The profile: your identifier for the user, caller or agent this memory is about.
            #
            # @param namespace [String] The namespace. `default` exists for every organization.
            #
            # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse]
            #
            # @see Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryParams
            def retrieve_summary(profile_id, params)
              parsed, options = Telnyx::AI::Memory::Namespaces::ProfileRetrieveSummaryParams.dump_request(params)
              namespace =
                parsed.delete(:namespace) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["ai/memory/namespaces/%1$s/profiles/%2$s/summary", namespace, profile_id],
                model: Telnyx::Models::AI::Memory::Namespaces::ProfileRetrieveSummaryResponse,
                options: options
              )
            end

            # @api private
            #
            # @param client [Telnyx::Client]
            def initialize(client:)
              @client = client
              @memories = Telnyx::Resources::AI::Memory::Namespaces::Profiles::Memories.new(client: client)
              @sources = Telnyx::Resources::AI::Memory::Namespaces::Profiles::Sources.new(client: client)
            end
          end
        end
      end
    end
  end
end
