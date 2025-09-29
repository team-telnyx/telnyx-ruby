# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#delete
    class VirtualCrossConnectDeleteResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VirtualCrossConnectDeleteResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VirtualCrossConnectDeleteResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VirtualCrossConnectDeleteResponse::Data]
    end
  end
end
