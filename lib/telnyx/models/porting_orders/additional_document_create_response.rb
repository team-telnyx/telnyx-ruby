# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AdditionalDocuments#create
      class AdditionalDocumentCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse::Data] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #   Uniquely identifies this additional document
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute content_type
          #   The content type of the related document.
          #
          #   @return [String, nil]
          optional :content_type, String

          # @!attribute created_at
          #   ISO 8601 formatted date indicating when the resource was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute document_id
          #   Identifies the associated document
          #
          #   @return [String, nil]
          optional :document_id, String

          # @!attribute document_type
          #   Identifies the type of additional document
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse::Data::DocumentType, nil]
          optional :document_type,
                   enum: -> { Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse::Data::DocumentType }

          # @!attribute filename
          #   The filename of the related document.
          #
          #   @return [String, nil]
          optional :filename, String

          # @!attribute porting_order_id
          #   Identifies the associated porting order
          #
          #   @return [String, nil]
          optional :porting_order_id, String

          # @!attribute updated_at
          #   ISO 8601 formatted date indicating when the resource was updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          response_only do
            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String, nil]
            optional :record_type, String
          end

          # @!method initialize(id: nil, content_type: nil, created_at: nil, document_id: nil, document_type: nil, filename: nil, porting_order_id: nil, record_type: nil, updated_at: nil)
          #   @param id [String] Uniquely identifies this additional document
          #
          #   @param content_type [String] The content type of the related document.
          #
          #   @param created_at [Time] ISO 8601 formatted date indicating when the resource was created.
          #
          #   @param document_id [String] Identifies the associated document
          #
          #   @param document_type [Symbol, Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse::Data::DocumentType] Identifies the type of additional document
          #
          #   @param filename [String] The filename of the related document.
          #
          #   @param porting_order_id [String] Identifies the associated porting order
          #
          #   @param record_type [String] Identifies the type of the resource.
          #
          #   @param updated_at [Time] ISO 8601 formatted date indicating when the resource was updated.

          # Identifies the type of additional document
          #
          # @see Telnyx::Models::PortingOrders::AdditionalDocumentCreateResponse::Data#document_type
          module DocumentType
            extend Telnyx::Internal::Type::Enum

            LOA = :loa
            INVOICE = :invoice
            CSR = :csr
            OTHER = :other

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
