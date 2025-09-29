# typed: strong

module Telnyx
  module Resources
    class GlobalIPAssignments
      # Create a Global IP assignment.
      sig do
        params(
          global_ip_id: String,
          is_in_maintenance: T::Boolean,
          wireguard_peer_id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPAssignmentCreateResponse)
      end
      def create(
        # Global IP ID.
        global_ip_id: nil,
        # Enable/disable BGP announcement.
        is_in_maintenance: nil,
        # Wireguard peer ID.
        wireguard_peer_id: nil,
        request_options: {}
      )
      end

      # Retrieve a Global IP assignment.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPAssignmentRetrieveResponse)
      end
      def retrieve(
        # Identifies the resource.
        id,
        request_options: {}
      )
      end

      # Update a Global IP assignment.
      sig do
        params(
          id: String,
          body: Telnyx::GlobalIPAssignmentUpdateParams::Body::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPAssignmentUpdateResponse)
      end
      def update(
        # Identifies the resource.
        id,
        body:,
        request_options: {}
      )
      end

      # List all Global IP assignments.
      sig do
        params(
          page: Telnyx::GlobalIPAssignmentListParams::Page::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPAssignmentListResponse)
      end
      def list(
        # Consolidated page parameter (deepObject style). Originally: page[number],
        # page[size]
        page: nil,
        request_options: {}
      )
      end

      # Delete a Global IP assignment.
      sig do
        params(
          id: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPAssignmentDeleteResponse)
      end
      def delete(
        # Identifies the resource.
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
