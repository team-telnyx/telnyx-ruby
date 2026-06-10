# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#update
    class DirUpdateParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute dir_id
      #
      #   @return [String]
      required :dir_id, String

      # @!attribute authorizer_email
      #   Contact email of the authorizer. Telnyx may send verification or infringement
      #   notices here.
      #
      #   @return [String, nil]
      optional :authorizer_email, String

      # @!attribute authorizer_name
      #   Name of the person at your enterprise authorizing this DIR. Must be a real
      #   individual.
      #
      #   @return [String, nil]
      optional :authorizer_name, String

      # @!attribute call_reasons
      #   1–10 reasons your business calls customers. Validate phrasing against
      #   `POST /call_reasons/validate`.
      #
      #   @return [Array<String>, nil]
      optional :call_reasons, Telnyx::Internal::Type::ArrayOf[String]

      # @!attribute certify_brand_is_accurate
      #   Certification that the DIR information is accurate. Must be `true` for the DIR
      #   to be submitted for vetting.
      #
      #   @return [Boolean, nil]
      optional :certify_brand_is_accurate, Telnyx::Internal::Type::Boolean

      # @!attribute certify_ip_ownership
      #   Certification of ownership of any logos/trademarks shown. Must be `true` for the
      #   DIR to be submitted for vetting.
      #
      #   @return [Boolean, nil]
      optional :certify_ip_ownership, Telnyx::Internal::Type::Boolean

      # @!attribute certify_no_shaft_content
      #   Certification that this DIR is not used for SHAFT content (Sex, Hate, Alcohol,
      #   Firearms, Tobacco) where prohibited. Must be `true` for the DIR to be submitted
      #   for vetting.
      #
      #   @return [Boolean, nil]
      optional :certify_no_shaft_content, Telnyx::Internal::Type::Boolean

      # @!attribute display_name
      #   Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
      #
      #   @return [String, nil]
      optional :display_name, String

      # @!attribute documents
      #   Additional supporting documents to attach. Append-only: existing documents are
      #   never removed or replaced, and an empty or omitted list is a no-op. Each
      #   `document_id` may appear at most once on a DIR.
      #
      #   @return [Array<Telnyx::Models::DirUpdateParams::Document>, nil]
      optional :documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::DirUpdateParams::Document] }

      # @!attribute logo_url
      #   Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      #   @return [String, nil]
      optional :logo_url, String

      # @!attribute reselling
      #   Set to true if your organization places calls on behalf of other enterprises
      #   (BPO/reseller). Updating this triggers re-vetting on next submit.
      #
      #   @return [Boolean, nil]
      optional :reselling, Telnyx::Internal::Type::Boolean

      # @!method initialize(dir_id:, authorizer_email: nil, authorizer_name: nil, call_reasons: nil, certify_brand_is_accurate: nil, certify_ip_ownership: nil, certify_no_shaft_content: nil, display_name: nil, documents: nil, logo_url: nil, reselling: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::DirUpdateParams} for more details.
      #
      #   @param dir_id [String]
      #
      #   @param authorizer_email [String] Contact email of the authorizer. Telnyx may send verification or infringement no
      #
      #   @param authorizer_name [String] Name of the person at your enterprise authorizing this DIR. Must be a real indiv
      #
      #   @param call_reasons [Array<String>] 1–10 reasons your business calls customers. Validate phrasing against `POST /cal
      #
      #   @param certify_brand_is_accurate [Boolean] Certification that the DIR information is accurate. Must be `true` for the DIR t
      #
      #   @param certify_ip_ownership [Boolean] Certification of ownership of any logos/trademarks shown. Must be `true` for the
      #
      #   @param certify_no_shaft_content [Boolean] Certification that this DIR is not used for SHAFT content (Sex, Hate, Alcohol, F
      #
      #   @param display_name [String] Name shown to call recipients. 1–35 characters, no emoji, not whitespace-only.
      #
      #   @param documents [Array<Telnyx::Models::DirUpdateParams::Document>] Additional supporting documents to attach. Append-only: existing documents are n
      #
      #   @param logo_url [String] Publicly accessible HTTPS URL (max 128 chars) to a 256x256 BMP logo (max 1 MB).
      #
      #   @param reselling [Boolean] Set to true if your organization places calls on behalf of other enterprises (BP
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
        #   @return [Symbol, Telnyx::Models::DirUpdateParams::Document::DocumentType]
        required :document_type, enum: -> { Telnyx::DirUpdateParams::Document::DocumentType }

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!method initialize(document_id:, document_type:, description: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DirUpdateParams::Document} for more details.
        #
        #   @param document_id [String] Id returned by the Telnyx Documents API after you upload the file (upload via `P
        #
        #   @param document_type [Symbol, Telnyx::Models::DirUpdateParams::Document::DocumentType] Type of supporting document. Pick the closest match to what the file actually co
        #
        #   @param description [String]

        # Type of supporting document. Pick the closest match to what the file actually
        # contains; `other` triggers manual vetting and may slow approval. The matching
        # short_name reference list is at `GET /v2/dir/document_types`.
        #
        # @see Telnyx::Models::DirUpdateParams::Document#document_type
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
