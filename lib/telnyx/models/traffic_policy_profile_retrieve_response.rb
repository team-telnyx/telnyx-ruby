# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TrafficPolicyProfiles#retrieve
    class TrafficPolicyProfileRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TrafficPolicyProfile, nil]
      optional :data, -> { Telnyx::TrafficPolicyProfile }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TrafficPolicyProfile]
    end
  end
end
