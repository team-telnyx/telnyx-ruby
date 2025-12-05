# typed: strong

module Telnyx
  module Models
    class S3ConfigurationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::S3ConfigurationData, Telnyx::Internal::AnyHash)
        end

      # Storage backend type
      sig { returns(Telnyx::S3ConfigurationData::Backend::OrSymbol) }
      attr_accessor :backend

      # AWS credentials access key id.
      sig { returns(T.nilable(String)) }
      attr_reader :aws_access_key_id

      sig { params(aws_access_key_id: String).void }
      attr_writer :aws_access_key_id

      # AWS secret access key.
      sig { returns(T.nilable(String)) }
      attr_reader :aws_secret_access_key

      sig { params(aws_secret_access_key: String).void }
      attr_writer :aws_secret_access_key

      # Name of the bucket to be used to store recording files.
      sig { returns(T.nilable(String)) }
      attr_reader :bucket

      sig { params(bucket: String).void }
      attr_writer :bucket

      # Region where the bucket is located.
      sig { returns(T.nilable(String)) }
      attr_reader :region

      sig { params(region: String).void }
      attr_writer :region

      sig do
        params(
          backend: Telnyx::S3ConfigurationData::Backend::OrSymbol,
          aws_access_key_id: String,
          aws_secret_access_key: String,
          bucket: String,
          region: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Storage backend type
        backend:,
        # AWS credentials access key id.
        aws_access_key_id: nil,
        # AWS secret access key.
        aws_secret_access_key: nil,
        # Name of the bucket to be used to store recording files.
        bucket: nil,
        # Region where the bucket is located.
        region: nil
      )
      end

      sig do
        override.returns(
          {
            backend: Telnyx::S3ConfigurationData::Backend::OrSymbol,
            aws_access_key_id: String,
            aws_secret_access_key: String,
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
