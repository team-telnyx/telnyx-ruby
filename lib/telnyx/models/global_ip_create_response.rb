# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::GlobalIPs#create
    class GlobalIPCreateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::GlobalIP, nil]
      optional :data, -> { Telnyx::GlobalIP }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::GlobalIP]
    end
  end
end
