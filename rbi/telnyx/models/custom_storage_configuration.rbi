# typed: strong

module Telnyx
  module Models
    class CustomStorageConfiguration < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::CustomStorageConfiguration, Telnyx::Internal::AnyHash)
        end

      sig { returns(Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol) }
      attr_accessor :backend

      sig do
        returns(Telnyx::CustomStorageConfiguration::Configuration::Variants)
      end
      attr_accessor :configuration

      sig do
        params(
          backend: Telnyx::CustomStorageConfiguration::Backend::OrSymbol,
          configuration:
            T.any(
              Telnyx::GcsConfigurationData::OrHash,
              Telnyx::S3ConfigurationData::OrHash,
              Telnyx::AzureConfigurationData::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(backend:, configuration:)
      end

      sig do
        override.returns(
          {
            backend: Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol,
            configuration:
              Telnyx::CustomStorageConfiguration::Configuration::Variants
          }
        )
      end
      def to_hash
      end

      module Backend
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Telnyx::CustomStorageConfiguration::Backend)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GCS =
          T.let(:gcs, Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol)
        S3 =
          T.let(:s3, Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol)
        AZURE =
          T.let(
            :azure,
            Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Telnyx::CustomStorageConfiguration::Backend::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module Configuration
        extend Telnyx::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Telnyx::GcsConfigurationData,
              Telnyx::S3ConfigurationData,
              Telnyx::AzureConfigurationData
            )
          end

        sig do
          override.returns(
            T::Array[
              Telnyx::CustomStorageConfiguration::Configuration::Variants
            ]
          )
        end
        def self.variants
        end
      end
    end
  end
end
