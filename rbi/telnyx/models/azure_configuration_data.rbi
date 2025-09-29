# typed: strong

module Telnyx
  module Models
    class AzureConfigurationData < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::AzureConfigurationData, Telnyx::Internal::AnyHash)
        end

      # Azure Blob Storage account key.
      sig { returns(T.nilable(String)) }
      attr_reader :account_key

      sig { params(account_key: String).void }
      attr_writer :account_key

      # Azure Blob Storage account name.
      sig { returns(T.nilable(String)) }
      attr_reader :account_name

      sig { params(account_name: String).void }
      attr_writer :account_name

      # Name of the bucket to be used to store recording files.
      sig { returns(T.nilable(String)) }
      attr_reader :bucket

      sig { params(bucket: String).void }
      attr_writer :bucket

      sig do
        params(
          account_key: String,
          account_name: String,
          bucket: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Azure Blob Storage account key.
        account_key: nil,
        # Azure Blob Storage account name.
        account_name: nil,
        # Name of the bucket to be used to store recording files.
        bucket: nil
      )
      end

      sig do
        override.returns(
          { account_key: String, account_name: String, bucket: String }
        )
      end
      def to_hash
      end
    end
  end
end
