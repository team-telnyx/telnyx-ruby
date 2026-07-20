# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      # @see Telnyx::Resources::Storage::Cloudfs#list
      class CloudfListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Storage::CloudfListResponse::Data>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Storage::CloudfListResponse::Data] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::Storage::CloudfListResponse::Meta, nil]
        optional :meta, -> { Telnyx::Models::Storage::CloudfListResponse::Meta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::Storage::CloudfListResponse::Data>]
        #   @param meta [Telnyx::Models::Storage::CloudfListResponse::Meta]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute name
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute record_type
          #
          #   @return [String, nil]
          optional :record_type, String

          # @!attribute region
          #
          #   @return [String, nil]
          optional :region, String

          # @!attribute s3_bucket
          #   Name of the bucket that stores this filesystem's data. Created during
          #   provisioning.
          #
          #   @return [String, nil]
          optional :s3_bucket, String

          # @!attribute s3_endpoint
          #   URL of the Telnyx Cloud Storage endpoint backing this filesystem.
          #
          #   @return [String, nil]
          optional :s3_endpoint, String

          # @!attribute status
          #   Lifecycle status of the filesystem. `ready` means it is fully provisioned and
          #   usable. `needs_format` means the storage bucket and metadata database were
          #   provisioned but the filesystem has not yet been formatted — run `juicefs format`
          #   with the filesystem's `meta_url` before mounting. `failed` means the last
          #   lifecycle action failed — see the filesystem's `error` message. `deleted`
          #   appears only in the delete response: deleted filesystems are excluded from list
          #   results and return a `404` on retrieval.
          #
          #   @return [Symbol, Telnyx::Models::Storage::CloudfsFilesystemStatus, nil]
          optional :status, enum: -> { Telnyx::Storage::CloudfsFilesystemStatus }

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!method initialize(id: nil, created_at: nil, name: nil, record_type: nil, region: nil, s3_bucket: nil, s3_endpoint: nil, status: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Storage::CloudfListResponse::Data} for more details.
          #
          #   A CloudFS filesystem as returned in list results. Connection details
          #   (`meta_url`, `meta_token`) are omitted — retrieve the filesystem by ID for its
          #   redacted `meta_url`.
          #
          #   @param id [String]
          #
          #   @param created_at [Time]
          #
          #   @param name [String]
          #
          #   @param record_type [String]
          #
          #   @param region [String]
          #
          #   @param s3_bucket [String] Name of the bucket that stores this filesystem's data. Created during provisioni
          #
          #   @param s3_endpoint [String] URL of the Telnyx Cloud Storage endpoint backing this filesystem.
          #
          #   @param status [Symbol, Telnyx::Models::Storage::CloudfsFilesystemStatus] Lifecycle status of the filesystem. `ready` means it is fully provisioned and us
          #
          #   @param updated_at [Time]
        end

        # @see Telnyx::Models::Storage::CloudfListResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute cursors
          #   Opaque cursors for the adjacent pages. Empty when there are no adjacent pages.
          #
          #   @return [Telnyx::Models::Storage::CloudfListResponse::Meta::Cursors, nil]
          optional :cursors, -> { Telnyx::Models::Storage::CloudfListResponse::Meta::Cursors }

          # @!attribute next_
          #   Relative URL (path and query) of the next page. Omitted when there are no
          #   further results.
          #
          #   @return [String, nil]
          optional :next_, String, api_name: :next

          # @!attribute previous
          #   Relative URL (path and query) of the previous page. Omitted on the first page.
          #
          #   @return [String, nil]
          optional :previous, String

          # @!method initialize(cursors: nil, next_: nil, previous: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Storage::CloudfListResponse::Meta} for more details.
          #
          #   @param cursors [Telnyx::Models::Storage::CloudfListResponse::Meta::Cursors] Opaque cursors for the adjacent pages. Empty when there are no adjacent pages.
          #
          #   @param next_ [String] Relative URL (path and query) of the next page. Omitted when there are no furthe
          #
          #   @param previous [String] Relative URL (path and query) of the previous page. Omitted on the first page.

          # @see Telnyx::Models::Storage::CloudfListResponse::Meta#cursors
          class Cursors < Telnyx::Internal::Type::BaseModel
            # @!attribute after
            #   Cursor for the next page; pass it as `page[after]`. Omitted on the last page.
            #
            #   @return [String, nil]
            optional :after, String

            # @!attribute before
            #   Cursor for the previous page; pass it as `page[before]`. Omitted on the first
            #   page.
            #
            #   @return [String, nil]
            optional :before, String

            # @!method initialize(after: nil, before: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Storage::CloudfListResponse::Meta::Cursors} for more details.
            #
            #   Opaque cursors for the adjacent pages. Empty when there are no adjacent pages.
            #
            #   @param after [String] Cursor for the next page; pass it as `page[after]`. Omitted on the last page.
            #
            #   @param before [String] Cursor for the previous page; pass it as `page[before]`. Omitted on the first pa
          end
        end
      end
    end
  end
end
