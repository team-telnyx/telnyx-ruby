# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumbers#add
      class PhoneNumberAddResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #   Phone numbers accepted into the new batch. List order mirrors the request order.
        #   Each element shares the same `batch_id`.
        #
        #   @return [Array<Telnyx::Models::Dir::PhoneNumberAddResponse::Data>]
        required :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Models::Dir::PhoneNumberAddResponse::Data] }

        # @!method initialize(data:)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Dir::PhoneNumberAddResponse} for more details.
        #
        #   Bulk-add success response (HTTP 201). All numbers in the request were accepted
        #   into a single new batch. Every entry in `data` shares the same `batch_id` — read
        #   it from any element to obtain the batch id for subsequent
        #   `GET .../phone_number_batches/{batch_id}` calls. If any number in the request
        #   fails (schema-invalid, not in inventory, already attached to another DIR, etc.)
        #   the entire request is rejected with HTTP 400 and the canonical Telnyx error
        #   envelope; the success body described here is therefore an all-or-nothing
        #   payload.
        #
        #   @param data [Array<Telnyx::Models::Dir::PhoneNumberAddResponse::Data>] Phone numbers accepted into the new batch. List order mirrors the request order.

        class Data < Telnyx::Internal::Type::BaseModel
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
          #   @return [Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason, nil]
          optional :rejection_reason,
                   -> { Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason },
                   nil?: true

          # @!attribute status
          #   Phone-number lifecycle status.
          #
          #   - `submitted` / `in_review` — Telnyx is reviewing the batch this number belongs
          #     to.
          #   - `verified` — approved; the DIR's display identity will be shown on outbound
          #     calls from this number.
          #   - `unsuccessful` — Telnyx rejected this submission; the customer may re-add to
          #     retry.
          #   - `suspended` — temporarily disabled (e.g. by an active infringement claim on
          #     the DIR).
          #   - `expired` — verification expired; re-add to renew.
          #   - `permanently_rejected` — terminal; cannot be re-added on this or any other DIR
          #     you own.
          #
          #   @return [Symbol, Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status, nil]
          optional :status, enum: -> { Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status }

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
          #   {Telnyx::Models::Dir::PhoneNumberAddResponse::Data} for more details.
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
          #   @param rejection_reason [Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason, nil] Populated when `status` is `unsuccessful` or `permanently_rejected`.
          #
          #   @param status [Symbol, Telnyx::Models::Dir::PhoneNumberAddResponse::Data::Status] Phone-number lifecycle status.
          #
          #   @param updated_at [Time]
          #
          #   @param verified_at [Time, nil]

          # @see Telnyx::Models::Dir::PhoneNumberAddResponse::Data#rejection_reason
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
            #   {Telnyx::Models::Dir::PhoneNumberAddResponse::Data::RejectionReason} for more
            #   details.
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
          # - `submitted` / `in_review` — Telnyx is reviewing the batch this number belongs
          #   to.
          # - `verified` — approved; the DIR's display identity will be shown on outbound
          #   calls from this number.
          # - `unsuccessful` — Telnyx rejected this submission; the customer may re-add to
          #   retry.
          # - `suspended` — temporarily disabled (e.g. by an active infringement claim on
          #   the DIR).
          # - `expired` — verification expired; re-add to renew.
          # - `permanently_rejected` — terminal; cannot be re-added on this or any other DIR
          #   you own.
          #
          # @see Telnyx::Models::Dir::PhoneNumberAddResponse::Data#status
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
