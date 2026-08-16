# typed: strong

module Telnyx
  module Resources
    class Storage
      # Manage SQL databases and run SQL against them
      class Sqldbs
        # Manage SQL databases and run SQL against them
        sig { returns(Telnyx::Resources::Storage::Sqldbs::Actions) }
        attr_reader :actions

        # Creates a new SQL database. Provisioning is asynchronous: the database is
        # returned with status `pending` and becomes usable once it reaches
        # `provision_ok`.
        sig do
          params(
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Storage::SqlDatabaseResponseWrapper)
        end
        def create(
          # Database name. Lowercase letters, numbers, and hyphens only; must start and end
          # with a letter or number.
          name:,
          request_options: {}
        )
        end

        # Retrieves a SQL database by its ID, including its provisioning status.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Storage::SqlDatabaseResponseWrapper)
        end
        def retrieve(
          # SQL database ID
          id,
          request_options: {}
        )
        end

        # Lists the SQL databases for the authenticated user's organization. Results use
        # page-based pagination (`page[number]`/`page[size]`) and can be filtered and
        # sorted.
        sig do
          params(
            filter_name: String,
            filter_status:
              Telnyx::Storage::SqldbListParams::FilterStatus::OrSymbol,
            page_number: Integer,
            page_size: Integer,
            sort: Telnyx::Storage::SqldbListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Storage::SqlDatabase
            ]
          )
        end
        def list(
          # Filter by exact name match.
          filter_name: nil,
          # Filter by provisioning status.
          filter_status: nil,
          # The page number to load.
          page_number: nil,
          # The size of the page. Values above 250 are treated as 250.
          page_size: nil,
          # Sort field; prefix with `-` for descending order.
          sort: nil,
          request_options: {}
        )
        end

        # Deletes a SQL database and all of the data it holds. Deletion is asynchronous
        # and returns `202` with an empty body — the record is not removed synchronously.
        # Poll `GET /storage/sqldbs/{id}`, which returns `404` once the database has been
        # purged; there is no durable `deleted` state. A database still bound by a
        # function is refused with `409` unless `force=true`.
        sig do
          params(
            id: String,
            force: T::Boolean,
            request_options: Telnyx::RequestOptions::OrHash
          ).void
        end
        def delete(
          # SQL database ID
          id,
          # Delete the database even when functions still bind it. Their bindings stop
          # resolving.
          force: nil,
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
