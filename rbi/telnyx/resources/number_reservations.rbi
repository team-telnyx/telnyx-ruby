# typed: strong

module Telnyx
  module Resources
    class NumberReservations
      sig { returns(Telnyx::Resources::NumberReservations::Actions) }
      attr_reader :actions

      # Creates a Phone Number Reservation for multiple numbers.
      sig do
        params(
          customer_reference: String,
          phone_numbers: T::Array[Telnyx::ReservedPhoneNumber::OrHash],
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberReservationCreateResponse)
      end
      def create(
        # A customer reference string for customer look ups.
        customer_reference: nil,
        phone_numbers: nil,
        request_options: {}
      )
      end

      # Gets a single phone number reservation.
      sig do
        params(
          number_reservation_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NumberReservationRetrieveResponse)
      end
      def retrieve(
        # The number reservation ID.
        number_reservation_id,
        request_options: {}
      )
      end

      # Gets a paginated list of phone number reservations.
      sig do
        params(
          filter: Telnyx::NumberReservationListParams::Filter::OrHash,
          page: Telnyx::NumberReservationListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultPagination[Telnyx::NumberReservation]
        )
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[status],
        # filter[created_at], filter[phone_numbers.phone_number],
        # filter[customer_reference]
        filter: nil,
        # Consolidated page parameter (deepObject style). Originally: page[size],
        # page[number]
        page: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Telnyx::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
