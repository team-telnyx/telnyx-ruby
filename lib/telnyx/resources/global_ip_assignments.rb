# frozen_string_literal: true

module Telnyx
  module Resources
    # Global IPs
    class GlobalIPAssignments
      # Assigns a Global IP to a WireGuard peer so traffic destined for the IP is
      # delivered over that peer's tunnel. Assignment is asynchronous, so the request is
      # accepted and completes in the background.
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

      # Returns the details of a single Global IP assignment, including the Global IP
      # and WireGuard peer it links.
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

      # Updates the specified Global IP assignment with the provided fields and returns
      # the updated assignment.
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

      # Returns a paginated list of your Global IP assignments, the links between Global
      # IPs and the WireGuard peers that receive their traffic.
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
        query = Telnyx::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "global_ip_assignments",
          query: query.transform_keys(page_number: "page[number]", page_size: "page[size]"),
          page: Telnyx::Internal::DefaultFlatPagination,
          model: Telnyx::GlobalIPAssignment,
          options: options
        )
      end

      # Deletes the specified Global IP assignment, detaching the Global IP from its
      # WireGuard peer.
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
