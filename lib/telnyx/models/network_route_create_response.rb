# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::NetworkRoutes#create
    class NetworkRouteCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::NetworkRoute, nil]
      optional :data, -> { Telnyx::NetworkRoute }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::NetworkRoute]
    end
  end
end
