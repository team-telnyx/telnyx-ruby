# frozen_string_literal: true

module Telnyx
  module Models
    class S3GenericConfigurationData < Telnyx::Internal::Type::BaseModel
      # @!attribute aws_access_key_id
      #   AWS credentials access key id.
      #
      #   @return [String]
      required :aws_access_key_id, String

      # @!attribute aws_secret_access_key
      #   AWS secret access key.
      #
      #   @return [String]
      required :aws_secret_access_key, String

      # @!attribute backend
      #   Storage backend type
      #
      #   @return [Symbol, Telnyx::Models::S3GenericConfigurationData::Backend]
      required :backend, enum: -> { Telnyx::S3GenericConfigurationData::Backend }

      # @!attribute bucket
      #   Name of the bucket to be used to store recording files.
      #
      #   @return [String]
      required :bucket, String

      # @!attribute endpoint
      #   URL of an S3-compatible storage endpoint, used to direct uploads and presigned
      #   download URLs to a non-AWS store (for example MinIO, Cloudflare R2, Wasabi,
      #   Backblaze B2, or Supabase). A bare host (https://s3.example.com) or a
      #   path-prefixed URL (https://xyz.supabase.co/storage/v1/s3) is accepted, and must
      #   use the http or https scheme.
      #
      #   @return [String]
      required :endpoint, String

      # @!attribute region
      #   Region where the bucket is located.
      #
      #   @return [String]
      required :region, String

      # @!method initialize(aws_access_key_id:, aws_secret_access_key:, backend:, bucket:, endpoint:, region:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::S3GenericConfigurationData} for more details.
      #
      #   @param aws_access_key_id [String] AWS credentials access key id.
      #
      #   @param aws_secret_access_key [String] AWS secret access key.
      #
      #   @param backend [Symbol, Telnyx::Models::S3GenericConfigurationData::Backend] Storage backend type
      #
      #   @param bucket [String] Name of the bucket to be used to store recording files.
      #
      #   @param endpoint [String] URL of an S3-compatible storage endpoint, used to direct uploads and presigned d
      #
      #   @param region [String] Region where the bucket is located.

      # Storage backend type
      #
      # @see Telnyx::Models::S3GenericConfigurationData#backend
      module Backend
        extend Telnyx::Internal::Type::Enum

        S3_GENERIC = :"s3-generic"

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
