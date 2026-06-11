# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Reputation#retrieve
      class ReputationRetrieveResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Enterprises::EnterpriseReputationPublic]
        required :data, -> { Telnyx::Enterprises::EnterpriseReputationPublic }

        # @!method initialize(data:)
        #   @param data [Telnyx::Models::Enterprises::EnterpriseReputationPublic]
      end
    end
  end
end
