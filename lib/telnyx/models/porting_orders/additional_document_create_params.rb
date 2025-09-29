# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AdditionalDocuments#create
      class AdditionalDocumentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute additional_documents
        #
        #   @return [Array<Telnyx::Models::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument>, nil]
        optional :additional_documents,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument] }

        # @!method initialize(additional_documents: nil, request_options: {})
        #   @param additional_documents [Array<Telnyx::Models::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument>]
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class AdditionalDocument < Telnyx::Internal::Type::BaseModel
          # @!attribute document_id
          #   The document identification
          #
          #   @return [String, nil]
          optional :document_id, String

          # @!attribute document_type
          #   The type of document being created.
          #
          #   @return [Symbol, Telnyx::Models::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType, nil]
          optional :document_type,
                   enum: -> { Telnyx::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType }

          # @!method initialize(document_id: nil, document_type: nil)
          #   @param document_id [String] The document identification
          #
          #   @param document_type [Symbol, Telnyx::Models::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument::DocumentType] The type of document being created.

          # The type of document being created.
          #
          # @see Telnyx::Models::PortingOrders::AdditionalDocumentCreateParams::AdditionalDocument#document_type
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
