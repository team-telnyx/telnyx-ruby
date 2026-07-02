# typed: strong

module Telnyx
  module Resources
    class Storage
      # Manage KV storage namespaces
      class Kvs
        # Read and write keys within a KV namespace
        sig { returns(Telnyx::Resources::Storage::Kvs::Keys) }
        attr_reader :keys

        # Creates a new KV namespace. Provisioning is asynchronous: the namespace is
        # returned with status `pending` and becomes usable once it reaches
        # `provision_ok`.
        sig do
          params(
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::KvCreateResponse)
        end
        def create(
          # Namespace name. May contain lowercase letters, numbers, and hyphens only.
          name:,
          request_options: {}
        )
        end

        # Retrieves a KV namespace by its ID, including its provisioning status.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::KvRetrieveResponse)
        end
        def retrieve(
          # KV namespace ID
          id,
          request_options: {}
        )
        end

        # Lists the KV namespaces for the authenticated user's organization. Results use
        # page-based pagination (`page[number]`/`page[size]`).
        sig do
          params(
            page_number: Integer,
            page_size: Integer,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::DefaultFlatPagination[
              Telnyx::Models::Storage::KvListResponse
            ]
          )
        end
        def list(
          # The page number to load.
          page_number: nil,
          # The size of the page. Values above 250 are treated as 250.
          page_size: nil,
          request_options: {}
        )
        end

        # Deletes a KV namespace and all of the keys it contains. Deletion is
        # asynchronous: the namespace is returned with status `deleting`. Deleting a
        # namespace whose deletion is already in progress returns a `409`.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Storage::KvDeleteResponse)
        end
        def delete(
          # KV namespace ID
          id,
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
