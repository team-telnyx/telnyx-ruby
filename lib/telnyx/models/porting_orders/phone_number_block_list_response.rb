# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberBlocks#list
      class PhoneNumberBlockListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberBlock>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingPhoneNumberBlock] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberBlock>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
