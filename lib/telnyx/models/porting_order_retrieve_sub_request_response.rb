# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::PortingOrders#retrieve_sub_request
    class PortingOrderRetrieveSubRequestResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data, nil]
      optional :data, -> { Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::PortingOrderRetrieveSubRequestResponse::Data]

      # @see Telnyx::Models::PortingOrderRetrieveSubRequestResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute port_request_id
        #   Identifies the Port Request associated with the Porting Order
        #
        #   @return [String, nil]
        optional :port_request_id, String

        # @!attribute sub_request_id
        #   Identifies the Sub Request associated with the Porting Order
        #
        #   @return [String, nil]
        optional :sub_request_id, String

        # @!method initialize(port_request_id: nil, sub_request_id: nil)
        #   @param port_request_id [String] Identifies the Port Request associated with the Porting Order
        #
        #   @param sub_request_id [String] Identifies the Sub Request associated with the Porting Order
      end
    end
  end
end
