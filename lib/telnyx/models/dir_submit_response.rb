# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Dir#submit
    class DirSubmitResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::DirSubmitResponse::Data]
      required :data, -> { Telnyx::Models::DirSubmitResponse::Data }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::DirSubmitResponse::Data]

      # @see Telnyx::Models::DirSubmitResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute authorizer_email
        #
        #   @return [String, nil]
        optional :authorizer_email, String, nil?: true

        # @!attribute authorizer_name
        #
        #   @return [String, nil]
        optional :authorizer_name, String, nil?: true

        # @!attribute call_reasons
        #
        #   @return [Array<Telnyx::Models::DirSubmitResponse::Data::CallReason>, nil]
        optional :call_reasons,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirSubmitResponse::Data::CallReason] }

        # @!attribute certify_brand_is_accurate
        #
        #   @return [Boolean, nil]
        optional :certify_brand_is_accurate, Telnyx::Internal::Type::Boolean

        # @!attribute certify_ip_ownership
        #
        #   @return [Boolean, nil]
        optional :certify_ip_ownership, Telnyx::Internal::Type::Boolean

        # @!attribute certify_no_shaft_content
        #
        #   @return [Boolean, nil]
        optional :certify_no_shaft_content, Telnyx::Internal::Type::Boolean

        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!attribute documents
        #
        #   @return [Array<Telnyx::Models::DirSubmitResponse::Data::Document>, nil]
        optional :documents,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirSubmitResponse::Data::Document] },
                 nil?: true

        # @!attribute enterprise_id
        #
        #   @return [String, nil]
        optional :enterprise_id, String

        # @!attribute logo_url
        #
        #   @return [String, nil]
        optional :logo_url, String, nil?: true

        # @!attribute rejection_reasons
        #   Populated when `status` is `rejected`; cleared on `/submit` or successful
        #   approval.
        #
        #   @return [Array<Telnyx::Models::DirSubmitResponse::Data::RejectionReason>, nil]
        optional :rejection_reasons,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::DirSubmitResponse::Data::RejectionReason] },
                 nil?: true

        # @!attribute reselling
        #
        #   @return [Boolean, nil]
        optional :reselling, Telnyx::Internal::Type::Boolean

        # @!attribute status
        #   DIR lifecycle status.
        #
        #   - `draft` — newly created; editable; not yet submitted.
        #   - `submitted` / `in_review` — Telnyx is reviewing.
        #   - `verified` — approved; phone numbers may be attached.
        #   - `rejected` — Telnyx rejected this submission; `rejection_reasons` is
        #     populated; customer can edit and resubmit.
        #   - `unsuccessful` — system-side error during processing; customer can edit and
        #     resubmit.
        #   - `suspended` — temporarily disabled (e.g. by an active infringement claim).
        #   - `expired` — verification expired; customer must resubmit.
        #   - `infringement_claimed` — a trademark/impersonation claim is open against this
        #     DIR.
        #   - `permanently_rejected` — terminal; cannot be resubmitted.
        #
        #   @return [Symbol, Telnyx::Models::DirSubmitResponse::Data::Status, nil]
        optional :status, enum: -> { Telnyx::Models::DirSubmitResponse::Data::Status }

        response_only do
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute created_at
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute expiring_at
          #
          #   @return [Time, nil]
          optional :expiring_at, Time, nil?: true

          # @!attribute rejected_at
          #
          #   @return [Time, nil]
          optional :rejected_at, Time, nil?: true

          # @!attribute submitted_at
          #
          #   @return [Time, nil]
          optional :submitted_at, Time, nil?: true

          # @!attribute updated_at
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute verified_at
          #
          #   @return [Time, nil]
          optional :verified_at, Time, nil?: true
        end

        # @!method initialize(id: nil, authorizer_email: nil, authorizer_name: nil, call_reasons: nil, certify_brand_is_accurate: nil, certify_ip_ownership: nil, certify_no_shaft_content: nil, created_at: nil, display_name: nil, documents: nil, enterprise_id: nil, expiring_at: nil, logo_url: nil, rejected_at: nil, rejection_reasons: nil, reselling: nil, status: nil, submitted_at: nil, updated_at: nil, verified_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::DirSubmitResponse::Data} for more details.
        #
        #   @param id [String]
        #
        #   @param authorizer_email [String, nil]
        #
        #   @param authorizer_name [String, nil]
        #
        #   @param call_reasons [Array<Telnyx::Models::DirSubmitResponse::Data::CallReason>]
        #
        #   @param certify_brand_is_accurate [Boolean]
        #
        #   @param certify_ip_ownership [Boolean]
        #
        #   @param certify_no_shaft_content [Boolean]
        #
        #   @param created_at [Time]
        #
        #   @param display_name [String]
        #
        #   @param documents [Array<Telnyx::Models::DirSubmitResponse::Data::Document>, nil]
        #
        #   @param enterprise_id [String]
        #
        #   @param expiring_at [Time, nil]
        #
        #   @param logo_url [String, nil]
        #
        #   @param rejected_at [Time, nil]
        #
        #   @param rejection_reasons [Array<Telnyx::Models::DirSubmitResponse::Data::RejectionReason>, nil] Populated when `status` is `rejected`; cleared on `/submit` or successful approv
        #
        #   @param reselling [Boolean]
        #
        #   @param status [Symbol, Telnyx::Models::DirSubmitResponse::Data::Status] DIR lifecycle status.
        #
        #   @param submitted_at [Time, nil]
        #
        #   @param updated_at [Time]
        #
        #   @param verified_at [Time, nil]

        class CallReason < Telnyx::Internal::Type::BaseModel
          # @!attribute reason
          #
          #   @return [String, nil]
          optional :reason, String

          response_only do
            # @!attribute created_at
            #
            #   @return [Time, nil]
            optional :created_at, Time
          end

          # @!method initialize(created_at: nil, reason: nil)
          #   @param created_at [Time]
          #   @param reason [String]
        end

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
          #   @return [Symbol, Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType]
          required :document_type, enum: -> { Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType }

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!method initialize(document_id:, document_type:, description: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DirSubmitResponse::Data::Document} for more details.
          #
          #   @param document_id [String] Id returned by the Telnyx Documents API after you upload the file (upload via `P
          #
          #   @param document_type [Symbol, Telnyx::Models::DirSubmitResponse::Data::Document::DocumentType] Type of supporting document. Pick the closest match to what the file actually co
          #
          #   @param description [String]

          # Type of supporting document. Pick the closest match to what the file actually
          # contains; `other` triggers manual vetting and may slow approval. The matching
          # short_name reference list is at `GET /v2/dir/document_types`.
          #
          # @see Telnyx::Models::DirSubmitResponse::Data::Document#document_type
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

        class RejectionReason < Telnyx::Internal::Type::BaseModel
          # @!attribute code
          #
          #   @return [String, nil]
          optional :code, String

          # @!attribute detail
          #
          #   @return [String, nil]
          optional :detail, String

          # @!attribute message
          #   Customer-visible free-text comment from the Telnyx vetting team. Only the first
          #   entry of `rejection_reasons` carries this; the rest are `null`.
          #
          #   @return [String, nil]
          optional :message, String, nil?: true

          # @!attribute title
          #
          #   @return [String, nil]
          optional :title, String

          # @!method initialize(code: nil, detail: nil, message: nil, title: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::DirSubmitResponse::Data::RejectionReason} for more details.
          #
          #   @param code [String]
          #
          #   @param detail [String]
          #
          #   @param message [String, nil] Customer-visible free-text comment from the Telnyx vetting team. Only the first
          #
          #   @param title [String]
        end

        # DIR lifecycle status.
        #
        # - `draft` — newly created; editable; not yet submitted.
        # - `submitted` / `in_review` — Telnyx is reviewing.
        # - `verified` — approved; phone numbers may be attached.
        # - `rejected` — Telnyx rejected this submission; `rejection_reasons` is
        #   populated; customer can edit and resubmit.
        # - `unsuccessful` — system-side error during processing; customer can edit and
        #   resubmit.
        # - `suspended` — temporarily disabled (e.g. by an active infringement claim).
        # - `expired` — verification expired; customer must resubmit.
        # - `infringement_claimed` — a trademark/impersonation claim is open against this
        #   DIR.
        # - `permanently_rejected` — terminal; cannot be resubmitted.
        #
        # @see Telnyx::Models::DirSubmitResponse::Data#status
        module Status
          extend Telnyx::Internal::Type::Enum

          DRAFT = :draft
          SUBMITTED = :submitted
          IN_REVIEW = :in_review
          VERIFIED = :verified
          REJECTED = :rejected
          UNSUCCESSFUL = :unsuccessful
          SUSPENDED = :suspended
          EXPIRED = :expired
          INFRINGEMENT_CLAIMED = :infringement_claimed
          PERMANENTLY_REJECTED = :permanently_rejected

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
