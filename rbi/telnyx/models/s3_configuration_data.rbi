# typed: strong

module Telnyx
  module Models
    class S3ConfigurationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::S3ConfigurationData, Telnyx::Internal::AnyHash)
        end

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
          aws_access_key_id: String,
          aws_secret_access_key: String,
          bucket: String,
          region: String
        ).returns(T.attached_class)
      end
      def self.new(
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
            aws_access_key_id: String,
            aws_secret_access_key: String,
            bucket: String,
            region: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
