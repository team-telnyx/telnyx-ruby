# typed: strong

module Telnyx
  module Resources
    # Trademark or impersonation claims filed against your DIR. Customers may contest
    # a claim with supporting evidence.
    class InfringementClaims
      # Retrieve a single claim by id. Returns `404` if the claim does not exist or is
      # not against a DIR you own.
      sig do
        params(
          claim_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InfringementClaimRetrieveResponse)
      end
      def retrieve(
        # Claim id (lowercase UUID).
        claim_id,
        request_options: {}
      )
      end

      # Submit a written response and supporting documents disputing the claim. The
      # first call moves the claim from `pending` to `contested`; subsequent calls
      # append supplementary evidence without changing status. The `documents[]` you
      # attach are aggregated across rounds in the claim's `contest_documents` field.
      #
      # Only `pending` and `contested` claims accept new evidence. A `resolved` claim
      # returns `400`.
      #
      # Failure modes:
      #
      # - `400` — the claim is `resolved` (terminal); cannot be contested further.
      # - `404` — the claim does not exist or is not against a DIR you own.
      # - `422` — `contest_notes` is too short (< 10 chars), too long (> 2000 chars),
      #   `documents` is > 20 entries, or a `document_id` is duplicated within the same
      #   submission.
      sig do
        params(
          claim_id: String,
          contest_notes: String,
          documents:
            T::Array[Telnyx::InfringementClaimContestParams::Document::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::InfringementClaimContestResponse)
      end
      def contest(
        claim_id,
        # Customer's response to the claim. 10–2000 characters.
        contest_notes:,
        # Up to 20 supporting documents per submission. `document_id` must be unique
        # within this submission. Documents are aggregated into the claim's
        # `contest_documents` across all submissions.
        documents: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
