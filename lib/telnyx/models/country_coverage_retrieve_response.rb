# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::CountryCoverage#retrieve
    class CountryCoverageRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Hash{Symbol=>Telnyx::Models::CountryCoverageAPI}, nil]
      optional :data, -> { Telnyx::Internal::Type::HashOf[Telnyx::CountryCoverageAPI] }

      # @!method initialize(data: nil)
      #   @param data [Hash{Symbol=>Telnyx::Models::CountryCoverageAPI}]
    end
  end
end
