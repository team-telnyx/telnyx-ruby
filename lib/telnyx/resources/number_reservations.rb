# frozen_string_literal: true

module Telnyx
  module Resources
    class NumberReservations
      # @return [Telnyx::Resources::NumberReservations::Actions]
      attr_reader :actions

      # Creates a Phone Number Reservation for multiple numbers.
      #
      # @overload create(customer_reference: nil, phone_numbers: nil, request_options: {})
      #
      # @param customer_reference [String] A customer reference string for customer look ups.
      #
      # @param phone_numbers [Array<Telnyx::Models::ReservedPhoneNumber>]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberReservationCreateResponse]
      #
      # @see Telnyx::Models::NumberReservationCreateParams
      def create(params = {})
        parsed, options = Telnyx::NumberReservationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "number_reservations",
          body: parsed,
          model: Telnyx::Models::NumberReservationCreateResponse,
          options: options
        )
      end

      # Gets a single phone number reservation.
      #
      # @overload retrieve(number_reservation_id, request_options: {})
      #
      # @param number_reservation_id [String] The number reservation ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberReservationRetrieveResponse]
      #
      # @see Telnyx::Models::NumberReservationRetrieveParams
      def retrieve(number_reservation_id, params = {})
        @client.request(
          method: :get,
          path: ["number_reservations/%1$s", number_reservation_id],
          model: Telnyx::Models::NumberReservationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::NumberReservationListParams} for more details.
      #
      # Gets a paginated list of phone number reservations.
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::NumberReservationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[status], fi
      #
      # @param page [Telnyx::Models::NumberReservationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::NumberReservationListResponse]
      #
      # @see Telnyx::Models::NumberReservationListParams
      def list(params = {})
        parsed, options = Telnyx::NumberReservationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "number_reservations",
          query: parsed,
          model: Telnyx::Models::NumberReservationListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @actions = Telnyx::Resources::NumberReservations::Actions.new(client: client)
      end
    end
  end
end
