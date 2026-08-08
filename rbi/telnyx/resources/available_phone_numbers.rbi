# typed: strong

module Telnyx
  module Resources
    # Number search
    class AvailablePhoneNumbers
      # Searches the Telnyx inventory for available phone numbers. Filters support
      # number patterns, location, number type, features, reservability, and other
      # inventory constraints; the response includes matching numbers and search
      # metadata.
      sig do
        params(
          filter: Telnyx::AvailablePhoneNumberListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AvailablePhoneNumberListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[phone_number], filter[locality], filter[administrative_area],
        # filter[country_code], filter[national_destination_code], filter[rate_center],
        # filter[phone_number_type], filter[features], filter[limit], filter[best_effort],
        # filter[quickship], filter[reservable], filter[exclude_held_numbers]
        filter: nil,
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
