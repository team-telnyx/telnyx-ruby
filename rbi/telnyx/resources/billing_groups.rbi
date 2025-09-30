# typed: strong

module Telnyx
  module Resources
    class BillingGroups
      # Create a billing group
      sig do
        params(
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BillingGroupCreateResponse)
      end
      def create(
        # A name for the billing group
        name: nil,
        request_options: {}
      )
      end

      # Get a billing group
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BillingGroupRetrieveResponse)
      end
      def retrieve(
        # The id of the billing group
        id,
        request_options: {}
      )
      end

      # Update a billing group
      sig do
        params(
          id: String,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BillingGroupUpdateResponse)
      end
      def update(
        # The id of the billing group
        id,
        # A name for the billing group
        name: nil,
        request_options: {}
      )
      end

      # List all billing groups
      sig do
        params(
          page: Telnyx::BillingGroupListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BillingGroupListResponse)
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Delete a billing group
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::BillingGroupDeleteResponse)
      end
      def delete(
        # The id of the billing group
        id,
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
