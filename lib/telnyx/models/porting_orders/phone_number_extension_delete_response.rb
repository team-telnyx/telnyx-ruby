# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberExtensions#delete
      class PhoneNumberExtensionDeleteResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrders::PortingPhoneNumberExtension, nil]
        optional :data, -> { Telnyx::PortingOrders::PortingPhoneNumberExtension }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrders::PortingPhoneNumberExtension]
      end
    end
  end
end
