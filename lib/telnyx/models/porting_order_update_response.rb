# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#update
    class PortingOrderUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PortingOrder, nil]
      optional :data, -> { Telnyx::PortingOrder }

      # @!attribute meta
      #
      #   @return [Telnyx::Models::PortingOrderUpdateResponse::Meta, nil]
      optional :meta, -> { Telnyx::Models::PortingOrderUpdateResponse::Meta }

      # @!method initialize(data: nil, meta: nil)
      #   @param data [Telnyx::Models::PortingOrder]
      #   @param meta [Telnyx::Models::PortingOrderUpdateResponse::Meta]

      # @see Telnyx::Models::PortingOrderUpdateResponse#meta
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
