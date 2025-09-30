# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#create
    class VirtualCrossConnectCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VirtualCrossConnectCreateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VirtualCrossConnectCreateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VirtualCrossConnectCreateResponse::Data]
    end
  end
end
