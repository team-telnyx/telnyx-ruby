# frozen_string_literal: true

module Telnyx
  module Resources
    class FaxApplications
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FaxApplicationCreateParams} for more details.
      #
      # Creates a new Fax Application based on the parameters sent in the request. The
      # application name and webhook URL are required. Once created, you can assign
      # phone numbers to your application using the `/phone_numbers` endpoint.
      #
      # @overload create(application_name:, webhook_event_url:, active: nil, anchorsite_override: nil, inbound: nil, outbound: nil, tags: nil, webhook_event_failover_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param application_name [String] A user-assigned name to help manage the application.
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param active [Boolean] Specifies whether the connection can be used.
      #
      # @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      # @param inbound [Telnyx::Models::FaxApplicationCreateParams::Inbound]
      #
      # @param outbound [Telnyx::Models::FaxApplicationCreateParams::Outbound]
      #
      # @param tags [Array<String>] Tags associated with the Fax Application.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FaxApplicationCreateResponse]
      #
      # @see Telnyx::Models::FaxApplicationCreateParams
      def create(params)
        parsed, options = Telnyx::FaxApplicationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "fax_applications",
          body: parsed,
          model: Telnyx::Models::FaxApplicationCreateResponse,
          options: options
        )
      end

      # Return the details of an existing Fax Application inside the 'data' attribute of
      # the response.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FaxApplicationRetrieveResponse]
      #
      # @see Telnyx::Models::FaxApplicationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["fax_applications/%1$s", id],
          model: Telnyx::Models::FaxApplicationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FaxApplicationUpdateParams} for more details.
      #
      # Updates settings of an existing Fax Application based on the parameters of the
      # request.
      #
      # @overload update(id, application_name:, webhook_event_url:, active: nil, anchorsite_override: nil, fax_email_recipient: nil, inbound: nil, outbound: nil, tags: nil, webhook_event_failover_url: nil, webhook_timeout_secs: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param application_name [String] A user-assigned name to help manage the application.
      #
      # @param webhook_event_url [String] The URL where webhooks related to this connection will be sent. Must include a s
      #
      # @param active [Boolean] Specifies whether the connection can be used.
      #
      # @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      # @param fax_email_recipient [String, nil] Specifies an email address where faxes sent to this application will be forwarde
      #
      # @param inbound [Telnyx::Models::FaxApplicationUpdateParams::Inbound]
      #
      # @param outbound [Telnyx::Models::FaxApplicationUpdateParams::Outbound]
      #
      # @param tags [Array<String>] Tags associated with the Fax Application.
      #
      # @param webhook_event_failover_url [String, nil] The failover URL where webhooks related to this connection will be sent if sendi
      #
      # @param webhook_timeout_secs [Integer, nil] Specifies how many seconds to wait before timing out a webhook.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FaxApplicationUpdateResponse]
      #
      # @see Telnyx::Models::FaxApplicationUpdateParams
      def update(id, params)
        parsed, options = Telnyx::FaxApplicationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["fax_applications/%1$s", id],
          body: parsed,
          model: Telnyx::Models::FaxApplicationUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::FaxApplicationListParams} for more details.
      #
      # This endpoint returns a list of your Fax Applications inside the 'data'
      # attribute of the response. You can adjust which applications are listed by using
      # filters. Fax Applications are used to configure how you send and receive faxes
      # using the Programmable Fax API with Telnyx.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::FaxApplicationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[application
      #
      # @param page [Telnyx::Models::FaxApplicationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[number], page[s
      #
      # @param sort [Symbol, Telnyx::Models::FaxApplicationListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FaxApplicationListResponse]
      #
      # @see Telnyx::Models::FaxApplicationListParams
      def list(params = {})
        parsed, options = Telnyx::FaxApplicationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "fax_applications",
          query: parsed,
          model: Telnyx::Models::FaxApplicationListResponse,
          options: options
        )
      end

      # Permanently deletes a Fax Application. Deletion may be prevented if the
      # application is in use by phone numbers.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::FaxApplicationDeleteResponse]
      #
      # @see Telnyx::Models::FaxApplicationDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["fax_applications/%1$s", id],
          model: Telnyx::Models::FaxApplicationDeleteResponse,
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
