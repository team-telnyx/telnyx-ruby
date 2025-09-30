# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::ExternalConnections#update_location
    class ExternalConnectionUpdateLocationResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data, nil]
      optional :data, -> { Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::ExternalConnectionUpdateLocationResponse::Data]

      # @see Telnyx::Models::ExternalConnectionUpdateLocationResponse#data
      class Data < Telnyx::Internal::Type::BaseModel
        # @!attribute accepted_address_suggestions
        #
        #   @return [Boolean, nil]
        optional :accepted_address_suggestions, Telnyx::Internal::Type::Boolean

        # @!attribute location_id
        #
        #   @return [String, nil]
        optional :location_id, String

        # @!attribute static_emergency_address_id
        #
        #   @return [String, nil]
        optional :static_emergency_address_id, String

        # @!method initialize(accepted_address_suggestions: nil, location_id: nil, static_emergency_address_id: nil)
        #   @param accepted_address_suggestions [Boolean]
        #   @param location_id [String]
        #   @param static_emergency_address_id [String]
      end
    end
  end
end
