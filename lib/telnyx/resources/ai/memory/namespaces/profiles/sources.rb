# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          class Profiles
            # What a profile stored, and what its memories came from.
            class Sources
              # Some parameter documentations has been truncated, see
              # {Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveParams} for
              # more details.
              #
              # One source and its content, as it was stored: an ingested session's payload or a
              # remembered fact. A source whose ingest is still queued answers 404 until it has
              # been stored.
              #
              # @overload retrieve(source_id, namespace:, profile_id:, request_options: {})
              #
              # @param source_id [String] Identifies one source within its profile: an ingested session, or one remembered
              #
              # @param namespace [String] The namespace. `default` exists for every organization.
              #
              # @param profile_id [String] The profile: your identifier for the user, caller or agent this memory is about.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse]
              #
              # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveParams
              def retrieve(source_id, params)
                parsed, options = Telnyx::AI::Memory::Namespaces::Profiles::SourceRetrieveParams.dump_request(params)
                namespace =
                  parsed.delete(:namespace) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                profile_id =
                  parsed.delete(:profile_id) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :get,
                  path: [
                    "ai/memory/namespaces/%1$s/profiles/%2$s/sources/%3$s",
                    namespace,
                    profile_id,
                    source_id
                  ],
                  model: Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceRetrieveResponse,
                  options: options
                )
              end

              # Some parameter documentations has been truncated, see
              # {Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceListParams} for more
              # details.
              #
              # Everything a profile has stored and extracts memories from: each ingested
              # session, and each remembered fact, which has no session. Content is not listed;
              # read one source for it. A source whose ingest is still queued is not here yet.
              # Re-ingesting a session moves it to the front, so a listing paged while sessions
              # are written can repeat or miss one at a page boundary. A `session_id` narrows
              # the listing to the source that session was stored as: one source or none, and
              # none -- an empty page, not a 404 -- for a session never ingested, still queued,
              # or another profile's.
              #
              # @overload list(profile_id, namespace:, page_number: nil, page_size: nil, session_id: nil, request_options: {})
              #
              # @param profile_id [String] Path param
              #
              # @param namespace [String] Path param
              #
              # @param page_number [Integer] Query param: The page to return, counting from 1. Bounded in depth: (page[number
              #
              # @param page_size [Integer] Query param: How many results a page holds.
              #
              # @param session_id [String, nil] Query param: An ingested session, by the `session_id` it was ingested with. Narr
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Collections::Source>]
              #
              # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceListParams
              def list(profile_id, params)
                parsed, options = Telnyx::AI::Memory::Namespaces::Profiles::SourceListParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                namespace =
                  parsed.delete(:namespace) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :get,
                  path: ["ai/memory/namespaces/%1$s/profiles/%2$s/sources", namespace, profile_id],
                  query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
                  page: Telnyx::Internal::DefaultFlatPagination,
                  model: Telnyx::AI::Collections::Source,
                  options: options
                )
              end

              # Some parameter documentations has been truncated, see
              # {Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteParams} for more
              # details.
              #
              # Deletes one source -- an ingested session or a remembered fact -- together with
              # the memories derived from it. A memory derived from this source and others is
              # deleted too, and derived again from what remains in the background. It answers
              # only once the source is gone. A source that is not there -- never stored,
              # another profile's, or already deleted -- answers 404, so on a `502` or a `504`
              # repeat the identical request and read a 404 as done. An ingest of the same
              # session that is still queued is not cancelled, and stores the session again when
              # it runs. Nothing here can be undone.
              #
              # @overload delete(source_id, namespace:, profile_id:, request_options: {})
              #
              # @param source_id [String] Identifies one source within its profile: an ingested session, or one remembered
              #
              # @param namespace [String] The namespace. `default` exists for every organization.
              #
              # @param profile_id [String] The profile: your identifier for the user, caller or agent this memory is about.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse]
              #
              # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteParams
              def delete(source_id, params)
                parsed, options = Telnyx::AI::Memory::Namespaces::Profiles::SourceDeleteParams.dump_request(params)
                namespace =
                  parsed.delete(:namespace) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                profile_id =
                  parsed.delete(:profile_id) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :delete,
                  path: [
                    "ai/memory/namespaces/%1$s/profiles/%2$s/sources/%3$s",
                    namespace,
                    profile_id,
                    source_id
                  ],
                  model: Telnyx::Models::AI::Memory::Namespaces::Profiles::SourceDeleteResponse,
                  options: options
                )
              end

              # @api private
              #
              # @param client [Telnyx::Client]
              def initialize(client:)
                @client = client
              end
            end
          end
        end
      end
    end
  end
end
