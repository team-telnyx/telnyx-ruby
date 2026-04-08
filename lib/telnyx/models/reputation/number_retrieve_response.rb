# frozen_string_literal: true

module Telnyx
  module Models
    module Reputation
      # @see Telnyx::Resources::Reputation::Numbers#retrieve
      class NumberRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::ReputationPhoneNumberWithReputationData, nil]
        optional :data, -> { Telnyx::ReputationPhoneNumberWithReputationData }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::ReputationPhoneNumberWithReputationData]
      end
    end
  end
end
