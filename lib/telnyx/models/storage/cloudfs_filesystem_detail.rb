# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      class CloudfsFilesystemDetail < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute error
        #   Explanation of the most recent failed lifecycle action. Present only when the
        #   filesystem is in a `failed` state.
        #
        #   @return [String, nil]
        optional :error, String

        # @!attribute meta_url
        #   PostgreSQL connection URL for the filesystem's metadata database, without the
        #   credential. Combine it with your stored metadata token, or issue a new token
        #   with rotate-meta-token.
        #
        #   @return [String, nil]
        optional :meta_url, String

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

        # @!method initialize(id: nil, created_at: nil, error: nil, meta_url: nil, name: nil, record_type: nil, region: nil, s3_bucket: nil, s3_endpoint: nil, status: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::CloudfsFilesystemDetail} for more details.
        #
        #   A CloudFS filesystem as returned by get, update, and delete. `meta_url` omits
        #   the credential and there is no `meta_token` field — the token is only returned
        #   by create and rotate-meta-token.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param error [String] Explanation of the most recent failed lifecycle action. Present only when the fi
        #
        #   @param meta_url [String] PostgreSQL connection URL for the filesystem's metadata database, without the cr
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
    end
  end
end
