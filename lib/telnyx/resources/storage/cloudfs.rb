# frozen_string_literal: true

module Telnyx
  module Resources
    class Storage
      # Manage CloudFS filesystems — JuiceFS-compatible filesystems backed by Telnyx
      # Cloud Storage
      class Cloudfs
        # Manage CloudFS filesystems — JuiceFS-compatible filesystems backed by Telnyx
        # Cloud Storage
        # @return [Telnyx::Resources::Storage::Cloudfs::Actions]
        attr_reader :actions

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Storage::CloudfCreateParams} for more details.
        #
        # Creates a CloudFS filesystem. Provisioning is synchronous — typically a few
        # seconds, up to a few minutes — and the filesystem is returned with status
        # `ready`, together with its S3 bucket and metadata connection details. This
        # response is the only time the filesystem's `meta_token` — and the
        # credential-bearing `meta_url` — are returned; store them securely. If the token
        # is lost, issue a new one with the rotate-meta-token action. Names are unique
        # within your organization: creating with an existing name returns a `422`.
        # Requests are idempotent: retrying with the same `Idempotency-Key` within 24
        # hours replays the original response instead of creating another filesystem.
        #
        # @overload create(name:, region:, idempotency_key:, request_options: {})
        #
        # @param name [String] Body param: Filesystem name, unique within your organization. Names are trimmed
        #
        # @param region [Symbol, Telnyx::Models::Storage::CloudfCreateParams::Region] Body param: Region where the filesystem's storage and metadata are provisioned.
        #
        # @param idempotency_key [String] Header param: Unique key that makes the request idempotent (1-255 characters: le
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::CloudfsFilesystemResponseWrapper]
        #
        # @see Telnyx::Models::Storage::CloudfCreateParams
        def create(params)
          parsed, options = Telnyx::Storage::CloudfCreateParams.dump_request(params)
          header_params = {idempotency_key: "idempotency-key"}
          @client.request(
            method: :post,
            path: "storage/cloudfs",
            headers: parsed.slice(*header_params.keys).transform_keys(header_params),
            body: parsed.except(*header_params.keys),
            model: Telnyx::Storage::CloudfsFilesystemResponseWrapper,
            options: options
          )
        end

        # Retrieves a CloudFS filesystem by its ID. The returned `meta_url` omits the
        # credential — the metadata token is only ever returned by create and
        # rotate-meta-token. A filesystem whose last lifecycle action failed includes a
        # customer-safe `error` message.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] CloudFS filesystem ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::CloudfsFilesystemDetailResponseWrapper]
        #
        # @see Telnyx::Models::Storage::CloudfRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["storage/cloudfs/%1$s", id],
            model: Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Storage::CloudfUpdateParams} for more details.
        #
        # Updates a CloudFS filesystem. Only `name` can be changed; other fields are
        # immutable and unknown fields are rejected with a `400`. Renaming to a name that
        # already exists in your organization returns a `422`.
        #
        # @overload update(id, name: nil, request_options: {})
        #
        # @param id [String] CloudFS filesystem ID
        #
        # @param name [String] New filesystem name, unique within your organization. Names are trimmed and lowe
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::CloudfsFilesystemDetailResponseWrapper]
        #
        # @see Telnyx::Models::Storage::CloudfUpdateParams
        def update(id, params = {})
          parsed, options = Telnyx::Storage::CloudfUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["storage/cloudfs/%1$s", id],
            body: parsed,
            model: Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Storage::CloudfListParams} for more details.
        #
        # Lists the CloudFS filesystems for the authenticated user's organization. Results
        # use cursor-based pagination: fetch the next page by passing `meta.cursors.after`
        # as `page[after]`, or follow the `meta.next` URL.
        #
        # @overload list(filter_name: nil, filter_region: nil, filter_status: nil, page_after: nil, page_before: nil, page_limit: nil, sort: nil, request_options: {})
        #
        # @param filter_name [String] Return only the filesystem whose name matches exactly.
        #
        # @param filter_region [String] Return only filesystems in this region.
        #
        # @param filter_status [Symbol, Telnyx::Models::Storage::CloudfListParams::FilterStatus] Return only filesystems with this status. Unrecognized values are ignored.
        #
        # @param page_after [String] Opaque cursor from a previous response's `meta.cursors.after`; returns the page
        #
        # @param page_before [String] Opaque cursor from a previous response's `meta.cursors.before`; returns the page
        #
        # @param page_limit [Integer] The number of filesystems to return per page. Values above 250 are treated as 25
        #
        # @param sort [Symbol, Telnyx::Models::Storage::CloudfListParams::Sort] Sort order for the results: a field name for ascending, or the field name prefix
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::CloudfListResponse]
        #
        # @see Telnyx::Models::Storage::CloudfListParams
        def list(params = {})
          parsed, options = Telnyx::Storage::CloudfListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "storage/cloudfs",
            query: query.transform_keys(
              filter_name: "filter[name]",
              filter_region: "filter[region]",
              filter_status: "filter[status]",
              page_after: "page[after]",
              page_before: "page[before]",
              page_limit: "page[limit]"
            ),
            model: Telnyx::Models::Storage::CloudfListResponse,
            options: options
          )
        end

        # Permanently deletes a CloudFS filesystem, removing its S3 bucket and its
        # metadata database. Deletion is synchronous: the response returns the
        # filesystem's final state with status `deleted`. There is no restore. A
        # filesystem that is still `provisioning` returns a `409`. If the filesystem still
        # contains data, the request may be rejected with a `409` — drain the bucket and
        # retry.
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [String] CloudFS filesystem ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Storage::CloudfsFilesystemDetailResponseWrapper]
        #
        # @see Telnyx::Models::Storage::CloudfDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["storage/cloudfs/%1$s", id],
            model: Telnyx::Storage::CloudfsFilesystemDetailResponseWrapper,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
          @actions = Telnyx::Resources::Storage::Cloudfs::Actions.new(client: client)
        end
      end
    end
  end
end
