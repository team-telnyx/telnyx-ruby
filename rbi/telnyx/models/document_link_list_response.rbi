# typed: strong

module Telnyx
  module Models
    class DocumentLinkListResponse < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Telnyx::Models::DocumentLinkListResponse,
            Telnyx::Internal::AnyHash
          )
        end

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Identifies the associated document.
      sig { returns(T.nilable(String)) }
      attr_reader :document_id

      sig { params(document_id: String).void }
      attr_writer :document_id

      # The linked resource's record type.
      sig { returns(T.nilable(String)) }
      attr_reader :linked_record_type

      sig { params(linked_record_type: String).void }
      attr_writer :linked_record_type

      # Identifies the linked resource.
      sig { returns(T.nilable(String)) }
      attr_reader :linked_resource_id

      sig { params(linked_resource_id: String).void }
      attr_writer :linked_resource_id

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          created_at: String,
          document_id: String,
          linked_record_type: String,
          linked_resource_id: String,
          record_type: String,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # Identifies the associated document.
        document_id: nil,
        # The linked resource's record type.
        linked_record_type: nil,
        # Identifies the linked resource.
        linked_resource_id: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: String,
            document_id: String,
            linked_record_type: String,
            linked_resource_id: String,
            record_type: String,
            updated_at: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
