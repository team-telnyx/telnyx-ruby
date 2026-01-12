# frozen_string_literal: true

module Telnyx
  module Models
    class S3ConfigurationData < Telnyx::Internal::Type::BaseModel
      # @!attribute backend
      #   Storage backend type
      #
      #   @return [Symbol, Telnyx::Models::S3ConfigurationData::Backend]
      required :backend, enum: -> { Telnyx::S3ConfigurationData::Backend }

      # @!attribute aws_access_key_id
      #   AWS credentials access key id.
      #
      #   @return [String, nil]
      optional :aws_access_key_id, String

      # @!attribute aws_secret_access_key
      #   AWS secret access key.
      #
      #   @return [String, nil]
      optional :aws_secret_access_key, String

      # @!attribute bucket
      #   Name of the bucket to be used to store recording files.
      #
      #   @return [String, nil]
      optional :bucket, String

      # @!attribute region
      #   Region where the bucket is located.
      #
      #   @return [String, nil]
      optional :region, String

      # @!method initialize(backend:, aws_access_key_id: nil, aws_secret_access_key: nil, bucket: nil, region: nil)
      #   @param backend [Symbol, Telnyx::Models::S3ConfigurationData::Backend] Storage backend type
      #
      #   @param aws_access_key_id [String] AWS credentials access key id.
      #
      #   @param aws_secret_access_key [String] AWS secret access key.
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
