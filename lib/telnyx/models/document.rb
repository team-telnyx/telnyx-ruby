# frozen_string_literal: true

module Telnyx
  module Models
    class Document < Telnyx::Internal::Type::BaseModel
      # @!attribute document_id
      #   Id returned by the Telnyx Documents API after you upload the file (upload via
      #   `POST /v2/documents`; see https://developers.telnyx.com/api/documents).
      #
      #   @return [String]
      required :document_id, String

      # @!attribute document_type
      #   Type of supporting document. Pick the closest match to what the file actually
      #   contains; `other` triggers manual vetting and may slow approval. The matching
      #   short_name reference list is at `GET /v2/dir/document_types`.
      #
      #   @return [Symbol, Telnyx::Models::Document::DocumentType]
      required :document_type, enum: -> { Telnyx::Document::DocumentType }

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(document_id:, document_type:, description: nil)
      #   Some parameter documentations has been truncated, see {Telnyx::Models::Document}
      #   for more details.
      #
      #   @param document_id [String] Id returned by the Telnyx Documents API after you upload the file (upload via `P
      #
      #   @param document_type [Symbol, Telnyx::Models::Document::DocumentType] Type of supporting document. Pick the closest match to what the file actually co
      #
      #   @param description [String]

      # Type of supporting document. Pick the closest match to what the file actually
      # contains; `other` triggers manual vetting and may slow approval. The matching
      # short_name reference list is at `GET /v2/dir/document_types`.
      #
      # @see Telnyx::Models::Document#document_type
      module DocumentType
        extend Telnyx::Internal::Type::Enum

        LETTER_OF_AUTHORIZATION = :letter_of_authorization
        BUSINESS_REGISTRATION = :business_registration
        ARTICLES_OF_INCORPORATION = :articles_of_incorporation
        TAX_DOCUMENT = :tax_document
        EIN_LETTER = :ein_letter
        TRADEMARK_REGISTRATION = :trademark_registration
        WEBSITE_OWNERSHIP = :website_ownership
        BUSINESS_LICENSE = :business_license
        PROFESSIONAL_LICENSE = :professional_license
        GOVERNMENT_ID = :government_id
        UTILITY_BILL = :utility_bill
        BANK_STATEMENT = :bank_statement
        OTHER = :other

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
