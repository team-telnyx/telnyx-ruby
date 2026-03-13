# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CountryCoverage#retrieve_country
    class CountryCoverageRetrieveCountryParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute country_code
      #
      #   @return [String]
      required :country_code, String

      # @!method initialize(country_code:, request_options: {})
      #   @param country_code [String]
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
