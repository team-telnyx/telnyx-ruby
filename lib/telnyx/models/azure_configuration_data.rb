# frozen_string_literal: true

module Telnyx
  module Models
    class AzureConfigurationData < Telnyx::Internal::Type::BaseModel
      # @!attribute account_key
      #   Azure Blob Storage account key.
      #
      #   @return [String, nil]
      optional :account_key, String

      # @!attribute account_name
      #   Azure Blob Storage account name.
      #
      #   @return [String, nil]
      optional :account_name, String

      # @!attribute bucket
      #   Name of the bucket to be used to store recording files.
      #
      #   @return [String, nil]
      optional :bucket, String

      # @!method initialize(account_key: nil, account_name: nil, bucket: nil)
      #   @param account_key [String] Azure Blob Storage account key.
      #
      #   @param account_name [String] Azure Blob Storage account name.
      #
      #   @param bucket [String] Name of the bucket to be used to store recording files.
    end
  end
end
