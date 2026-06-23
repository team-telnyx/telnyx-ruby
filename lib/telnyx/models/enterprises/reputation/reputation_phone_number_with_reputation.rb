# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      module Reputation
        # @see Telnyx::Resources::Enterprises::Reputation::Numbers#retrieve
        class ReputationPhoneNumberWithReputation < Telnyx::Internal::Type::BaseModel
          # @!attribute data
          #
          #   @return [Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber]
          required :data, -> { Telnyx::Enterprises::Reputation::ReputationPhoneNumber }

          # @!method initialize(data:)
          #   @param data [Telnyx::Models::Enterprises::Reputation::ReputationPhoneNumber]
        end
      end

      ReputationPhoneNumberWithReputation = Reputation::ReputationPhoneNumberWithReputation
    end
  end
end
