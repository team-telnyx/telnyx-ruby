# frozen_string_literal: true

module Telnyx
  module Models
    class RegionIn < Telnyx::Internal::Type::BaseModel
      # @!attribute region_code
      #   The region the interface should be deployed to.
      #
      #   @return [String, nil]
      optional :region_code, String

      # @!method initialize(region_code: nil)
      #   @param region_code [String] The region the interface should be deployed to.
    end
  end
end
