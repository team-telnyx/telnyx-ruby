# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#update
    class VirtualCrossConnectUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VirtualCrossConnectUpdateResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VirtualCrossConnectUpdateResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VirtualCrossConnectUpdateResponse::Data]
    end
  end
end
