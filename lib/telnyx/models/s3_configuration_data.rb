# frozen_string_literal: true

module Telnyx
  module Models
    class S3ConfigurationData < Telnyx::Internal::Type::BaseModel
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

      # @!method initialize(aws_access_key_id: nil, aws_secret_access_key: nil, bucket: nil, region: nil)
      #   @param aws_access_key_id [String] AWS credentials access key id.
      #
      #   @param aws_secret_access_key [String] AWS secret access key.
      #
      #   @param bucket [String] Name of the bucket to be used to store recording files.
      #
      #   @param region [String] Region where the bucket is located.
    end
  end
end
