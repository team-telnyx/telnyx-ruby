# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::VerifiedNumbers#retrieve
    class VerifiedNumberDataWrapper < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::VerifiedNumber, nil]
      optional :data, -> { Telnyx::VerifiedNumber }

      # @!method initialize(data: nil)
      #   @param data [Telnyx::Models::VerifiedNumber]
    end
  end
end
