# typed: strong

module Telnyx
  module Models
    class CustomStorageCredentialUpdateResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::CustomStorageCredentialUpdateResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
      # resource.
      sig { returns(String) }
      attr_accessor :connection_id

      sig { returns(Telnyx::CustomStorageConfiguration) }
      attr_reader :data

      sig { params(data: Telnyx::CustomStorageConfiguration::OrHash).void }
      attr_writer :data

      # Identifies record type.
      sig do
        returns(
          Telnyx::Models::CustomStorageCredentialUpdateResponse::RecordType::TaggedSymbol
        )
      end
      attr_accessor :record_type

      sig do
        params(
          connection_id: String,
          data: Telnyx::CustomStorageConfiguration::OrHash,
          record_type:
            Telnyx::Models::CustomStorageCredentialUpdateResponse::RecordType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # Uniquely identifies a Telnyx application (Call Control, TeXML) or Sip connection
        # resource.
        connection_id:,
        data:,
        # Identifies record type.
        record_type:
      )
      end

      sig do
        override.returns(
          {
            connection_id: String,
            data: Telnyx::CustomStorageConfiguration,
            record_type:
              Telnyx::Models::CustomStorageCredentialUpdateResponse::RecordType::TaggedSymbol
          }
        )
      end
      def to_hash
      end

      # Identifies record type.
      module RecordType
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Telnyx::Models::CustomStorageCredentialUpdateResponse::RecordType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CUSTOM_STORAGE_CREDENTIALS =
          T.let(
            :custom_storage_credentials,
            Telnyx::Models::CustomStorageCredentialUpdateResponse::RecordType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Telnyx::Models::CustomStorageCredentialUpdateResponse::RecordType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
