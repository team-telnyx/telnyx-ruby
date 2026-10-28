# frozen_string_literal: true

module Telnyx
  module Models
    module Tunnels
      # @see Telnyx::Resources::Tunnels::Actions#rotate_token
      class ActionRotateTokenResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::TunnelWithToken, nil]
        optional :data, -> { Telnyx::TunnelWithToken }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::TunnelWithToken]
      end
    end
  end
end
