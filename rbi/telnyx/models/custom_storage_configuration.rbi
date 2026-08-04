# typed: strong

module Telnyx
  module Models
    class CustomStorageConfiguration < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CustomStorageConfiguration, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol) }
      attr_accessor :backend

      sig do
        returns(Telnyx::CustomStorageConfiguration::Configuration::Variants)
      end
      attr_accessor :configuration

      sig do
        params(
          backend: Telnyx::CustomStorageConfiguration::Backend::OrSymbol,
          configuration:
            T.any(
              Telnyx::GcsConfigurationData::OrHash,
              Telnyx::S3ConfigurationData::OrHash,
              Telnyx::CustomStorageConfiguration::Configuration::S3Generic::OrHash,
              Telnyx::AzureConfigurationData::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(backend:, configuration:)
      end

      sig do
        override.returns(
          {
            backend: Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol,
            configuration:
              Telnyx::CustomStorageConfiguration::Configuration::Variants
          }
        )
      end
      def to_hash
      end

      module Backend
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CustomStorageConfiguration::Backend)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GCS =
          T.let(:gcs, Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol)
        S3 =
          T.let(:s3, Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol)
        S3_GENERIC =
          T.let(
            :"s3-generic",
            Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol
          )
        AZURE =
          T.let(
            :azure,
            Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Configuration
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::GcsConfigurationData,
              Telnyx::S3ConfigurationData,
              Telnyx::CustomStorageConfiguration::Configuration::S3Generic,
              Telnyx::AzureConfigurationData
            )
          end

        class S3Generic < Telnyx::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Telnyx::CustomStorageConfiguration::Configuration::S3Generic,
                Telnyx::Internal::AnyHash
              )
            end

          # AWS credentials access key id.
          sig { returns(String) }
          attr_accessor :aws_access_key_id

          # AWS secret access key.
          sig { returns(String) }
          attr_accessor :aws_secret_access_key

          # Storage backend type
          sig { returns(Symbol) }
          attr_accessor :backend

          # Name of the bucket to be used to store recording files.
          sig { returns(String) }
          attr_accessor :bucket

          # URL of an S3-compatible storage endpoint, used to direct uploads and presigned
          # download URLs to a non-AWS store (for example MinIO, Cloudflare R2, Wasabi,
          # Backblaze B2, or Supabase). A bare host (https://s3.example.com) or a
          # path-prefixed URL (https://xyz.supabase.co/storage/v1/s3) is accepted, and must
          # use the http or https scheme.
          sig { returns(String) }
          attr_accessor :endpoint

          # Region where the bucket is located.
          sig { returns(String) }
          attr_accessor :region

          sig do
            params(
              aws_access_key_id: String,
              aws_secret_access_key: String,
              bucket: String,
              endpoint: String,
              region: String,
              backend: Symbol
            ).returns(T.attached_class)
          end
          def self.new(
            # AWS credentials access key id.
            aws_access_key_id:,
            # AWS secret access key.
            aws_secret_access_key:,
            # Name of the bucket to be used to store recording files.
            bucket:,
            # URL of an S3-compatible storage endpoint, used to direct uploads and presigned
            # download URLs to a non-AWS store (for example MinIO, Cloudflare R2, Wasabi,
            # Backblaze B2, or Supabase). A bare host (https://s3.example.com) or a
            # path-prefixed URL (https://xyz.supabase.co/storage/v1/s3) is accepted, and must
            # use the http or https scheme.
            endpoint:,
            # Region where the bucket is located.
            region:,
            # Storage backend type
            backend: :"s3-generic"
          )
          end

          sig do
            override.returns(
              {
                aws_access_key_id: String,
                aws_secret_access_key: String,
                backend: Symbol,
                bucket: String,
                endpoint: String,
                region: String
              }
            )
          end
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[
              Telnyx::CustomStorageConfiguration::Configuration::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
