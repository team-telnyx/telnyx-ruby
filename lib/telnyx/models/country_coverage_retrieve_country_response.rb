# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CountryCoverage#retrieve_country
    class CountryCoverageRetrieveCountryResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::CountryCoverageAPI, nil]
      optional :data, -> { Telnyx::CountryCoverageAPI }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::CountryCoverageAPI]
    end
  end
end
