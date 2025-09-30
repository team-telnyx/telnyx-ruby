# frozen_string_literal: true

module Telnyx
  module Resources
    class CountryCoverage
      # Get country coverage
      #
      # @overload retrieve(request_options: {})
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CountryCoverageRetrieveResponse]
      #
      # @see Telnyx::Models::CountryCoverageRetrieveParams
      def retrieve(params = {})
        @client.request(
          method: :get,
          path: "country_coverage",
          model: Telnyx::Models::CountryCoverageRetrieveResponse,
          options: params[:request_options]
        )
      end

      # Get coverage for a specific country
      #
      # @overload retrieve_country(country_code, request_options: {})
      #
      # @param country_code [String] Country ISO code.
      #
      # @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Telnyx::Models::CountryCoverageRetrieveCountryResponse]
      #
      # @see Telnyx::Models::CountryCoverageRetrieveCountryParams
      def retrieve_country(country_code, params = {})
        @client.request(
          method: :get,
          path: ["country_coverage/countries/%1$s", country_code],
          model: Telnyx::Models::CountryCoverageRetrieveCountryResponse,
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
