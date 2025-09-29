# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AssociatedPhoneNumbers#list
      class AssociatedPhoneNumberListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingAssociatedPhoneNumber] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
