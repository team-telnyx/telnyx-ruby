# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::Actions#cancel
      class ActionCancelResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrder, nil]
        optional :data, -> { Telnyx::PortingOrder }

        # @!attribute meta
        #
        #   @return [Telnyx::Models::PortingOrders::ActionCancelResponse::Meta, nil]
        optional :meta, -> { Telnyx::Models::PortingOrders::ActionCancelResponse::Meta }

        # @!method initialize(data: nil, meta: nil)
        #   @param data [Telnyx::Models::PortingOrder]
        #   @param meta [Telnyx::Models::PortingOrders::ActionCancelResponse::Meta]

        # @see Telnyx::Models::PortingOrders::ActionCancelResponse#meta
        class Meta < Telnyx::Internal::Type::BaseModel
          # @!attribute phone_numbers_url
          #   Link to list all phone numbers
          #
          #   @return [String, nil]
          optional :phone_numbers_url, String

          # @!method initialize(phone_numbers_url: nil)
          #   @param phone_numbers_url [String] Link to list all phone numbers
        end
      end
    end
  end
end
