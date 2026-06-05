# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InfringementClaims#retrieve
    class InfringementClaimRetrieveParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute claim_id
      #
      #   @return [String]
      required :claim_id, String

      # @!method initialize(claim_id:, request_options: {})
      #   @param claim_id [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
