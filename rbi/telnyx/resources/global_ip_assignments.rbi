# typed: strong

module Telnyx
  module Resources
    class GlobalIPAssignments
      # Create a Global IP assignment.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::GlobalIPAssignmentCreateResponse
        )
      end
      def create(request_options: {})
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

      # List all Global IP assignments.
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
