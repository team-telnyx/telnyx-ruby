# typed: strong

module Telnyx
  module Resources
    class PortingPhoneNumbers
      # Returns a list of your porting phone numbers.
      sig do
        params(
          filter: Telnyx::PortingPhoneNumberListParams::Filter::OrHash,
          page: Telnyx::PortingPhoneNumberListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::PortingPhoneNumberListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally:
        # filter[porting_order_status]
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
