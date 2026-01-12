# frozen_string_literal: true

module Telnyx
  module Resources
    class Porting
      class Events
        # Show a specific porting event.
        #
        # @overload retrieve(id, request_options: {})
        #
        # @param id [String] Identifies the porting event.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Porting::EventRetrieveResponse]
        #
        # @see Telnyx::Models::Porting::EventRetrieveParams
        def retrieve(id, params = {})
          @client.request(
            method: :get,
            path: ["porting/events/%1$s", id],
            model: Telnyx::Models::Porting::EventRetrieveResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Porting::EventListParams} for more details.
        #
        # Returns a list of all porting events.
        #
        # @overload list(filter: nil, page: nil, request_options: {})
        #
        # @param filter [Telnyx::Models::Porting::EventListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[type], filt
        #
        # @param page [Telnyx::Models::Porting::EventListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::Porting::EventListResponse::PortingEventDeletedPayload, Telnyx::Models::Porting::EventListResponse::PortingEventMessagingChangedPayload, Telnyx::Models::Porting::EventListResponse::PortingEventStatusChangedEvent, Telnyx::Models::Porting::EventListResponse::PortingEventNewCommentEvent, Telnyx::Models::Porting::EventListResponse::PortingEventSplitEvent, Telnyx::Models::Porting::EventListResponse::PortingEventWithoutWebhook>]
        #
        # @see Telnyx::Models::Porting::EventListParams
        def list(params = {})
          parsed, options = Telnyx::Porting::EventListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "porting/events",
            query: parsed,
            page: Telnyx::Internal::DefaultPagination,
            model: Telnyx::Models::Porting::EventListResponse,
            options: options
          )
        end

        # Republish a specific porting event.
        #
        # @overload republish(id, request_options: {})
        #
        # @param id [String] Identifies the porting event.
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see Telnyx::Models::Porting::EventRepublishParams
        def republish(id, params = {})
          @client.request(
            method: :post,
            path: ["porting/events/%1$s/republish", id],
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
