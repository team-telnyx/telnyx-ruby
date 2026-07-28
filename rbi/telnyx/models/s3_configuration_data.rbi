# typed: strong

module Telnyx
  module Models
    class S3ConfigurationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::S3ConfigurationData, Telnyx::Internal::AnyHash)
        end

      # AWS credentials access key id.
      sig { returns(String) }
      attr_accessor :aws_access_key_id

      # AWS secret access key.
      sig { returns(String) }
      attr_accessor :aws_secret_access_key

      # Storage backend type
      sig { returns(Telnyx::S3ConfigurationData::Backend::OrSymbol) }
      attr_accessor :backend

      # Name of the bucket to be used to store recording files.
      sig { returns(String) }
      attr_accessor :bucket

      # Region where the bucket is located.
      sig { returns(String) }
      attr_accessor :region

      sig do
        params(
          aws_access_key_id: String,
          aws_secret_access_key: String,
          backend: Telnyx::S3ConfigurationData::Backend::OrSymbol,
          bucket: String,
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
        # Region where the bucket is located.
        region:
      )
      end

      sig do
        override.returns(
          {
            aws_access_key_id: String,
            aws_secret_access_key: String,
            backend: Telnyx::S3ConfigurationData::Backend::OrSymbol,
            bucket: String,
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
          T.type_alias { T.all(Symbol, Telnyx::S3ConfigurationData::Backend) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        S3 = T.let(:s3, Telnyx::S3ConfigurationData::Backend::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::S3ConfigurationData::Backend::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
