# typed: strong

module Telnyx
  module Models
    class S3GenericConfigurationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::S3GenericConfigurationData, Telnyx::Internal::AnyHash)
        end

      # AWS credentials access key id.
      sig { returns(String) }
      attr_accessor :aws_access_key_id

      # AWS secret access key.
      sig { returns(String) }
      attr_accessor :aws_secret_access_key

      # Storage backend type
      sig { returns(Telnyx::S3GenericConfigurationData::Backend::OrSymbol) }
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
          backend: Telnyx::S3GenericConfigurationData::Backend::OrSymbol,
          bucket: String,
          endpoint: String,
          region: String
        ).returns(T.attached_class)
      end
      def self.new(
        # AWS credentials access key id.
        aws_access_key_id:,
        # AWS secret access key.
        aws_secret_access_key:,
        # Storage backend type
        backend:,
        # Name of the bucket to be used to store recording files.
        bucket:,
        # URL of an S3-compatible storage endpoint, used to direct uploads and presigned
        # download URLs to a non-AWS store (for example MinIO, Cloudflare R2, Wasabi,
        # Backblaze B2, or Supabase). A bare host (https://s3.example.com) or a
        # path-prefixed URL (https://xyz.supabase.co/storage/v1/s3) is accepted, and must
        # use the http or https scheme.
        endpoint:,
        # Region where the bucket is located.
        region:
      )
      end

      sig do
        override.returns(
          {
            aws_access_key_id: String,
            aws_secret_access_key: String,
            backend: Telnyx::S3GenericConfigurationData::Backend::OrSymbol,
            bucket: String,
            endpoint: String,
            region: String
          }
        )
      end
      def to_hash
      end

      # Storage backend type
      module Backend
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::S3GenericConfigurationData::Backend)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        S3_GENERIC =
          T.let(
            :"s3-generic",
            Telnyx::S3GenericConfigurationData::Backend::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::S3GenericConfigurationData::Backend::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
