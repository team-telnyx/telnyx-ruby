# typed: strong

module Telnyx
  module Resources
    class AlphanumericSenderIDs
      # Create a new alphanumeric sender ID associated with a messaging profile.
      sig do
        params(
          alphanumeric_sender_id: String,
          messaging_profile_id: String,
          us_long_code_fallback: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AlphanumericSenderIDCreateResponse)
      end
      def create(
        # The alphanumeric sender ID string.
        alphanumeric_sender_id:,
        # The messaging profile to associate the sender ID with.
        messaging_profile_id:,
        # A US long code number to use as fallback when sending to US destinations.
        us_long_code_fallback: nil,
        request_options: {}
      )
      end

      # Retrieve a specific alphanumeric sender ID.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AlphanumericSenderIDRetrieveResponse)
      end
      def retrieve(
        # The identifier of the alphanumeric sender ID.
        id,
        request_options: {}
      )
      end

      # List all alphanumeric sender IDs for the authenticated user.
      sig do
        params(
          filter_messaging_profile_id: String,
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[
            Telnyx::Models::AlphanumericSenderIDListResponse
          ]
        )
      end
      def list(
        # Filter by messaging profile ID.
        filter_messaging_profile_id: nil,
        # Page number.
        page_number: nil,
        # Page size.
        page_size: nil,
        request_options: {}
      )
      end

      # Delete an alphanumeric sender ID and disassociate it from its messaging profile.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::AlphanumericSenderIDDeleteResponse)
      end
      def delete(
        # The identifier of the alphanumeric sender ID.
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
