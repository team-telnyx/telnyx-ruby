# frozen_string_literal: true

module Telnyx
  module Resources
    class GlobalIPAssignments
      # Create a Global IP assignment.
      #
      # @overload create(global_ip_id: nil, is_in_maintenance: nil, wireguard_peer_id: nil, request_options: {})
      #
      # @param global_ip_id [String] Global IP ID.
      #
      # @param is_in_maintenance [Boolean] Enable/disable BGP announcement.
      #
      # @param wireguard_peer_id [String] Wireguard peer ID.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentCreateResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentCreateParams
      def create(params = {})
        parsed, options = Telnyx::GlobalIPAssignmentCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "global_ip_assignments",
          body: parsed,
          model: Telnyx::Models::GlobalIPAssignmentCreateResponse,
          options: options
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
      # @overload update(id, body:, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param body [Telnyx::Models::GlobalIPAssignmentUpdateParams::Body]
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentUpdateResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentUpdateParams
      def update(id, params)
        parsed, options = Telnyx::GlobalIPAssignmentUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["global_ip_assignments/%1$s", id],
          body: parsed[:body],
          model: Telnyx::Models::GlobalIPAssignmentUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::GlobalIPAssignmentListParams} for more details.
      #
      # List all Global IP assignments.
      #
      # @overload list(page: nil, request_options: {})
      #
      # @param page [Telnyx::Models::GlobalIPAssignmentListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::GlobalIPAssignmentListResponse]
      #
      # @see Telnyx::Models::GlobalIPAssignmentListParams
      def list(params = {})
        parsed, options = Telnyx::GlobalIPAssignmentListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "global_ip_assignments",
          query: parsed,
          model: Telnyx::Models::GlobalIPAssignmentListResponse,
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
