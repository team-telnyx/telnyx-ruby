# frozen_string_literal: true

module Telnyx
  module Models
    class AvailablePhoneNumbersMetadata < Telnyx::Internal::Type::BaseModel
      # @!attribute best_effort_results
      #
      #   @return [Integer, nil]
      optional :best_effort_results, Integer

      # @!attribute total_results
      #
      #   @return [Integer, nil]
      optional :total_results, Integer

      # @!method initialize(best_effort_results: nil, total_results: nil)
      #   @param best_effort_results [Integer]
      #   @param total_results [Integer]
    end
  end
end
