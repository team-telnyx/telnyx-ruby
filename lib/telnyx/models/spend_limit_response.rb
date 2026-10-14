# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SpendLimits#create
    class SpendLimitResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   The spend limit, spend and block state of one product and period.
      #
      #   @return [Telnyx::Models::SpendLimit]
      required :data, -> { Telnyx::SpendLimit }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::SpendLimit] The spend limit, spend and block state of one product and period.
    end
  end
end
