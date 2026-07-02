# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      # Manage KV storage namespaces
      class Kvs
        # Read and write keys within a KV namespace
        # @return [Telnyx::Resources::Storage::Kvs::Keys]
        attr_reader :keys

        # Creates a new KV namespace. Provisioning is asynchronous: the namespace is
        # returned with status `pending` and becomes usable once it reaches
        # `provision_ok`.
        #
        # @overload create(name:, request_options: {})
        #
        # @param name [String] Namespace name. May contain lowercase letters, numbers, and hyphens only.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::KvCreateResponse]
        #
        # @see Telnyx::Models::Storage::KvCreateParams
        def create(params)
          parsed, options = Telnyx::Storage::KvCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "storage/kvs",
            body: parsed,
            model: Telnyx::Models::Storage::KvCreateResponse,
            options: options
          )
        end

        # Retrieves a KV namespace by its ID, including its provisioning status.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] KV namespace ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::KvRetrieveResponse]
        #
        # @see Telnyx::Models::Storage::KvRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["storage/kvs/%1$s", id],
            model: Telnyx::Models::Storage::KvRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Lists the KV namespaces for the authenticated user's organization. Results use
        # page-based pagination (`page[number]`/`page[size]`).
        #
        # @overload list(page_number: nil, page_size: nil, request_options: {})
        #
        # @param page_number [Integer] The page number to load.
        #
        # @param page_size [Integer] The size of the page. Values above 250 are treated as 250.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Storage::KvListResponse>]
        #
        # @see Telnyx::Models::Storage::KvListParams
        def list(params = {})
          parsed, options = Telnyx::Storage::KvListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "storage/kvs",
            query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Storage::KvListResponse,
            options: options
          )
        end

        # Deletes a KV namespace and all of the keys it contains. Deletion is
        # asynchronous: the namespace is returned with status `deleting`. Deleting a
        # namespace whose deletion is already in progress returns a `409`.
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] KV namespace ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::KvDeleteResponse]
        #
        # @see Telnyx::Models::Storage::KvDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["storage/kvs/%1$s", id],
            model: Telnyx::Models::Storage::KvDeleteResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @keys = Telnyx::Resources::Storage::Kvs::Keys.new(client: client)
        end
      end
    end
  end
end
