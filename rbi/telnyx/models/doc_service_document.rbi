# typed: strong

module Telnyx
  module Models
    class DocServiceDocument < Telnyx::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Telnyx::DocServiceDocument, Telnyx::Internal::AnyHash)
        end

      # Optional reference string for customer tracking.
      sig { returns(T.nilable(String)) }
      attr_reader :customer_reference

      sig { params(customer_reference: String).void }
      attr_writer :customer_reference

      # The filename of the document.
      sig { returns(T.nilable(String)) }
      attr_reader :filename

      sig { params(filename: String).void }
      attr_writer :filename

      # Identifies the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # The document's content_type.
      sig { returns(T.nilable(String)) }
      attr_reader :content_type

      sig { params(content_type: String).void }
      attr_writer :content_type

      # ISO 8601 formatted date-time indicating when the resource was created.
      sig { returns(T.nilable(String)) }
      attr_reader :created_at

      sig { params(created_at: String).void }
      attr_writer :created_at

      # Identifies the type of the resource.
      sig { returns(T.nilable(String)) }
      attr_reader :record_type

      sig { params(record_type: String).void }
      attr_writer :record_type

      # The document's SHA256 hash provided for optional verification purposes.
      sig { returns(T.nilable(String)) }
      attr_reader :sha256

      sig { params(sha256: String).void }
      attr_writer :sha256

      # Indicates the document's filesize
      sig { returns(T.nilable(Telnyx::DocServiceDocument::Size)) }
      attr_reader :size

      sig { params(size: Telnyx::DocServiceDocument::Size::OrHash).void }
      attr_writer :size

      # Indicates the current document reviewing status
      sig do
        returns(T.nilable(Telnyx::DocServiceDocument::Status::TaggedSymbol))
      end
      attr_reader :status

      sig { params(status: Telnyx::DocServiceDocument::Status::OrSymbol).void }
      attr_writer :status

      # ISO 8601 formatted date-time indicating when the resource was updated.
      sig { returns(T.nilable(String)) }
      attr_reader :updated_at

      sig { params(updated_at: String).void }
      attr_writer :updated_at

      sig do
        params(
          id: String,
          content_type: String,
          created_at: String,
          customer_reference: String,
          filename: String,
          record_type: String,
          sha256: String,
          size: Telnyx::DocServiceDocument::Size::OrHash,
          status: Telnyx::DocServiceDocument::Status::OrSymbol,
          updated_at: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Identifies the resource.
        id: nil,
        # The document's content_type.
        content_type: nil,
        # ISO 8601 formatted date-time indicating when the resource was created.
        created_at: nil,
        # Optional reference string for customer tracking.
        customer_reference: nil,
        # The filename of the document.
        filename: nil,
        # Identifies the type of the resource.
        record_type: nil,
        # The document's SHA256 hash provided for optional verification purposes.
        sha256: nil,
        # Indicates the document's filesize
        size: nil,
        # Indicates the current document reviewing status
        status: nil,
        # ISO 8601 formatted date-time indicating when the resource was updated.
        updated_at: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            content_type: String,
            created_at: String,
            customer_reference: String,
            filename: String,
            record_type: String,
            sha256: String,
            size: Telnyx::DocServiceDocument::Size,
            status: Telnyx::DocServiceDocument::Status::TaggedSymbol,
            updated_at: String
          }
        )
      end
      def to_hash
      end

      class Size < Telnyx::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Telnyx::DocServiceDocument::Size, Telnyx::Internal::AnyHash)
          end

        # The number of bytes
        sig { returns(T.nilable(Integer)) }
        attr_reader :amount

        sig { params(amount: Integer).void }
        attr_writer :amount

        # Identifies the unit
        sig { returns(T.nilable(String)) }
        attr_reader :unit

        sig { params(unit: String).void }
        attr_writer :unit

        # Indicates the document's filesize
        sig { params(amount: Integer, unit: String).returns(T.attached_class) }
        def self.new(
          # The number of bytes
          amount: nil,
          # Identifies the unit
          unit: nil
        )
        end

        sig { override.returns({ amount: Integer, unit: String }) }
        def to_hash
        end
      end

      # Indicates the current document reviewing status
      module Status
        extend Telnyx::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Telnyx::DocServiceDocument::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING =
          T.let(:pending, Telnyx::DocServiceDocument::Status::TaggedSymbol)
        VERIFIED =
          T.let(:verified, Telnyx::DocServiceDocument::Status::TaggedSymbol)
        DENIED =
          T.let(:denied, Telnyx::DocServiceDocument::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Telnyx::DocServiceDocument::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
