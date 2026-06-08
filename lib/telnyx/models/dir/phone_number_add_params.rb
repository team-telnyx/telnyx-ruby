# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumbers#add
      class PhoneNumberAddParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute dir_id
        #
        #   @return [String]
        required :dir_id, String

        # @!attribute documents
        #   Supporting documents covering this batch. At least one entry with
        #   `document_type: letter_of_authorization` is required - the LOA authorises Telnyx
        #   to register these numbers under the DIR. Each `document_id` must come from the
        #   Telnyx Documents API. Additional document types (e.g. business registration) may
        #   be included alongside the LOA.
        #
        #   @return [Array<Telnyx::Models::Dir::PhoneNumberAddParams::Document>]
        required :documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Dir::PhoneNumberAddParams::Document] }

        # @!attribute phone_numbers
        #   1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with
        #   `1`.
        #
        #   @return [Array<String>]
        required :phone_numbers, Telnyx::Internal::Type::ArrayOf[String]

        # @!method initialize(dir_id:, documents:, phone_numbers:, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberAddParams} for more details.
        #
        #   @param dir_id [String]
        #
        #   @param documents [Array<Telnyx::Models::Dir::PhoneNumberAddParams::Document>] Supporting documents covering this batch. At least one entry with `document_type
        #
        #   @param phone_numbers [Array<String>] 1–15 phone numbers in E.164 format. 10-digit US numbers are auto-prefixed with `
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

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
          #   @return [Symbol, Telnyx::Models::Dir::PhoneNumberAddParams::Document::DocumentType]
          required :document_type, enum: -> { Telnyx::Dir::PhoneNumberAddParams::Document::DocumentType }

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!method initialize(document_id:, document_type:, description: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Dir::PhoneNumberAddParams::Document} for more details.
          #
          #   @param document_id [String] Id returned by the Telnyx Documents API after you upload the file (upload via `P
          #
          #   @param document_type [Symbol, Telnyx::Models::Dir::PhoneNumberAddParams::Document::DocumentType] Type of supporting document. Pick the closest match to what the file actually co
          #
          #   @param description [String]

          # Type of supporting document. Pick the closest match to what the file actually
          # contains; `other` triggers manual vetting and may slow approval. The matching
          # short_name reference list is at `GET /v2/dir/document_types`.
          #
          # @see Telnyx::Models::Dir::PhoneNumberAddParams::Document#document_type
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
  end
end
