# frozen_string_literal: true

module Telnyx
  module Models
    module Dir
      # @see Telnyx::Resources::Dir::PhoneNumbers#list
      class DirPhoneNumber < Telnyx::Internal::Type::BaseModel
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
        #   @return [Telnyx::Models::Dir::RejectionReason, nil]
        optional :rejection_reason, -> { Telnyx::Dir::RejectionReason }, nil?: true

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
        #   @return [Symbol, Telnyx::Models::Dir::DirPhoneNumberStatus, nil]
        optional :status, enum: -> { Telnyx::Dir::DirPhoneNumberStatus }

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
        #   {Telnyx::Models::Dir::DirPhoneNumber} for more details.
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
        #   @param rejection_reason [Telnyx::Models::Dir::RejectionReason, nil] Populated when `status` is `unsuccessful` or `permanently_rejected`.
        #
        #   @param status [Symbol, Telnyx::Models::Dir::DirPhoneNumberStatus] Phone-number lifecycle status.
        #
        #   @param updated_at [Time]
        #
        #   @param verified_at [Time, nil]
      end
    end

    DirPhoneNumber = Dir::DirPhoneNumber
  end
end
