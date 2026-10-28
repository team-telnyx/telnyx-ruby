# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Tunnels#retrieve
    class TunnelRetrieveResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Tunnel, nil]
      optional :data, -> { Telnyx::Tunnel }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::Tunnel]
    end
  end
end
