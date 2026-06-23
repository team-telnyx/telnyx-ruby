# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::VerificationCodes#verify
      class VerificationCodeVerifyResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Array<Telnyx::Models::PortingOrders::PortingVerificationCode>, nil]
        optional :data, -> { Telnyx::Internal::Type::ArrayOf[Telnyx::PortingOrders::PortingVerificationCode] }

        # @!method initialize(data: nil)
        #   @param data [Array<Telnyx::Models::PortingOrders::PortingVerificationCode>]
      end
    end
  end
end
