# frozen_string_literal: true

module Telnyx
  module Models
    module Texml
      # @see Telnyx::Resources::Texml::Calls#create
      class CallCreateParams < Telnyx::Internal::Type::BaseModel
        extend Telnyx::Internal::Type::RequestParameters::Converter
        include Telnyx::Internal::Type::RequestParameters

        # @!attribute connection_id
        #
        #   @return [String]
        required :connection_id, String

        # @!attribute from
        #   The E.164-formatted phone number or SIP URI to present as the caller.
        #
        #   @return [String]
        required :from, String, api_name: :From

        # @!attribute to
        #   The E.164-formatted phone number or SIP URI to call.
        #
        #   @return [String]
        required :to, String, api_name: :To

        # @!attribute method_
        #   HTTP method used to retrieve TeXML instructions from Url.
        #
        #   @return [Symbol, Telnyx::Models::Texml::CallCreateParams::Method, nil]
        optional :method_, enum: -> { Telnyx::Texml::CallCreateParams::Method }, api_name: :Method

        # @!attribute texml
        #   Inline TeXML instructions to execute when the call is answered.
        #
        #   @return [String, nil]
        optional :texml, String, api_name: :Texml

        # @!attribute url
        #   The URL from which to retrieve TeXML instructions. Overrides the TeXML
        #   application XML request URL.
        #
        #   @return [String, nil]
        optional :url, String, api_name: :Url

        # @!method initialize(connection_id:, from:, to:, method_: nil, texml: nil, url: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {Telnyx::Models::Texml::CallCreateParams} for more details.
        #
        #   @param connection_id [String]
        #
        #   @param from [String] The E.164-formatted phone number or SIP URI to present as the caller.
        #
        #   @param to [String] The E.164-formatted phone number or SIP URI to call.
        #
        #   @param method_ [Symbol, Telnyx::Models::Texml::CallCreateParams::Method] HTTP method used to retrieve TeXML instructions from Url.
        #
        #   @param texml [String] Inline TeXML instructions to execute when the call is answered.
        #
        #   @param url [String] The URL from which to retrieve TeXML instructions. Overrides the TeXML applicati
        #
        #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]

        # HTTP method used to retrieve TeXML instructions from Url.
        module Method
          extend Telnyx::Internal::Type::Enum

          GET = :GET
          POST = :POST

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
