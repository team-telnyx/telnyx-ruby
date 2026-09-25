# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      class Memory
        class Namespaces
          class Profiles
            # What a namespace and a profile hold.
            class Memories
              # Some parameter documentations has been truncated, see
              # {Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveParams} for
              # more details.
              #
              # One memory by its id, as `recall` and the listing return it, together with what
              # it came from. A fact names its `source_id`: read it with
              # `GET .../sources/{source_id}` to see what was stored. A memory derived from
              # other memories names them in `derived_from` instead; read each of those to reach
              # its source.
              #
              # @overload retrieve(memory_id, namespace:, profile_id:, request_options: {})
              #
              # @param memory_id [String] A memory's id, as `recall` and the listing return it.
              #
              # @param namespace [String] The namespace. `default` exists for every organization.
              #
              # @param profile_id [String] The profile: your identifier for the user, caller or agent this memory is about.
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse]
              #
              # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveParams
              def retrieve(memory_id, params)
                parsed, options = Telnyx::AI::Memory::Namespaces::Profiles::MemoryRetrieveParams.dump_request(params)
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
                    "ai/memory/namespaces/%1$s/profiles/%2$s/memories/%3$s",
                    namespace,
                    profile_id,
                    memory_id
                  ],
                  model: Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryRetrieveResponse,
                  options: options
                )
              end

              # Some parameter documentations has been truncated, see
              # {Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryListParams} for more
              # details.
              #
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
              #
              # @overload list(profile_id, namespace:, page_number: nil, page_size: nil, session_id: nil, source_id: nil, request_options: {})
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
              # @param source_id [String, nil] Query param: Narrows the listing to the memories extracted from one source, a re
              #
              # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
              #
              # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryListResponse>]
              #
              # @see Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryListParams
              def list(profile_id, params)
                parsed, options = Telnyx::AI::Memory::Namespaces::Profiles::MemoryListParams.dump_request(params)
                query = Telnyx::Internal::Util.encode_query_params(parsed)
                namespace =
                  parsed.delete(:namespace) do
                    raise ArgumentError.new("missing required path argument #{_1}")
                  end
                @client.request(
                  method: :get,
                  path: ["ai/memory/namespaces/%1$s/profiles/%2$s/memories", namespace, profile_id],
                  query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
                  page: Telnyx::Internal::DefaultFlatPagination,
                  model: Telnyx::Models::AI::Memory::Namespaces::Profiles::MemoryListResponse,
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
