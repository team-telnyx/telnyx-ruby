# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::InfringementClaims#retrieve
    class InfringementClaimWrapped < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::InfringementClaim]
      required :data, -> { Telnyx::InfringementClaim }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::InfringementClaim]
    end
  end
end
