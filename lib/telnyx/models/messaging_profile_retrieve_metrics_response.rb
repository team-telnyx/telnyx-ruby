# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::MessagingProfiles#retrieve_metrics
    class MessagingProfileRetrieveMetricsResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #   Detailed metrics for a messaging profile.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :data, Telnyx::Internal::Type::HashOf[Telnyx::Internal::Type::Unknown]

      # @!method initialize(data: nil)
      #   @param data [Hash{Symbol=>Object}] Detailed metrics for a messaging profile.
    end
  end
end
