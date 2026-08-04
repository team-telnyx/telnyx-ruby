# frozen_string_literal: true

module Telnyx
  module Models
    class TimeRange < Telnyx::Internal::Type::BaseModel
      # @!attribute from
      #
      #   @return [Time, nil]
      required :from, Time, nil?: true

      # @!attribute to
      #
      #   @return [Time, nil]
      required :to, Time, nil?: true

      # @!method initialize(from:, to:)
      #   @param from [Time, nil]
      #   @param to [Time, nil]
    end
  end
end
