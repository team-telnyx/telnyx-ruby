# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPAssignments
      # Create a Global IP assignment.
      #
      # @overload create(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentCreateResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentCreateParams
      def create(params = {})
        @client.request(
          method: :post,
          path: "global_ip_assignments",
          model: Telnyx::Models::GlobalIPAssignmentCreateResponse,
          options: params[:request_options]
        )
      end

      # Retrieve a Global IP assignment.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentRetrieveResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["global_ip_assignments/%1$s", id],
          model: Telnyx::Models::GlobalIPAssignmentRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Update a Global IP assignment.
      #
      # @overload update(global_ip_assignment_id, global_ip_assignment_update_request:, request_options: {})
      #
      # @param global_ip_assignment_id [String] Identifies the resource.
      #
      # @param global_ip_assignment_update_request [Telnyx::Models::GlobalIPAssignmentUpdateParams::GlobalIPAssignmentUpdateRequest]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentUpdateResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentUpdateParams
      def update(global_ip_assignment_id, params)
        parsed, options = Telnyx::GlobalIPAssignmentUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["global_ip_assignments/%1$s", global_ip_assignment_id],
          body: parsed[:global_ip_assignment_update_request],
          model: Telnyx::Models::GlobalIPAssignmentUpdateResponse,
          options: options
        )
      end

      # List all Global IP assignments.
      #
      # @overload list(page_number: nil, page_size: nil, request_options: {})
      #
      # @param page_number [Integer]
      # @param page_size [Integer]
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::GlobalIPAssignment>]
      #
      # @see Telnyx::Models::GlobalIPAssignmentListParams
      def list(params = {})
        parsed, options = Telnyx::GlobalIPAssignmentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "global_ip_assignments",
          query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::GlobalIPAssignment,
          options: options
        )
      end

      # Delete a Global IP assignment.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentDeleteResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["global_ip_assignments/%1$s", id],
          model: Telnyx::Models::GlobalIPAssignmentDeleteResponse,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
