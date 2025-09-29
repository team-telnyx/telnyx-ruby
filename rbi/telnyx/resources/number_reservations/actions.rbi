# typed: strong

module Telnyx
  module Resources
    class NumberReservations
      class Actions
        # Extends reservation expiry time on all phone numbers.
        sig do
          params(
            number_reservation_id: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::NumberReservations::ActionExtendResponse)
        end
        def extend_(
          # The number reservation ID.
          number_reservation_id,
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
end
