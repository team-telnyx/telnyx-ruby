# typed: strong

module Telnyx
  module Models
    class GcsConfigurationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::GcsConfigurationData, Telnyx::Internal::AnyHash)
        end

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
        params(bucket: String, credentials: String).returns(T.attached_class)
      end
      def self.new(
        # Name of the bucket to be used to store recording files.
        bucket: nil,
        # Opaque credential token used to authenticate and authorize with storage
        # provider.
        credentials: nil
      )
      end

      sig { override.returns({ bucket: String, credentials: String }) }
      def to_hash
      end
    end
  end
end
