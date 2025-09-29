# frozen_string_literal: true

module Telnyx
  module Resources
    class NumberReservations
      class Actions
        # Extends reservation expiry time on all phone numbers.
        #
        # @overload extend_(number_reservation_id, request_options: {})
        #
        # @param number_reservation_id [String] The number reservation ID.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::NumberReservations::ActionExtendResponse]
        #
        # @see Telnyx::Models::NumberReservations::ActionExtendParams
        def extend_(number_reservation_id, params = {})
          @client.request(
            method: :post,
            path: ["number_reservations/%1$s/actions/extend", number_reservation_id],
            model: Telnyx::Models::NumberReservations::ActionExtendResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [Telnyx::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
