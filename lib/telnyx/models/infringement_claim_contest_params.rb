# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InfringementClaims#contest
    class InfringementClaimContestParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute claim_id
      #
      #   @return [String]
      required :claim_id, String

      # @!attribute contest_notes
      #   Customer's response to the claim. 10–2000 characters.
      #
      #   @return [String]
      required :contest_notes, String

      # @!attribute documents
      #   Up to 20 supporting documents per submission. `document_id` must be unique
      #   within this submission. Documents are aggregated into the claim's
      #   `contest_documents` across all submissions.
      #
      #   @return [Array<Telnyx::Models::Document>, nil]
      optional :documents, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::Document] }

      # @!method initialize(claim_id:, contest_notes:, documents: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::InfringementClaimContestParams} for more details.
      #
      #   @param claim_id [String]
      #
      #   @param contest_notes [String] Customer's response to the claim. 10–2000 characters.
      #
      #   @param documents [Array<Telnyx::Models::Document>] Up to 20 supporting documents per submission. `document_id` must be unique withi
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
