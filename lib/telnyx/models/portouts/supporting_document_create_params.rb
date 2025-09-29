# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::SupportingDocuments#create
      class SupportingDocumentCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute documents
        #   List of supporting documents parameters
        #
        #   @return [Array<Telnyx::Models::Portouts::SupportingDocumentCreateParams::Document>, nil]
        optional :documents,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Portouts::SupportingDocumentCreateParams::Document] }

        # @!method initialize(documents: nil, request_options: {})
        #   @param documents [Array<Telnyx::Models::Portouts::SupportingDocumentCreateParams::Document>] List of supporting documents parameters
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        class Document < Telnyx::Internal::Type::BaseModel
          # @!attribute document_id
          #   Identifies the associated document
          #
          #   @return [String]
          required :document_id, String

          # @!attribute type
          #   Identifies the type of the document
          #
          #   @return [Symbol, Telnyx::Models::Portouts::SupportingDocumentCreateParams::Document::Type]
          required :type, enum: -> { Telnyx::Portouts::SupportingDocumentCreateParams::Document::Type }

          # @!method initialize(document_id:, type:)
          #   @param document_id [String] Identifies the associated document
          #
          #   @param type [Symbol, Telnyx::Models::Portouts::SupportingDocumentCreateParams::Document::Type] Identifies the type of the document

          # Identifies the type of the document
          #
          # @see Telnyx::Models::Portouts::SupportingDocumentCreateParams::Document#type
          module Type
            extend Telnyx::Internal::Type::Enum

            LOA = :loa
            INVOICE = :invoice

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
