# frozen_string_literal: true

module Telnyx
  module Resources
    class Whatsapp
      class Signup
        # List finished WhatsApp Embedded Signup sessions, with status `SUCCESS` or
        # `FAILURE`, newest first. Use the `errors` of a failed session to see why
        # provisioning stopped.
        #
        # @overload list(filter_created_at_gte: nil, filter_created_at_lte: nil, filter_customer_id: nil, filter_waba_id: nil, page_number: nil, page_size: nil, request_options: {})
        #
        # @param filter_created_at_gte [Time] Return sessions created at or after this time (RFC 3339)
        #
        # @param filter_created_at_lte [Time] Return sessions created at or before this time (RFC 3339)
        #
        # @param filter_customer_id [String] Filter by the tech provider customer reference
        #
        # @param filter_waba_id [String] Filter by Meta WABA ID
        #
        # @param page_number [Integer]
        #
        # @param page_size [Integer]
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Internal::DefaultFlatPagination<Telnyx::Models::Whatsapp::SignupListResponse>]
        #
        # @see Telnyx::Models::Whatsapp::SignupListParams
        def list(params = {})
          parsed, options = Telnyx::Whatsapp::SignupListParams.dump_request(params)
          query = Telnyx::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "whatsapp/signup",
            query: query.transform_keys(
              filter_created_at_gte: "filter[created_at][gte]",
              filter_created_at_lte: "filter[created_at][lte]",
              filter_customer_id: "filter[customer_id]",
              filter_waba_id: "filter[waba_id]",
              page_number: "page[number]",
              page_size: "page[size]"
            ),
            page: Telnyx::Internal::DefaultFlatPagination,
            model: Telnyx::Models::Whatsapp::SignupListResponse,
            options: options
          )
        end

        # Retrieve the current state and status of a WhatsApp Embedded Signup session.
        #
        # @overload retrieve_status(id, request_options: {})
        #
        # @param id [String] Signup session ID
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse]
        #
        # @see Telnyx::Models::Whatsapp::SignupRetrieveStatusParams
        def retrieve_status(id, params = {})
          @client.request(
            method: :get,
            path: ["whatsapp/signup/%1$s/status", id],
            model: Telnyx::Models::Whatsapp::SignupRetrieveStatusResponse,
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
