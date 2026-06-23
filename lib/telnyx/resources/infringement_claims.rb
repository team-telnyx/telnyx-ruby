# frozen_string_literal: true

module Telnyx
  module Resources
    # Trademark or impersonation claims filed against your DIR. Customers may contest
    # a claim with supporting evidence.
    class InfringementClaims
      # Retrieve a single claim by id. Returns `404` if the claim does not exist or is
      # not against a DIR you own.
      #
      # @overload retrieve(claim_id, request_options: {})
      #
      # @param claim_id [String] Claim id (lowercase UUID).
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InfringementClaimWrapped]
      #
      # @see Telnyx::Models::InfringementClaimRetrieveParams
      def retrieve(claim_id, params = {})
        @client.request(
          method: :get,
          path: ["infringement_claims/%1$s", claim_id],
          model: Telnyx::InfringementClaimWrapped,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::InfringementClaimContestParams} for more details.
      #
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
      # - `400` - the claim is `resolved` (terminal); cannot be contested further.
      # - `404` - the claim does not exist or is not against a DIR you own.
      # - `422` - `contest_notes` is too short (< 10 chars), too long (> 2000 chars),
      #   `documents` is > 20 entries, or a `document_id` is duplicated within the same
      #   submission.
      #
      # @overload contest(claim_id, contest_notes:, documents: nil, request_options: {})
      #
      # @param claim_id [String] Unique identifier of the claim.
      #
      # @param contest_notes [String] Customer's response to the claim. 10–2000 characters.
      #
      # @param documents [Array<Telnyx::Models::Document>] Up to 20 supporting documents per submission. `document_id` must be unique withi
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::InfringementClaimWrapped]
      #
      # @see Telnyx::Models::InfringementClaimContestParams
      def contest(claim_id, params)
        parsed, options = Telnyx::InfringementClaimContestParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["infringement_claims/%1$s/contest", claim_id],
          body: parsed,
          model: Telnyx::InfringementClaimWrapped,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
