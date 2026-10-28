# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpendLimits#create
    class SpendLimitResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   The spend limit, spend and block state of one product and period. The top-level
      #   fields describe the total limit of the account; API key limits are nested in
      #   `credential_limits`.
      #
      #   @return [Telnyx::Models::SpendLimit]
      required :data, -> { Telnyx::SpendLimit }

      # @!method initialize(data:)
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::SpendLimitResponse} for more details.
      #
      #   @param data [Telnyx::Models::SpendLimit] The spend limit, spend and block state of one product and period. The top-level
    end
  end
end
