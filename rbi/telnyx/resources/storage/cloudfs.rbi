# typed: strong

module Telnyx
  module Resources
    class Storage
      # Manage CloudFS filesystems — JuiceFS-compatible filesystems backed by Telnyx
      # Cloud Storage
      class Cloudfs
        # Manage CloudFS filesystems — JuiceFS-compatible filesystems backed by Telnyx
        # Cloud Storage
        sig { returns(Telnyx::Resources::Storage::Cloudfs::Actions) }
        attr_reader :actions

        # Creates a CloudFS filesystem. Provisioning is synchronous — typically a few
        # seconds, up to a few minutes — and the filesystem is returned with status
        # `ready`, together with its S3 bucket and metadata connection details. This
        # response is the only time the filesystem's `meta_token` — and the
        # credential-bearing `meta_url` — are returned; store them securely. If the token
        # is lost, issue a new one with the rotate-meta-token action. Names are unique
        # within your organization: creating with an existing name returns a `422`.
        # Requests are idempotent: retrying with the same `Idempotency-Key` within 24
        # hours replays the original response instead of creating another filesystem.
        sig do
          params(
            name: String,
            region: Telnyx::Storage::CloudfCreateParams::Region::OrSymbol,
            idempotency_key: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Storage::CloudfsFilesystemResponseWrapper)
        end
        def create(
          # Body param: Filesystem name, unique within your organization. Names are trimmed
          # and lowercased; after normalization they may contain lowercase letters, numbers,
          # `.`, `_`, and `-` only.
          name:,
          # Body param: Region where the filesystem's storage and metadata are provisioned.
          region:,
          # Header param: Unique key that makes the request idempotent (1-255 characters:
          # letters, numbers, `_`, and `-`). Retrying with the same key within 24 hours
          # replays the original response (marked with an `Idempotent-Replayed: true`
          # header) instead of repeating the action. Reusing a key with a different request
          # returns a `422`; sending a key while the original request is still being
          # processed returns a `409`.
          idempotency_key:,
          request_options: {}
        )
        end

        # Retrieves a CloudFS filesystem by its ID. The returned `meta_url` omits the
        # credential — the metadata token is only ever returned by create and
        # rotate-meta-token. A filesystem whose last lifecycle action failed includes a
        # customer-safe `error` message.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper)
        end
        def retrieve(
          # CloudFS filesystem ID
          id,
          request_options: {}
        )
        end

        # Updates a CloudFS filesystem. Only `name` can be changed; other fields are
        # immutable and unknown fields are rejected with a `400`. Renaming to a name that
        # already exists in your organization returns a `422`.
        sig do
          params(
            id: String,
            name: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper)
        end
        def update(
          # CloudFS filesystem ID
          id,
          # New filesystem name, unique within your organization. Names are trimmed and
          # lowercased; after normalization they may contain lowercase letters, numbers,
          # `.`, `_`, and `-` only.
          name: nil,
          request_options: {}
        )
        end

        # Lists the CloudFS filesystems for the authenticated user's organization. Results
        # use cursor-based pagination: fetch the next page by passing `meta.cursors.after`
        # as `page[after]`, or follow the `meta.next` URL.
        sig do
          params(
            filter_name: String,
            filter_region: String,
            filter_status:
              Telnyx::Storage::CloudfListParams::FilterStatus::OrSymbol,
            page_after: String,
            page_before: String,
            page_limit: Integer,
            sort: Telnyx::Storage::CloudfListParams::Sort::OrSymbol,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(
            Telnyx::Internal::CloudfsCursorPagination[
              Telnyx::Models::Storage::CloudfListResponse
            ]
          )
        end
        def list(
          # Return only the filesystem whose name matches exactly.
          filter_name: nil,
          # Return only filesystems in this region.
          filter_region: nil,
          # Return only filesystems with this status. Unrecognized values are ignored.
          filter_status: nil,
          # Opaque cursor from a previous response's `meta.cursors.after`; returns the page
          # after it. Mutually exclusive with `page[before]`.
          page_after: nil,
          # Opaque cursor from a previous response's `meta.cursors.before`; returns the page
          # before it. Mutually exclusive with `page[after]`.
          page_before: nil,
          # The number of filesystems to return per page. Values above 250 are treated
          # as 250.
          page_limit: nil,
          # Sort order for the results: a field name for ascending, or the field name
          # prefixed with `-` for descending.
          sort: nil,
          request_options: {}
        )
        end

        # Permanently deletes a CloudFS filesystem, removing its S3 bucket and its
        # metadata database. Deletion is synchronous: the response returns the
        # filesystem's final state with status `deleted`. There is no restore. A
        # filesystem that is still `provisioning` returns a `409`. If the filesystem still
        # contains data, the request may be rejected with a `409` — drain the bucket and
        # retry.
        sig do
          params(
            id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper)
        end
        def delete(
          # CloudFS filesystem ID
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
