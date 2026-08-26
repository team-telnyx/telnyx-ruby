# frozen_string_literal: true

module Telnyx
  module Resources
    class AI
      # Create and manage logical collections of your Telnyx data, tune retrieval
      # settings, manage sources, and run collection-scoped semantic search.
      class Collections
        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        # @return [Telnyx::Resources::AI::Collections::Settings]
        attr_reader :settings

        # Create and manage logical collections of your Telnyx data, tune retrieval
        # settings, manage sources, and run collection-scoped semantic search.
        # @return [Telnyx::Resources::AI::Collections::Sources]
        attr_reader :sources

        # Creates a new collection scoped to your organization. Optionally attach sources
        # and retrieval settings at creation time. If `slug` is omitted, one is derived
        # from `name` and must be unique within your organization.
        #
        # @overload create(name:, description: nil, settings: nil, slug: nil, sources: nil, request_options: {})
        #
        # @param name [String] Human-readable collection name.
        #
        # @param description [String] Optional description.
        #
        # @param settings [Telnyx::Models::AI::Collections::RetrievalSettingsWrapper] Optional retrieval settings.
        #
        # @param slug [String] Optional slug (unique per organization). Derived from `name` when omitted.
        #
        # @param sources [Array<Telnyx::Models::AI::Collections::SourceRequest>] Optional sources to attach at creation time.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::CollectionEnvelope]
        #
        # @see Telnyx::Models::AI::CollectionCreateParams
        def create(params)
          parsed, options = Telnyx::AI::CollectionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "ai/collections",
            body: parsed,
            model: Telnyx::AI::CollectionEnvelope,
            options: options
          )
        end

        # Fetches a single collection by its `slug`.
        #
        # @overload retrieve(slug, request_options: {})
        #
        # @param slug [String] The collection's slug (unique within your organization).
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::CollectionEnvelope]
        #
        # @see Telnyx::Models::AI::CollectionRetrieveParams
        def retrieve(slug, params = {})
          @client.request(
            method: :get,
            path: ["ai/collections/slug/%1$s", slug],
            model: Telnyx::AI::CollectionEnvelope,
            options: params[:request_options]
          )
        end

        # Updates a collection's metadata (`name` and/or `description`). Sources and
        # settings are managed through their own sub-resources.
        #
        # @overload update(uuid, description: nil, name: nil, request_options: {})
        #
        # @param uuid [String] The collection's unique identifier.
        #
        # @param description [String]
        #
        # @param name [String]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::CollectionEnvelope]
        #
        # @see Telnyx::Models::AI::CollectionUpdateParams
        def update(uuid, params = {})
          parsed, options = Telnyx::AI::CollectionUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["ai/collections/%1$s", uuid],
            body: parsed,
            model: Telnyx::AI::CollectionEnvelope,
            options: options
          )
        end

        # Returns a paginated list of collections in your organization.
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer] Page number to return (1-based). Defaults to 1.
        #
        # @param page_size [Integer] Number of results per page. Defaults to 20.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::AI::Collection>]
        #
        # @see Telnyx::Models::AI::CollectionListParams
        def list(params = {})
          parsed, options = Telnyx::AI::CollectionListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "ai/collections",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::AI::Collection,
            options: options
          )
        end

        # Soft-deletes a collection. Its `slug` is freed and may be reused by a new
        # collection.
        #
        # @overload delete(uuid, request_options: {})
        #
        # @param uuid [String] The collection's unique identifier.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::AI::CollectionDeleteParams
        def delete(uuid, params = {})
          @client.request(
            method: :delete,
            path: ["ai/collections/%1$s", uuid],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Fetches a single collection by its `uuid`.
        #
        # @overload retrieve_by_id(uuid, request_options: {})
        #
        # @param uuid [String] The collection's unique identifier.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::AI::CollectionEnvelope]
        #
        # @see Telnyx::Models::AI::CollectionRetrieveByIDParams
        def retrieve_by_id(uuid, params = {})
          @client.request(
            method: :get,
            path: ["ai/collections/%1$s", uuid],
            model: Telnyx::AI::CollectionEnvelope,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @settings = Telnyx::Resources::AI::Collections::Settings.new(client: client)
          @sources = Telnyx::Resources::AI::Collections::Sources.new(client: client)
        end
      end
    end
  end
end
