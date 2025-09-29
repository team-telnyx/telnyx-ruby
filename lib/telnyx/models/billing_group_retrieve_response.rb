# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BillingGroups#retrieve
    class BillingGroupRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::BillingGroup, nil]
      optional :data, -> { Telnyx::BillingGroup }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::BillingGroup]
    end
  end
end
