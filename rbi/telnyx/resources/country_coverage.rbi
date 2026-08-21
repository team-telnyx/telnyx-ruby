# typed: strong

module Telnyx
  module Resources
    # Country Coverage
    class CountryCoverage
      # Returns Telnyx service coverage information for every country, including which
      # number types and features are available in each.
      sig do
        params(request_options: Telnyx::RequestOptions::OrHash).returns(
          Telnyx::Models::CountryCoverageRetrieveResponse
        )
      end
      def retrieve(request_options: {})
      end

      # Returns Telnyx service coverage information for the specified country, including
      # available number types and features.
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
