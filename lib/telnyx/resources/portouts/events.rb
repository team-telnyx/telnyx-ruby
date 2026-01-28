# frozen_string_literal: true

module Telnyx
  module Resources
    class Portouts
      class Events
        # Show a specific port-out event.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the port-out event.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Portouts::EventRetrieveResponse]
        #
        # @see Telnyx::Models::Portouts::EventRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["portouts/events/%1$s", id],
            model: Telnyx::Models::Portouts::EventRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Portouts::EventListParams} for more details.
        #
        # Returns a list of all port-out events.
        #
        # @overload list(filter: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::Portouts::EventListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[event_type]
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Portouts::EventListResponse::WebhookPortoutStatusChanged, Telnyx::Models::Portouts::EventListResponse::WebhookPortoutNewComment, Telnyx::Models::Portouts::EventListResponse::WebhookPortoutFocDateChanged>]
        #
        # @see Telnyx::Models::Portouts::EventListParams
        def list(params = {})
          parsed, options = Telnyx::Portouts::EventListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "portouts/events",
            query: parsed.transform_keys(page_number: "page[number]", page_size: "page[size]"),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Portouts::EventListResponse,
            options: options
          )
        end

        # Republish a specific port-out event.
        #
        # @overload republish(id, request_options: {})
        #
        # @param id [String] Identifies the port-out event.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Portouts::EventRepublishParams
        def republish(id, params = {})
          @client.request(
            method: :post,
            path: ["portouts/events/%1$s/republish", id],
            model: NilClass,
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
end
