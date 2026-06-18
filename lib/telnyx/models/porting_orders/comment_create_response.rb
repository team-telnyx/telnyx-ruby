# frozen_string_literal: true

module Telnyx
  module Models
    module PortingOrders
      # @see Telnyx::Resources::PortingOrders::Comments#create
      class CommentCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::PortingOrders::PortingOrdersComment, nil]
        optional :data, -> { Telnyx::PortingOrders::PortingOrdersComment }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::PortingOrders::PortingOrdersComment]
      end
    end
  end
end
