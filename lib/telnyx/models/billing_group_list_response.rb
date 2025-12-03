# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::BillingGroups#list
    class BillingGroupListResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Telnyx::Models::BillingGroup>, nil]
      optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::BillingGroup] }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PaginationMeta, nil]
      optional :meta, -> { Telnyx::PaginationMeta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Array<Telnyx::Models::BillingGroup>]
      #   @param meta [Telnyx::Models::PaginationMeta]
    end
  end
end
