# typed: strong

module Telnyx
  module Resources
    class CountryCoverage
      # Get country coverage
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::CountryCoverageRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # Get coverage for a specific country
      sig do
        params(
          country_code: String,
          request_options: Telnyx::RequestOptions::OrHash
        ).returns(Telnyx::Models::CountryCoverageRetrieveCountryResponse)
      end
      def retrieve_country(
        # Country ISO code.
        country_code,
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
