# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberExtensions#list
      class PhoneNumberExtensionListResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberExtension>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingPhoneNumberExtension] }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PaginationMeta, nil]
        optional :meta, -> { Telnyx::PaginationMeta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberExtension>]
        #   @param meta [Telnyx::Models::PaginationMeta]
      end
    end
  end
end
