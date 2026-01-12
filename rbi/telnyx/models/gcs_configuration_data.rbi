# typed: strong

module Telnyx
  module Models
    class GcsConfigurationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::GcsConfigurationData, Telnyx::Internal::AnyHash)
        end

      # Storage backend type
      sig { returns(Telnyx::GcsConfigurationData::Backend::OrSymbol) }
      attr_accessor :backend

      # Name of the bucket to be used to store recording files.
      sig { returns(T.nilable(String)) }
      attr_reader :bucket

      sig { params(bucket: String).void }
      attr_writer :bucket

      # Opaque credential token used to authenticate and authorize with storage
      # provider.
      sig { returns(T.nilable(String)) }
      attr_reader :credentials

      sig { params(credentials: String).void }
      attr_writer :credentials

      sig do
        params(
          backend: Telnyx::GcsConfigurationData::Backend::OrSymbol,
          bucket: String,
          credentials: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Storage backend type
        backend:,
        # Name of the bucket to be used to store recording files.
        bucket: nil,
        # Opaque credential token used to authenticate and authorize with storage
        # provider.
        credentials: nil
      )
      end

      sig do
        override.returns(
          {
            backend: Telnyx::GcsConfigurationData::Backend::OrSymbol,
            bucket: String,
            credentials: String
          }
        )
      end
      def to_hash
      end

      # Storage backend type
      module Backend
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::GcsConfigurationData::Backend) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        GCS = T.let(:gcs, Telnyx::GcsConfigurationData::Backend::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::GcsConfigurationData::Backend::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
