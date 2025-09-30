# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberBlocks#create
      class PhoneNumberBlockCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrders::PortingPhoneNumberBlock, nil]
        optional :data, -> { Telnyx::PortingOrders::PortingPhoneNumberBlock }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrders::PortingPhoneNumberBlock]
      end
    end
  end
end
