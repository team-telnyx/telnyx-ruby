# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      # Manage SQL databases and run SQL against them
      class Sqldbs
        # Manage SQL databases and run SQL against them
        # @return [Telnyx::Resources::Storage::Sqldbs::Actions]
        attr_reader :actions

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Storage::SqldbCreateParams} for more details.
        #
        # Creates a new SQL database. Provisioning is asynchronous: the database is
        # returned with status `pending` and becomes usable once it reaches
        # `provision_ok`.
        #
        # @overload create(name:, request_options: {})
        #
        # @param name [String] Database name. Lowercase letters, numbers, and hyphens only; must start and end
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::SqlDatabaseResponseWrapper]
        #
        # @see Telnyx::Models::Storage::SqldbCreateParams
        def create(params)
          parsed, options = Telnyx::Storage::SqldbCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "storage/sqldbs",
            body: parsed,
            model: Telnyx::Storage::SqlDatabaseResponseWrapper,
            options: options
          )
        end

        # Retrieves a SQL database by its ID, including its provisioning status.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] SQL database ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::SqlDatabaseResponseWrapper]
        #
        # @see Telnyx::Models::Storage::SqldbRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["storage/sqldbs/%1$s", id],
            model: Telnyx::Storage::SqlDatabaseResponseWrapper,
            options: params[:request_options]
          )
        end

        # Lists the SQL databases for the authenticated user's organization. Results use
        # page-based pagination (`page[number]`/`page[size]`) and can be filtered and
        # sorted.
        #
        # @overload list(filter_name: nil, filter_status: nil, page_number: nil, page_size: nil, sort: nil, request_options: {})
        #
        # @param filter_name [String] Filter by exact name match.
        #
        # @param filter_status [Symbol, Telnyx::Models::Storage::SqldbListParams::FilterStatus] Filter by provisioning status.
        #
        # @param page_number [Integer] The page number to load.
        #
        # @param page_size [Integer] The size of the page. Values above 250 are treated as 250.
        #
        # @param sort [Symbol, Telnyx::Models::Storage::SqldbListParams::Sort] Sort field; prefix with `-` for descending order.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Storage::SqlDatabase>]
        #
        # @see Telnyx::Models::Storage::SqldbListParams
        def list(params = {})
          parsed, options = Telnyx::Storage::SqldbListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "storage/sqldbs",
            query: query.transform_keys(
              filter_name: "filter[name]",
              filter_status: "filter[status]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Storage::SqlDatabase,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Storage::SqldbDeleteParams} for more details.
        #
        # Deletes a SQL database and all of the data it holds. Deletion is asynchronous
        # and returns `202` with an empty body — the record is not removed synchronously.
        # Poll `GET /storage/sqldbs/{id}`, which returns `404` once the database has been
        # purged; there is no durable `deleted` state. A database still bound by a
        # function is refused with `409` unless `force=true`.
        #
        # @overload delete(id, force: nil, request_options: {})
        #
        # @param id [String] SQL database ID
        #
        # @param force [Boolean] Delete the database even when functions still bind it. Their bindings stop resol
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Storage::SqldbDeleteParams
        def delete(id, params = {})
          parsed, options = Telnyx::Storage::SqldbDeleteParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["storage/sqldbs/%1$s", id],
            query: query,
            model: NilClass,
            options: options
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @actions = Telnyx::Resources::Storage::Sqldbs::Actions.new(client: client)
        end
      end
    end
  end
end
