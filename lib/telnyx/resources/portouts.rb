# frozen_string_literal: true

module Telnyx
  module Resources
    class Portouts
      # @return [Telnyx::Resources::Portouts::Events]
      attr_reader :events

      # @return [Telnyx::Resources::Portouts::Reports]
      attr_reader :reports

      # @return [Telnyx::Resources::Portouts::Comments]
      attr_reader :comments

      # @return [Telnyx::Resources::Portouts::SupportingDocuments]
      attr_reader :supporting_documents

      # Returns the portout request based on the ID provided
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Portout id
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortoutRetrieveResponse]
      #
      # @see Telnyx::Models::PortoutRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["portouts/%1$s", id],
          model: Telnyx::Models::PortoutRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortoutListParams} for more details.
      #
      # Returns the portout requests according to filters
      #
      # @overload list(filter: nil, page: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::PortoutListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[carrier_nam
      #
      # @param page [Telnyx::Models::PortoutListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::PortoutDetails>]
      #
      # @see Telnyx::Models::PortoutListParams
      def list(params = {})
        parsed, options = Telnyx::PortoutListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "portouts",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::PortoutDetails,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortoutListRejectionCodesParams} for more details.
      #
      # Given a port-out ID, list rejection codes that are eligible for that port-out
      #
      # @overload list_rejection_codes(portout_id, filter: nil, request_options: {})
      #
      # @param portout_id [String] Identifies a port out order.
      #
      # @param filter [Telnyx::Models::PortoutListRejectionCodesParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[code], filt
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortoutListRejectionCodesResponse]
      #
      # @see Telnyx::Models::PortoutListRejectionCodesParams
      def list_rejection_codes(portout_id, params = {})
        parsed, options = Telnyx::PortoutListRejectionCodesParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["portouts/rejections/%1$s", portout_id],
          query: parsed,
          model: Telnyx::Models::PortoutListRejectionCodesResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::PortoutUpdateStatusParams} for more details.
      #
      # Authorize or reject portout request
      #
      # @overload update_status(status, id:, reason:, host_messaging: nil, request_options: {})
      #
      # @param status [Symbol, Telnyx::Models::PortoutUpdateStatusParams::Status] Path param: Updated portout status
      #
      # @param id [String] Path param: Portout id
      #
      # @param reason [String] Body param: Provide a reason if rejecting the port out request
      #
      # @param host_messaging [Boolean] Body param: Indicates whether messaging services should be maintained with Telny
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::PortoutUpdateStatusResponse]
      #
      # @see Telnyx::Models::PortoutUpdateStatusParams
      def update_status(status, params)
        parsed, options = Telnyx::PortoutUpdateStatusParams.dump_request(params)
        id =
          parsed.delete(:id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["portouts/%1$s/%2$s", id, status],
          body: parsed,
          model: Telnyx::Models::PortoutUpdateStatusResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [Telnyx::Client]
      def initialize(client:)
        @client = client
        @events = Telnyx::Resources::Portouts::Events.new(client: client)
        @reports = Telnyx::Resources::Portouts::Reports.new(client: client)
        @comments = Telnyx::Resources::Portouts::Comments.new(client: client)
        @supporting_documents = Telnyx::Resources::Portouts::SupportingDocuments.new(client: client)
      end
    end
  end
end
