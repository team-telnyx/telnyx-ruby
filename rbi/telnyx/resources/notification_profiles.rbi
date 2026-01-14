# typed: strong

module Telnyx
  module Resources
    class NotificationProfiles
      # Create a notification profile.
      sig do
        params(
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationProfileCreateResponse)
      end
      def create(
        # A human readable name.
        name: nil,
        request_options: {}
      )
      end

      # Get a notification profile.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationProfileRetrieveResponse)
      end
      def retrieve(
        # The id of the resource.
        id,
        request_options: {}
      )
      end

      # Update a notification profile.
      sig do
        params(
          notification_profile_id: String,
          name: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationProfileUpdateResponse)
      end
      def update(
        # The id of the resource.
        notification_profile_id,
        # A human readable name.
        name: nil,
        request_options: {}
      )
      end

      # Returns a list of your notifications profiles.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::NotificationProfile]
        )
      end
      def list(page_number: nil, page_size: nil, request_options: {})
      end

      # Delete a notification profile.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::NotificationProfileDeleteResponse)
      end
      def delete(
        # The id of the resource.
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
