# frozen_string_literal: true

module Telnyx
  module Models
    module Storage
      class CloudfsFilesystem < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute meta_token
        #   Metadata access token, in cleartext. Returned only by create and
        #   rotate-meta-token and not retrievable afterwards — store it securely.
        #
        #   @return [String, nil]
        optional :meta_token, String

        # @!attribute meta_url
        #   PostgreSQL connection URL for the filesystem's metadata database. In create and
        #   rotate-meta-token responses it embeds the metadata token as the password:
        #   `postgres://<database>:<meta_token>@us-east-1.telnyxcloudfs.com:5432/<database>?sslmode=require`
        #   (the example below is shown without the credential; the actual response includes
        #   it). Pass it to `juicefs mount`: the storage configuration is baked in at
        #   provisioning, so the metadata URL is all a client needs to mount the filesystem.
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

        # @!method initialize(id: nil, created_at: nil, meta_token: nil, meta_url: nil, name: nil, record_type: nil, region: nil, s3_bucket: nil, s3_endpoint: nil, status: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Storage::CloudfsFilesystem} for more details.
        #
        #   A CloudFS filesystem, including its metadata credential. This shape is returned
        #   only by create and rotate-meta-token.
        #
        #   @param id [String]
        #
        #   @param created_at [Time]
        #
        #   @param meta_token [String] Metadata access token, in cleartext. Returned only by create and rotate-meta-tok
        #
        #   @param meta_url [String] PostgreSQL connection URL for the filesystem's metadata database. In create and
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
