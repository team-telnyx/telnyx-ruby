# typed: strong

module Telnyx
  module Resources
    # Global IPs
    class GlobalIPAssignments
      # Assigns a Global IP to a WireGuard peer so traffic destined for the IP is
      # delivered over that peer's tunnel. Assignment is asynchronous, so the request is
      # accepted and completes in the background.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::GlobalIPAssignmentCreateResponse
        )
      end
      def create(request_options: {})
      end

      # Returns the details of a single Global IP assignment, including the Global IP
      # and WireGuard peer it links.
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

      # Updates the specified Global IP assignment with the provided fields and returns
      # the updated assignment.
      sig do
        params(
          global_ip_assignment_id: String,
          global_ip_assignment_update_request:
            Telnyx::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest::OrHash,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::GlobalIPAssignmentUpdateResponse)
      end
      def update(
        # Identifies the resource.
        global_ip_assignment_id,
        global_ip_assignment_update_request:,
        request_options: {}
      )
      end

      # Returns a paginated list of your Global IP assignments, the links between Global
      # IPs and the WireGuard peers that receive their traffic.
      sig do
        params(
          page_number: Integer,
          page_size: Integer,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(
          Telnyx::Internal::DefaultFlatPagination[Telnyx::GlobalIPAssignment]
        )
      end
      def list(page_number: nil, page_size: nil, request_options: {})
      end

      # Deletes the specified Global IP assignment, detaching the Global IP from its
      # WireGuard peer.
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
