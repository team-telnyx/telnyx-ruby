# frozen_string_literal: true

module Telnyx
  module Models
    class CustomStorageConfiguration < Telnyx::Internal::Type::BaseModel
      # @!attribute backend
      #
      #   @return [Symbol, Telnyx::Models::CustomStorageConfiguration::Backend]
      required :backend, enum: -> { Telnyx::CustomStorageConfiguration::Backend }

      # @!attribute configuration
      #
      #   @return [Telnyx::Models::GcsConfigurationData, Telnyx::Models::S3ConfigurationData, Telnyx::Models::CustomStorageConfiguration::Configuration::S3Generic, Telnyx::Models::AzureConfigurationData]
      required :configuration, union: -> { Telnyx::CustomStorageConfiguration::Configuration }

      # @!method initialize(backend:, configuration:)
      #   @param backend [Symbol, Telnyx::Models::CustomStorageConfiguration::Backend]
      #   @param configuration [Telnyx::Models::GcsConfigurationData, Telnyx::Models::S3ConfigurationData, Telnyx::Models::CustomStorageConfiguration::Configuration::S3Generic, Telnyx::Models::AzureConfigurationData]

      # @see Telnyx::Models::CustomStorageConfiguration#backend
      module Backend
        extend Telnyx::Internal::Type::Enum

        GCS = :gcs
        S3 = :s3
        S3_GENERIC = :"s3-generic"
        AZURE = :azure

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CustomStorageConfiguration#configuration
      module Configuration
        extend Telnyx::Internal::Type::Union

        discriminator :backend

        variant :gcs, -> { Telnyx::GcsConfigurationData }

        variant :s3, -> { Telnyx::S3ConfigurationData }

        variant :"s3-generic", -> { Telnyx::CustomStorageConfiguration::Configuration::S3Generic }

        variant :azure, -> { Telnyx::AzureConfigurationData }

        class S3Generic < Telnyx::Internal::Type::BaseModel
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
          #   @return [Symbol, :"s3-generic"]
          required :backend, const: :"s3-generic"

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

          # @!method initialize(aws_access_key_id:, aws_secret_access_key:, bucket:, endpoint:, region:, backend: :"s3-generic")
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::CustomStorageConfiguration::Configuration::S3Generic} for more
          #   details.
          #
          #   @param aws_access_key_id [String] AWS credentials access key id.
          #
          #   @param aws_secret_access_key [String] AWS secret access key.
          #
          #   @param bucket [String] Name of the bucket to be used to store recording files.
          #
          #   @param endpoint [String] URL of an S3-compatible storage endpoint, used to direct uploads and presigned d
          #
          #   @param region [String] Region where the bucket is located.
          #
          #   @param backend [Symbol, :"s3-generic"] Storage backend type
        end

        # @!method self.variants
        #   @return [Array(Telnyx::Models::GcsConfigurationData, Telnyx::Models::S3ConfigurationData, Telnyx::Models::CustomStorageConfiguration::Configuration::S3Generic, Telnyx::Models::AzureConfigurationData)]
      end
    end
  end
end
