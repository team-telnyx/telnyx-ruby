# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TrafficPolicyProfiles#delete
    class TrafficPolicyProfileDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TrafficPolicyProfileDeleteResponse::Data]

      # @see Telnyx::Models::TrafficPolicyProfileDeleteResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute id
        #   Identifies the resource.
        #
        #   @return [String, nil]
        optional :id, String

        # @!method initialize(id: nil)
        #   @param id [String] Identifies the resource.
      end
    end
  end
end
