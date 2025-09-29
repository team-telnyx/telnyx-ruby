# frozen_string_literal: true

module Telnyx
  module Models
    # @see Telnyx::Resources::Verifications#trigger_call
    class CreateVerificationResponse < Telnyx::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Telnyx::Models::Verification]
      required :data, -> { Telnyx::Verification }

      # @!method initialize(data:)
      #   @param data [Telnyx::Models::Verification]
    end
  end
end
