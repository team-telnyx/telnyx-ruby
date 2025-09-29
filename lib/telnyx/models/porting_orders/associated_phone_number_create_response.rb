# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::AssociatedPhoneNumbers#create
      class AssociatedPhoneNumberCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber, nil]
        optional :data, -> { Telnyx::PortingOrders::PortingAssociatedPhoneNumber }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrders::PortingAssociatedPhoneNumber]
      end
    end
  end
end
