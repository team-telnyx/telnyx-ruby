# frozen_string_literal: true

module Telnyx
  module Models
    class HTTP < Telnyx::Internal::Type::BaseModel
      # @!attribute request
      #   Request details.
      #
      #   @return [Telnyx::Models::HTTP::Request, nil]
      optional :request, -> { Telnyx::HTTP::Request }

      # @!attribute response
      #   Response details, optional.
      #
      #   @return [Telnyx::Models::HTTP::Response, nil]
      optional :response, -> { Telnyx::HTTP::Response }

      # @!method initialize(request: nil, response: nil)
      #   HTTP request and response information.
      #
      #   @param request [Telnyx::Models::HTTP::Request] Request details.
      #
      #   @param response [Telnyx::Models::HTTP::Response] Response details, optional.

      # @see Telnyx::Models::HTTP#request
      class Request < Telnyx::Internal::Type::BaseModel
        # @!attribute headers
        #   List of headers, limited to 10kB.
        #
        #   @return [Array<Array<String>>, nil]
        optional :headers, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::ArrayOf[String]]

        # @!attribute url
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(headers: nil, url: nil)
        #   Request details.
        #
        #   @param headers [Array<Array<String>>] List of headers, limited to 10kB.
        #
        #   @param url [String]
      end

      # @see Telnyx::Models::HTTP#response
      class Response < Telnyx::Internal::Type::BaseModel
        # @!attribute body
        #   Raw response body, limited to 10kB.
        #
        #   @return [String, nil]
        optional :body, String

        # @!attribute headers
        #   List of headers, limited to 10kB.
        #
        #   @return [Array<Array<String>>, nil]
        optional :headers, Telnyx::Internal::Type::ArrayOf[Telnyx::Internal::Type::ArrayOf[String]]

        # @!attribute status
        #
        #   @return [Integer, nil]
        optional :status, Integer

        # @!method initialize(body: nil, headers: nil, status: nil)
        #   Response details, optional.
        #
        #   @param body [String] Raw response body, limited to 10kB.
        #
        #   @param headers [Array<Array<String>>] List of headers, limited to 10kB.
        #
        #   @param status [Integer]
      end
    end
  end
end
