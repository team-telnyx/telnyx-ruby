# frozen_string_literal: true

module Telnyx
  module Models
    class AzureConfigurationData < Telnyx::Internal::Type::BaseModel
      # @!attribute backend
      #   Storage backend type
      #
      #   @return [Symbol, Telnyx::Models::AzureConfigurationData::Backend]
      required :backend, enum: -> { Telnyx::AzureConfigurationData::Backend }

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

      # @!method initialize(backend:, account_key: nil, account_name: nil, bucket: nil)
      #   @param backend [Symbol, Telnyx::Models::AzureConfigurationData::Backend] Storage backend type
      #
      #   @param account_key [String] Azure Blob Storage account key.
      #
      #   @param account_name [String] Azure Blob Storage account name.
      #
      #   @param bucket [String] Name of the bucket to be used to store recording files.

      # Storage backend type
      #
      # @see Telnyx::Models::AzureConfigurationData#backend
      module Backend
        extend Telnyx::Internal::Type::Enum

        AZURE = :azure

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
