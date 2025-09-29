# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::SimCards#update
    class SimCardUpdateResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::SimCard, nil]
      optional :data, -> { Telnyx::SimCard }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::SimCard]
    end
  end
end
