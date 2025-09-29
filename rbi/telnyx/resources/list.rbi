# typed: strong

module Telnyx
  module Resources
    class List
      # Retrieve a list of all phone numbers using Channel Billing, grouped by Zone.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::ListRetrieveAllResponse
        )
      end
      def retrieve_all(request_options: {})
      end

      # Retrieve a list of phone numbers using Channel Billing for a specific Zone.
      sig do
        params(
          channel_zone_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::ListRetrieveByZoneResponse)
      end
      def retrieve_by_zone(
        # Channel zone identifier
        channel_zone_id,
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
