# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::PhoneNumberConfigurations#create
      class PhoneNumberConfigurationCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberConfiguration>, nil]
        optional :data,
                 -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingPhoneNumberConfiguration] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::PortingOrders::PortingPhoneNumberConfiguration>]
      end
    end
  end
end
