# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VirtualCrossConnects#retrieve
    class VirtualCrossConnectRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VirtualCrossConnectRetrieveResponse::Data, nil]
      optional :data, -> { Telnyx::Models::VirtualCrossConnectRetrieveResponse::Data }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VirtualCrossConnectRetrieveResponse::Data]
    end
  end
end
