# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#create
    class VirtualCrossConnectCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VirtualCrossConnectCombined, nil]
      optional :data, -> { Telnyx::VirtualCrossConnectCombined }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VirtualCrossConnectCombined]
    end
  end
end
