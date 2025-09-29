# frozen_string_literal: true

module Telnyx
  module Models
    class CustomStorageConfiguration < Telnyx::Internal::Type::BaseModel
      # @!attribute backend
      #
      #   @return [Symbol, Telnyx::Models::CustomStorageConfiguration::Backend]
      required :backend, enum: -> { Telnyx::CustomStorageConfiguration::Backend }

      # @!attribute configuration
      #
      #   @return [Telnyx::Models::GcsConfigurationData, Telnyx::Models::S3ConfigurationData, Telnyx::Models::AzureConfigurationData]
      required :configuration, union: -> { Telnyx::CustomStorageConfiguration::Configuration }

      # @!method initialize(backend:, configuration:)
      #   @param backend [Symbol, Telnyx::Models::CustomStorageConfiguration::Backend]
      #   @param configuration [Telnyx::Models::GcsConfigurationData, Telnyx::Models::S3ConfigurationData, Telnyx::Models::AzureConfigurationData]

      # @see Telnyx::Models::CustomStorageConfiguration#backend
      module Backend
        extend Telnyx::Internal::Type::Enum

        GCS = :gcs
        S3 = :s3
        AZURE = :azure

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # @see Telnyx::Models::CustomStorageConfiguration#configuration
      module Configuration
        extend Telnyx::Internal::Type::Union

        variant -> { Telnyx::GcsConfigurationData }

        variant -> { Telnyx::S3ConfigurationData }

        variant -> { Telnyx::AzureConfigurationData }

        # @!method self.variants
        #   @return [Array(Telnyx::Models::GcsConfigurationData, Telnyx::Models::S3ConfigurationData, Telnyx::Models::AzureConfigurationData)]
      end
    end
  end
end
