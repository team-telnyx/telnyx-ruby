# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumberBatches#retrieve
      class PhoneNumberBatchRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   A phone-number batch groups all numbers added in a single bulk-add request.
        #   Telnyx vets the batch as a unit. The response embeds the full `phone_numbers`
        #   array so you can read per-number status without a separate call, plus a
        #   batch-level `status` summarising the unit's progress.
        #
        #   @return [Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data]
        required :data, -> { Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse} for more details.
        #
        #   @param data [Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data] A phone-number batch groups all numbers added in a single bulk-add request. Teln

        # @see Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse#data
        class Data < Telnyx::Internal::Type::BaseModel
          # @!attribute dir_id
          #
          #   @return [String, nil]
          optional :dir_id, String

          # @!attribute documents
          #   Documents attached to this batch (e.g. a Letter of Authorization). Empty when
          #   none were supplied at add time.
          #
          #   @return [Array<Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document>, nil]
          optional :documents,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document] }

          # @!attribute enterprise_id
          #
          #   @return [String, nil]
          optional :enterprise_id, String

          # @!attribute phone_numbers
          #   All phone numbers in this batch, with per-number status.
          #
          #   @return [Array<Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber>, nil]
          optional :phone_numbers,
                   -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber] }

          # @!attribute status
          #   Aggregate batch status. Mirrors the values used on individual phone numbers
          #   (`submitted`, `in_review`, `verified`, `unsuccessful`, `permanently_rejected`,
          #   etc.).
          #
          #   @return [Symbol, Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status, nil]
          optional :status, enum: -> { Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status }

          response_only do
            # @!attribute batch_id
            #
            #   @return [String, nil]
            optional :batch_id, String

            # @!attribute dir_display_name
            #   The DIR's display name at the time the batch was read.
            #
            #   @return [String, nil]
            optional :dir_display_name, String

            # @!attribute submitted_at
            #   When the batch was created (and implicitly submitted for vetting).
            #
            #   @return [Time, nil]
            optional :submitted_at, Time

            # @!attribute total_count
            #   Number of phone numbers in this batch (length of `phone_numbers`).
            #
            #   @return [Integer, nil]
            optional :total_count, Integer
          end

          # @!method initialize(batch_id: nil, dir_display_name: nil, dir_id: nil, documents: nil, enterprise_id: nil, phone_numbers: nil, status: nil, submitted_at: nil, total_count: nil)
          #   Some parameter documentations has been truncated, see
          #   {Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data} for more details.
          #
          #   A phone-number batch groups all numbers added in a single bulk-add request.
          #   Telnyx vets the batch as a unit. The response embeds the full `phone_numbers`
          #   array so you can read per-number status without a separate call, plus a
          #   batch-level `status` summarising the unit's progress.
          #
          #   @param batch_id [String]
          #
          #   @param dir_display_name [String] The DIR's display name at the time the batch was read.
          #
          #   @param dir_id [String]
          #
          #   @param documents [Array<Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document>] Documents attached to this batch (e.g. a Letter of Authorization). Empty when no
          #
          #   @param enterprise_id [String]
          #
          #   @param phone_numbers [Array<Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber>] All phone numbers in this batch, with per-number status.
          #
          #   @param status [Symbol, Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Status] Aggregate batch status. Mirrors the values used on individual phone numbers (`su
          #
          #   @param submitted_at [Time] When the batch was created (and implicitly submitted for vetting).
          #
          #   @param total_count [Integer] Number of phone numbers in this batch (length of `phone_numbers`).

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
            #   @return [Symbol, Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType]
            required :document_type,
                     enum: -> { Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType }

            # @!attribute description
            #
            #   @return [String, nil]
            optional :description, String

            # @!method initialize(document_id:, document_type:, description: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document} for more
            #   details.
            #
            #   @param document_id [String] Id returned by the Telnyx Documents API after you upload the file (upload via `P
            #
            #   @param document_type [Symbol, Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document::DocumentType] Type of supporting document. Pick the closest match to what the file actually co
            #
            #   @param description [String]

            # Type of supporting document. Pick the closest match to what the file actually
            # contains; `other` triggers manual vetting and may slow approval. The matching
            # short_name reference list is at `GET /v2/dir/document_types`.
            #
            # @see Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::Document#document_type
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

          class PhoneNumber < Telnyx::Internal::Type::BaseModel
            # @!attribute batch_id
            #   Id of the batch this number was vetted as part of.
            #
            #   @return [String, nil]
            optional :batch_id, String, nil?: true

            # @!attribute dir_id
            #
            #   @return [String, nil]
            optional :dir_id, String

            # @!attribute enterprise_id
            #
            #   @return [String, nil]
            optional :enterprise_id, String

            # @!attribute loa_document_id
            #   Id of the Letter of Authorization document attached to this number's batch.
            #
            #   @return [String, nil]
            optional :loa_document_id, String, nil?: true

            # @!attribute phone_number
            #   E.164 with leading `+`.
            #
            #   @return [String, nil]
            optional :phone_number, String

            # @!attribute rejection_reason
            #   Populated when `status` is `unsuccessful` or `permanently_rejected`.
            #
            #   @return [Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason, nil]
            optional :rejection_reason,
                     -> { Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason },
                     nil?: true

            # @!attribute status
            #   Phone-number lifecycle status.
            #
            #   - `submitted` / `in_review` - Telnyx is reviewing the batch this number belongs
            #     to.
            #   - `verified` - approved; the DIR's display identity will be shown on outbound
            #     calls from this number.
            #   - `unsuccessful` - Telnyx rejected this submission; the customer may re-add to
            #     retry.
            #   - `suspended` - temporarily disabled (e.g. by an active infringement claim on
            #     the DIR).
            #   - `expired` - verification expired; re-add to renew.
            #   - `permanently_rejected` - terminal; cannot be re-added on this or any other DIR
            #     you own.
            #
            #   @return [Symbol, Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status, nil]
            optional :status,
                     enum: -> { Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status }

            response_only do
              # @!attribute id
              #
              #   @return [String, nil]
              optional :id, String

              # @!attribute created_at
              #
              #   @return [Time, nil]
              optional :created_at, Time

              # @!attribute updated_at
              #
              #   @return [Time, nil]
              optional :updated_at, Time

              # @!attribute verified_at
              #
              #   @return [Time, nil]
              optional :verified_at, Time, nil?: true
            end

            # @!method initialize(id: nil, batch_id: nil, created_at: nil, dir_id: nil, enterprise_id: nil, loa_document_id: nil, phone_number: nil, rejection_reason: nil, status: nil, updated_at: nil, verified_at: nil)
            #   Some parameter documentations has been truncated, see
            #   {Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber} for
            #   more details.
            #
            #   @param id [String]
            #
            #   @param batch_id [String, nil] Id of the batch this number was vetted as part of.
            #
            #   @param created_at [Time]
            #
            #   @param dir_id [String]
            #
            #   @param enterprise_id [String]
            #
            #   @param loa_document_id [String, nil] Id of the Letter of Authorization document attached to this number's batch.
            #
            #   @param phone_number [String] E.164 with leading `+`.
            #
            #   @param rejection_reason [Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason, nil] Populated when `status` is `unsuccessful` or `permanently_rejected`.
            #
            #   @param status [Symbol, Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::Status] Phone-number lifecycle status.
            #
            #   @param updated_at [Time]
            #
            #   @param verified_at [Time, nil]

            # @see Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber#rejection_reason
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
              #   {Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber::RejectionReason}
              #   for more details.
              #
              #   Populated when `status` is `unsuccessful` or `permanently_rejected`.
              #
              #   @param code [String]
              #
              #   @param detail [String]
              #
              #   @param message [String, nil] Customer-visible free-text comment from the Telnyx vetting team. Only the first
              #
              #   @param title [String]
            end

            # Phone-number lifecycle status.
            #
            # - `submitted` / `in_review` - Telnyx is reviewing the batch this number belongs
            #   to.
            # - `verified` - approved; the DIR's display identity will be shown on outbound
            #   calls from this number.
            # - `unsuccessful` - Telnyx rejected this submission; the customer may re-add to
            #   retry.
            # - `suspended` - temporarily disabled (e.g. by an active infringement claim on
            #   the DIR).
            # - `expired` - verification expired; re-add to renew.
            # - `permanently_rejected` - terminal; cannot be re-added on this or any other DIR
            #   you own.
            #
            # @see Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data::PhoneNumber#status
            module Status
              extend Telnyx::Internal::Type::Enum

              SUBMITTED = :submitted
              IN_REVIEW = :in_review
              VERIFIED = :verified
              UNSUCCESSFUL = :unsuccessful
              SUSPENDED = :suspended
              EXPIRED = :expired
              PERMANENTLY_REJECTED = :permanently_rejected

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end

          # Aggregate batch status. Mirrors the values used on individual phone numbers
          # (`submitted`, `in_review`, `verified`, `unsuccessful`, `permanently_rejected`,
          # etc.).
          #
          # @see Telnyx::Models::Dir::PhoneNumberBatchRetrieveResponse::Data#status
          module Status
            extend Telnyx::Internal::Type::Enum

            SUBMITTED = :submitted
            IN_REVIEW = :in_review
            VERIFIED = :verified
            UNSUCCESSFUL = :unsuccessful
            SUSPENDED = :suspended
            EXPIRED = :expired
            PERMANENTLY_REJECTED = :permanently_rejected

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
