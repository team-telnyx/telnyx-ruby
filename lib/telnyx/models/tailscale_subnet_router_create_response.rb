# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::TailscaleSubnetRouters#create
    class TailscaleSubnetRouterCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::TailscaleSubnetRouter, nil]
      optional :data, -> { Telnyx::TailscaleSubnetRouter }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::TailscaleSubnetRouter]
    end
  end
end
