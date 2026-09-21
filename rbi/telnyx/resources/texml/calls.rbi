# typed: strong

module Telnyx
  module Resources
    class Texml
      # TeXML REST Commands
      class Calls
        # Initiate an outbound TeXML call using a TeXML application connection ID, not an
        # account SID. Request parameter names are case-sensitive. From and To are
        # required; Texml supplies inline instructions and Url overrides the application
        # XML request URL. When neither is supplied, the application configuration
        # supplies the instructions. The response is a flat call object without a data
        # wrapper.
        sig do
          params(
            connection_id: String,
            from: String,
            to: String,
            method_: Telnyx::Texml::CallCreateParams::Method::OrSymbol,
            texml: String,
            url: String,
            request_options: Telnyx::RequestOptions::OrHash
          ).returns(Telnyx::Models::Texml::CallCreateResponse)
        end
        def create(
          # The ID of the connection holding the TeXML application to call from.
          connection_id,
          # The E.164-formatted phone number or SIP URI to present as the caller.
          from:,
          # The E.164-formatted phone number or SIP URI to call.
          to:,
          # HTTP method used to retrieve TeXML instructions from Url.
          method_: nil,
          # Inline TeXML instructions to execute when the call is answered.
          texml: nil,
          # The URL from which to retrieve TeXML instructions. Overrides the TeXML
          # application XML request URL.
          url: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Telnyx::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
