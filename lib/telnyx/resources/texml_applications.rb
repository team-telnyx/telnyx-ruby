# frozen_string_literal: true

module Telnyx
  module Resources
    class TexmlApplications
      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TexmlApplicationCreateParams} for more details.
      #
      # Creates a TeXML Application.
      #
      # @overload create(friendly_name:, voice_url:, active: nil, anchorsite_override: nil, call_cost_in_webhooks: nil, dtmf_type: nil, first_command_timeout: nil, first_command_timeout_secs: nil, inbound: nil, outbound: nil, status_callback: nil, status_callback_method: nil, tags: nil, voice_fallback_url: nil, voice_method: nil, request_options: {})
      #
      # @param friendly_name [String] A user-assigned name to help manage the application.
      #
      # @param voice_url [String] URL to which Telnyx will deliver your XML Translator webhooks.
      #
      # @param active [Boolean] Specifies whether the connection can be used.
      #
      # @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      # @param call_cost_in_webhooks [Boolean] Specifies if call cost webhooks should be sent for this TeXML Application.
      #
      # @param dtmf_type [Symbol, Telnyx::Models::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      # @param first_command_timeout [Boolean] Specifies whether calls to phone numbers associated with this connection should
      #
      # @param first_command_timeout_secs [Integer] Specifies how many seconds to wait before timing out a dial command.
      #
      # @param inbound [Telnyx::Models::TexmlApplicationCreateParams::Inbound]
      #
      # @param outbound [Telnyx::Models::TexmlApplicationCreateParams::Outbound]
      #
      # @param status_callback [String] URL for Telnyx to send requests to containing information about call progress ev
      #
      # @param status_callback_method [Symbol, Telnyx::Models::TexmlApplicationCreateParams::StatusCallbackMethod] HTTP request method Telnyx should use when requesting the status_callback URL.
      #
      # @param tags [Array<String>] Tags associated with the Texml Application.
      #
      # @param voice_fallback_url [String] URL to which Telnyx will deliver your XML Translator webhooks if we get an error
      #
      # @param voice_method [Symbol, Telnyx::Models::TexmlApplicationCreateParams::VoiceMethod] HTTP request method Telnyx will use to interact with your XML Translator webhook
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TexmlApplicationCreateResponse]
      #
      # @see Telnyx::Models::TexmlApplicationCreateParams
      def create(params)
        parsed, options = Telnyx::TexmlApplicationCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "texml_applications",
          body: parsed,
          model: Telnyx::Models::TexmlApplicationCreateResponse,
          options: options
        )
      end

      # Retrieves the details of an existing TeXML Application.
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TexmlApplicationRetrieveResponse]
      #
      # @see Telnyx::Models::TexmlApplicationRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["texml_applications/%1$s", id],
          model: Telnyx::Models::TexmlApplicationRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TexmlApplicationUpdateParams} for more details.
      #
      # Updates settings of an existing TeXML Application.
      #
      # @overload update(id, friendly_name:, voice_url:, active: nil, anchorsite_override: nil, call_cost_in_webhooks: nil, dtmf_type: nil, first_command_timeout: nil, first_command_timeout_secs: nil, inbound: nil, outbound: nil, status_callback: nil, status_callback_method: nil, tags: nil, voice_fallback_url: nil, voice_method: nil, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param friendly_name [String] A user-assigned name to help manage the application.
      #
      # @param voice_url [String] URL to which Telnyx will deliver your XML Translator webhooks.
      #
      # @param active [Boolean] Specifies whether the connection can be used.
      #
      # @param anchorsite_override [Symbol, Telnyx::Models::AnchorsiteOverride] `Latency` directs Telnyx to route media through the site with the lowest round-t
      #
      # @param call_cost_in_webhooks [Boolean] Specifies if call cost webhooks should be sent for this TeXML Application.
      #
      # @param dtmf_type [Symbol, Telnyx::Models::DtmfType] Sets the type of DTMF digits sent from Telnyx to this Connection. Note that DTMF
      #
      # @param first_command_timeout [Boolean] Specifies whether calls to phone numbers associated with this connection should
      #
      # @param first_command_timeout_secs [Integer] Specifies how many seconds to wait before timing out a dial command.
      #
      # @param inbound [Telnyx::Models::TexmlApplicationUpdateParams::Inbound]
      #
      # @param outbound [Telnyx::Models::TexmlApplicationUpdateParams::Outbound]
      #
      # @param status_callback [String] URL for Telnyx to send requests to containing information about call progress ev
      #
      # @param status_callback_method [Symbol, Telnyx::Models::TexmlApplicationUpdateParams::StatusCallbackMethod] HTTP request method Telnyx should use when requesting the status_callback URL.
      #
      # @param tags [Array<String>] Tags associated with the Texml Application.
      #
      # @param voice_fallback_url [String] URL to which Telnyx will deliver your XML Translator webhooks if we get an error
      #
      # @param voice_method [Symbol, Telnyx::Models::TexmlApplicationUpdateParams::VoiceMethod] HTTP request method Telnyx will use to interact with your XML Translator webhook
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TexmlApplicationUpdateResponse]
      #
      # @see Telnyx::Models::TexmlApplicationUpdateParams
      def update(id, params)
        parsed, options = Telnyx::TexmlApplicationUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["texml_applications/%1$s", id],
          body: parsed,
          model: Telnyx::Models::TexmlApplicationUpdateResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Telnyx::Models::TexmlApplicationListParams} for more details.
      #
      # Returns a list of your TeXML Applications.
      #
      # @overload list(filter: nil, page: nil, sort: nil, request_options: {})
      #
      # @param filter [Telnyx::Models::TexmlApplicationListParams::Filter] Consolidated filter parameter (deepObject style). Originally: filter[outbound_vo
      #
      # @param page [Telnyx::Models::TexmlApplicationListParams::Page] Consolidated page parameter (deepObject style). Originally: page[size], page[num
      #
      # @param sort [Symbol, Telnyx::Models::TexmlApplicationListParams::Sort] Specifies the sort order for results. By default sorting direction is ascending.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Internal::DefaultPagination<Telnyx::Models::TexmlApplication>]
      #
      # @see Telnyx::Models::TexmlApplicationListParams
      def list(params = {})
        parsed, options = Telnyx::TexmlApplicationListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "texml_applications",
          query: parsed,
          page: Telnyx::Internal::DefaultPagination,
          model: Telnyx::TexmlApplication,
          options: options
        )
      end

      # Deletes a TeXML Application.
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] Identifies the resource.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::TexmlApplicationDeleteResponse]
      #
      # @see Telnyx::Models::TexmlApplicationDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["texml_applications/%1$s", id],
          model: Telnyx::Models::TexmlApplicationDeleteResponse,
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
