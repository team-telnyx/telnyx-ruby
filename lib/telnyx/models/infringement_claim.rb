# frozen_string_literal: true

module Telnyx
  module Models
    class InfringementClaim < Telnyx::Internal::Type::BaseModel
      # @!attribute claim_description
      #
      #   @return [String, nil]
      optional :claim_description, String

      # @!attribute claim_type
      #   Category of infringement being claimed.
      #
      #   @return [Symbol, Telnyx::Models::InfringementClaim::ClaimType, nil]
      optional :claim_type, enum: -> { Telnyx::InfringementClaim::ClaimType }

      # @!attribute claimant_contact
      #
      #   @return [String, nil]
      optional :claimant_contact, String

      # @!attribute claimant_name
      #
      #   @return [String, nil]
      optional :claimant_name, String

      # @!attribute contest_documents
      #   Aggregated across all customer contest submissions on this claim.
      #
      #   @return [Array<Telnyx::Models::Document>, nil]
      optional :contest_documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Document] }

      # @!attribute dir
      #   Snapshot of the DIR the claim is filed against, embedded for convenience.
      #
      #   @return [Telnyx::Models::InfringementClaim::Dir, nil]
      optional :dir, -> { Telnyx::InfringementClaim::Dir }

      # @!attribute dir_id
      #
      #   @return [String, nil]
      optional :dir_id, String

      # @!attribute enterprise_id
      #
      #   @return [String, nil]
      optional :enterprise_id, String

      # @!attribute resolution
      #   Set only when `status` is `resolved`.
      #
      #   @return [Symbol, Telnyx::Models::InfringementClaim::Resolution, nil]
      optional :resolution, enum: -> { Telnyx::InfringementClaim::Resolution }, nil?: true

      # @!attribute status
      #   Lifecycle status. `pending` - newly filed; the DIR is auto-suspended.
      #   `contested` - you have submitted contest evidence; awaiting Telnyx review.
      #   `resolved` - final.
      #
      #   @return [Symbol, Telnyx::Models::InfringementClaim::Status, nil]
      optional :status, enum: -> { Telnyx::InfringementClaim::Status }

      response_only do
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute claim_date
        #   When the claim was filed (set by the claimant's representative at file time).
        #
        #   @return [Time, nil]
        optional :claim_date, Time

        # @!attribute contest_history
        #   Per-round submission audit trail. Each entry records one
        #   `POST /infringement_claims/{id}/contest` call (notes, timestamp, document
        #   count). Aggregated documents live on `contest_documents`.
        #
        #   @return [Array<Telnyx::Models::InfringementClaim::ContestHistory>, nil]
        optional :contest_history,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::InfringementClaim::ContestHistory] }

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute resolution_date
        #
        #   @return [Time, nil]
        optional :resolution_date, Time, nil?: true

        # @!attribute resolution_notes
        #
        #   @return [String, nil]
        optional :resolution_notes, String, nil?: true

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time
      end

      # @!method initialize(id: nil, claim_date: nil, claim_description: nil, claim_type: nil, claimant_contact: nil, claimant_name: nil, contest_documents: nil, contest_history: nil, created_at: nil, dir: nil, dir_id: nil, enterprise_id: nil, resolution: nil, resolution_date: nil, resolution_notes: nil, status: nil, updated_at: nil)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::InfringementClaim} for more details.
      #
      #   @param id [String]
      #
      #   @param claim_date [Time] When the claim was filed (set by the claimant's representative at file time).
      #
      #   @param claim_description [String]
      #
      #   @param claim_type [Symbol, Telnyx::Models::InfringementClaim::ClaimType] Category of infringement being claimed.
      #
      #   @param claimant_contact [String]
      #
      #   @param claimant_name [String]
      #
      #   @param contest_documents [Array<Telnyx::Models::Document>] Aggregated across all customer contest submissions on this claim.
      #
      #   @param contest_history [Array<Telnyx::Models::InfringementClaim::ContestHistory>] Per-round submission audit trail. Each entry records one `POST /infringement_cla
      #
      #   @param created_at [Time]
      #
      #   @param dir [Telnyx::Models::InfringementClaim::Dir] Snapshot of the DIR the claim is filed against, embedded for convenience.
      #
      #   @param dir_id [String]
      #
      #   @param enterprise_id [String]
      #
      #   @param resolution [Symbol, Telnyx::Models::InfringementClaim::Resolution, nil] Set only when `status` is `resolved`.
      #
      #   @param resolution_date [Time, nil]
      #
      #   @param resolution_notes [String, nil]
      #
      #   @param status [Symbol, Telnyx::Models::InfringementClaim::Status] Lifecycle status. `pending` - newly filed; the DIR is auto-suspended. `contested
      #
      #   @param updated_at [Time]

      # Category of infringement being claimed.
      #
      # @see Telnyx::Models::InfringementClaim#claim_type
      module ClaimType
        extend Telnyx::Internal::Type::Enum

        TRADEMARK = :trademark
        COPYRIGHT = :copyright

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class ContestHistory < Telnyx::Internal::Type::BaseModel
        # @!attribute notes
        #
        #   @return [String, nil]
        optional :notes, String

        response_only do
          # @!attribute document_count
          #
          #   @return [Integer, nil]
          optional :document_count, Integer

          # @!attribute submitted_at
          #
          #   @return [Time, nil]
          optional :submitted_at, Time
        end

        # @!method initialize(document_count: nil, notes: nil, submitted_at: nil)
        #   One round of customer contest evidence on an infringement claim. The aggregated
        #   documents across rounds live on the parent claim's `contest_documents`; this
        #   submission record carries only the per-round notes and document count.
        #
        #   @param document_count [Integer]
        #   @param notes [String]
        #   @param submitted_at [Time]
      end

      # @see Telnyx::Models::InfringementClaim#dir
      class Dir < Telnyx::Internal::Type::BaseModel
        # @!attribute display_name
        #
        #   @return [String, nil]
        optional :display_name, String

        # @!attribute enterprise_id
        #
        #   @return [String, nil]
        optional :enterprise_id, String

        # @!attribute status
        #   DIR lifecycle status.
        #
        #   - `draft` - newly created; editable; not yet submitted.
        #   - `submitted` / `in_review` - Telnyx is reviewing.
        #   - `verified` - approved; phone numbers may be attached.
        #   - `rejected` - Telnyx rejected this submission; `rejection_reasons` is
        #     populated; customer can edit and resubmit.
        #   - `unsuccessful` - system-side error during processing; customer can edit and
        #     resubmit.
        #   - `suspended` - temporarily disabled (e.g. by an active infringement claim).
        #   - `expired` - verification expired; customer must resubmit.
        #   - `infringement_claimed` - a trademark/impersonation claim is open against this
        #     DIR.
        #   - `permanently_rejected` - terminal; cannot be resubmitted.
        #
        #   @return [Symbol, Telnyx::Models::DirStatus, nil]
        optional :status, enum: -> { Telnyx::DirStatus }

        response_only do
          # @!attribute id
          #
          #   @return [String, nil]
          optional :id, String
        end

        # @!method initialize(id: nil, display_name: nil, enterprise_id: nil, status: nil)
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::InfringementClaim::Dir} for more details.
        #
        #   Snapshot of the DIR the claim is filed against, embedded for convenience.
        #
        #   @param id [String]
        #
        #   @param display_name [String]
        #
        #   @param enterprise_id [String]
        #
        #   @param status [Symbol, Telnyx::Models::DirStatus] DIR lifecycle status.
      end

      # Set only when `status` is `resolved`.
      #
      # @see Telnyx::Models::InfringementClaim#resolution
      module Resolution
        extend Telnyx::Internal::Type::Enum

        UPHELD = :upheld
        REJECTED = :rejected
        MODIFIED = :modified

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Lifecycle status. `pending` - newly filed; the DIR is auto-suspended.
      # `contested` - you have submitted contest evidence; awaiting Telnyx review.
      # `resolved` - final.
      #
      # @see Telnyx::Models::InfringementClaim#status
      module Status
        extend Telnyx::Internal::Type::Enum

        PENDING = :pending
        CONTESTED = :contested
        RESOLVED = :resolved

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
