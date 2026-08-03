# frozen_string_literal: true

module Telnyx
  module Models
    class S3ConfigurationData < Telnyx::Internal::Type::BaseModel
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
      #   @return [Symbol, Telnyx::Models::S3ConfigurationData::Backend]
      required :backend, enum: -> { Telnyx::S3ConfigurationData::Backend }

      # @!attribute bucket
      #   Name of the bucket to be used to store recording files.
      #
      #   @return [String]
      required :bucket, String

      # @!attribute region
      #   Region where the bucket is located.
      #
      #   @return [String]
      required :region, String

      # @!method initialize(aws_access_key_id:, aws_secret_access_key:, backend:, bucket:, region:)
      #   @param aws_access_key_id [String] AWS credentials access key id.
      #
      #   @param aws_secret_access_key [String] AWS secret access key.
      #
      #   @param backend [Symbol, Telnyx::Models::S3ConfigurationData::Backend] Storage backend type
      #
      #   @param bucket [String] Name of the bucket to be used to store recording files.
      #
      #   @param region [String] Region where the bucket is located.

      # Storage backend type
      #
      # @see Telnyx::Models::S3ConfigurationData#backend
      module Backend
        extend Telnyx::Internal::Type::Enum

        S3 = :s3

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
