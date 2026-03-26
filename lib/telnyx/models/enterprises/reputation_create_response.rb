# frozen_string_literal: true

module Telnyx
  module Models
    module Enterprises
      # @see Telnyx::Resources::Enterprises::Reputation#create
      class ReputationCreateResponse < Telnyx::Internal::Type::BaseModel
        # @!attribute data
        #
        #   @return [Telnyx::Models::Enterprises::EnterpriseReputationPublic, nil]
        optional :data, -> { Telnyx::Enterprises::EnterpriseReputationPublic }

        # @!method initialize(data: nil)
        #   @param data [Telnyx::Models::Enterprises::EnterpriseReputationPublic]
      end
    end
  end
end
