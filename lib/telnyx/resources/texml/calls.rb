# frozen_string_literal: true

module Telnyx
  module Resources
    class Texml
      # TeXML REST Commands
      class Calls
        # Some parameter documentations has been truncated, see
        # {Telnyx::Models::Texml::CallCreateParams} for more details.
        #
        # Initiate an outbound TeXML call using a TeXML application connection ID, not an
        # account SID. Request parameter names are case-sensitive. From and To are
        # required; Texml supplies inline instructions and Url overrides the application
        # XML request URL. When neither is supplied, the application configuration
        # supplies the instructions. The response is a flat call object without a data
        # wrapper.
        #
        # @overload create(connection_id, from:, to:, method_: nil, texml: nil, url: nil, request_options: {})
        #
        # @param connection_id [String] The ID of the connection holding the TeXML application to call from.
        #
        # @param from [String] The E.164-formatted phone number or SIP URI to present as the caller.
        #
        # @param to [String] The E.164-formatted phone number or SIP URI to call.
        #
        # @param method_ [Symbol, Telnyx::Models::Texml::CallCreateParams::Method] HTTP method used to retrieve TeXML instructions from Url.
        #
        # @param texml [String] Inline TeXML instructions to execute when the call is answered.
        #
        # @param url [String] The URL from which to retrieve TeXML instructions. Overrides the TeXML applicati
        #
        # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Telnyx::Models::Texml::CallCreateResponse]
        #
        # @see Telnyx::Models::Texml::CallCreateParams
        def create(connection_id, params)
          parsed, options = Telnyx::Texml::CallCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["texml/calls/%1$s", connection_id],
            body: parsed,
            model: Telnyx::Models::Texml::CallCreateResponse,
            options: options
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
