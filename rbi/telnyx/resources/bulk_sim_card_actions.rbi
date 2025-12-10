# typed: strong

module Telnyx
  module Resources
    class BulkSimCardActions
      # This API fetches information about a bulk SIM card action. A bulk SIM card
      # action contains details about a collection of individual SIM card actions.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BulkSimCardActionRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # This API lists a paginated collection of bulk SIM card actions. A bulk SIM card
      # action contains details about a collection of individual SIM card actions.
      sig do
        params(
          filter_action_type:
            Telnyx::BulkSimCardActionListParams::FilterActionType::OrSymbol,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BulkSimCardActionListResponse)
      end
      def list(
        # Filter by action type.
        filter_action_type: nil,
        # The page number to load.
        page_number: nil,
        # The size of the page.
        page_size: nil,
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
