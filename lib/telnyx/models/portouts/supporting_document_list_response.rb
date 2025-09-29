# frozen_string_literal: true

module Telnyx
  module Models
    module Portouts
      # @see Telnyx::Resources::Portouts::SupportingDocuments#list
      class SupportingDocumentListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::Portouts::SupportingDocumentListResponse::Data>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Portouts::SupportingDocumentListResponse::Data] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::Portouts::SupportingDocumentListResponse::Data>]

        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute created_at
          #   Supporting document creation timestamp in ISO 8601 format
          #
          #   @return [String]
          required :created_at, String

          # @!attribute document_id
          #   Identifies the associated document
          #
          #   @return [String]
          required :document_id, String

          # @!attribute updated_at
          #   Supporting document last changed timestamp in ISO 8601 format
          #
          #   @return [String]
          required :updated_at, String

          response_only do
            # @!attribute portout_id
            #   Identifies the associated port request
            #
            #   @return [String]
            required :portout_id, String

            # @!attribute record_type
            #   Identifies the type of the resource.
            #
            #   @return [String]
            required :record_type, String

            # @!attribute type
            #   Identifies the type of the document
            #
            #   @return [Symbol, Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type]
            required :type, enum: -> { Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type }
          end

          # @!method initialize(id:, created_at:, document_id:, portout_id:, record_type:, type:, updated_at:)
          #   @param id [String]
          #
          #   @param created_at [String] Supporting document creation timestamp in ISO 8601 format
          #
          #   @param document_id [String] Identifies the associated document
          #
          #   @param portout_id [String] Identifies the associated port request
          #
          #   @param record_type [String] Identifies the type of the resource.
          #
          #   @param type [Symbol, Telnyx::Models::Portouts::SupportingDocumentListResponse::Data::Type] Identifies the type of the document
          #
          #   @param updated_at [String] Supporting document last changed timestamp in ISO 8601 format

          # Identifies the type of the document
          #
          # @see Telnyx::Models::Portouts::SupportingDocumentListResponse::Data#type
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
