# typed: strong

module Telnyx
  module Resources
    class AvailablePhoneNumberBlocks
      # List available phone number blocks
      sig do
        params(
          filter: Telnyx::AvailablePhoneNumberBlockListParams::Filter::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AvailablePhoneNumberBlockListResponse)
      end
      def list(
        # Consolidated filter parameter (deepObject style). Originally: filter[locality],
        # filter[country_code], filter[national_destination_code],
        # filter[phone_number_type]
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
