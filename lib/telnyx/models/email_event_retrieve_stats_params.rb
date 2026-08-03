# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::EmailEvents#retrieve_stats
    class EmailEventRetrieveStatsParams < Telnyx::Internal::Type::BaseModel
      extend Telnyx::Internal::Type::RequestParameters::Converter
      include Telnyx::Internal::Type::RequestParameters

      # @!attribute from
      #   Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      #
      #   @return [Time, nil]
      optional :from, Time

      # @!attribute to
      #   Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
      #   to `from + 30 days`.
      #
      #   @return [Time, nil]
      optional :to, Time

      # @!method initialize(from: nil, to: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Telnyx::Models::EmailEventRetrieveStatsParams} for more details.
      #
      #   @param from [Time] Inclusive ISO 8601 start timestamp. Defaults to 30 days ago when omitted.
      #
      #   @param to [Time] Inclusive ISO 8601 end timestamp. When `from` is provided without `to`, defaults
      #
      #   @param request_options [Telnyx::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
